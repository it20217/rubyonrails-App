# syntax=docker/dockerfile:1
FROM ruby:2.7.0

RUN apt-get update \
  && apt-get install bundler yarn


COPY Gemfile /rubyonrails-App/Gemfile
COPY Gemfile.lock /Rubyonrails-App/Gemfile.lock
RUN bundle install
COPY . /Rubyonrails-App


# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]