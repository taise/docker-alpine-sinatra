FROM ruby:2.3-alpine

MAINTAINER taise <taise515@gmail.com>


# Sinatra App
ENV APP_ROOT /app
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT
COPY . $APP_ROOT
RUN set -ex \
  && apk --update add --no-cache --virtual .ruby-bundle-deps \
            ruby-dev \
            make \
            g++ \
  && cd $APP_ROOT \
  && bundle install --path vendor/bundle \
  && apk del .ruby-bundle-deps

CMD bundle exec ruby app.rb -p 80 -s Puma -e production
