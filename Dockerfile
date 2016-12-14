FROM ruby:2.3-alpine

MAINTAINER taise <taise515@gmail.com>

# Sinatra App
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN bundle install

CMD bundle exec ruby app.rb
