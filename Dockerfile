# Run using `docker run -d --net host rouge-tester`
FROM ruby

RUN gem install bundler jekyll

RUN jekyll new src

WORKDIR src

COPY src/Gemfile Gemfile
COPY src/_posts _posts
COPY src/_config.yml _config.yml

RUN bundle install

EXPOSE 4000

CMD bundle exec jekyll serve