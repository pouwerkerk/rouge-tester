# Run using `docker run -d --net host rouge-tester`
FROM ruby

RUN gem install bundler jekyll

RUN jekyll new src

WORKDIR /src

COPY src/Gemfile Gemfile
COPY src/_config.yml _config.yml

RUN bundle install --path /vendor-gems

WORKDIR /gems
RUN git clone https://github.com/gettalong/kramdown.git

# Move local Kramdown to /vendor-gems
RUN rm -rf /vendor-gems/ruby/2.3.0/gems/kramdown-1.9.0/
RUN cp -r /gems/kramdown /vendor-gems/ruby/2.3.0/gems/kramdown-1.9.0

WORKDIR /src

RUN rm -rf _posts
COPY src/_posts _posts

EXPOSE 4000

CMD bundle exec jekyll serve
