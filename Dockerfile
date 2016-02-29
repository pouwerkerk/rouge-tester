# Run using `docker run -d --net host rouge-tester`
FROM ruby

RUN gem install bundler jekyll

RUN jekyll new src

WORKDIR /src

COPY src/Gemfile Gemfile
COPY src/_config.yml _config.yml

RUN bundle install --path /vendor-gems

WORKDIR /gems
RUN wget -O master.zip https://github.com/gettalong/kramdown/archive/master.zip
RUN apt-get update
RUN apt-get install unzip --yes --force-yes
RUN unzip master.zip

# Move local Kramdown to /vendor-gems
RUN rm -rf /vendor-gems/ruby/2.3.0/gems/kramdown-1.9.0/
RUN cp -r /gems/kramdown-master /vendor-gems/ruby/2.3.0/gems/kramdown-1.9.0

WORKDIR /src

RUN rm -rf _posts
COPY src/_posts _posts

EXPOSE 4000

CMD bundle exec jekyll serve
