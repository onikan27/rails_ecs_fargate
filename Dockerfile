FROM ruby:2.6.3

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  libpq-dev \
  sudo \
  gem install bundler:2.2.16

RUN bundle install
