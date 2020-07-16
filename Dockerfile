FROM ruby:2.7-alpine

RUN apk add --no-cache build-base libxml2-dev libxslt-dev git nodejs yarn
RUN apk add --no-cache libpq postgresql-dev

RUN bundle config build.nokogiri --use-system-libraries

ENV APP_HOME /invue/
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile Gemfile.lock $APP_HOME

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . $APP_HOME

EXPOSE 80

CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]
