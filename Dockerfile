FROM ruby:3.3.0-slim
WORKDIR /app
RUN apt-get update && \
    apt-get -y install build-essential git libvips pkg-config libpq-dev postgresql-client
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . .
