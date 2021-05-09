FROM ruby:latest

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . . 

RUN bundle install

