# syntax=docker/dockerfile:1
FROM circleci/ruby:2.7.0

RUN apt-get update \
  && apt-get install bundler yarn

WORKDIR /rubyonrails-App
COPY Gemfile Gemfile.lock ./



COPY Gemfile /rubyonrails-App/Gemfile
COPY Gemfile.lock /Rubyonrails-App/Gemfile.lock
RUN bundle install
COPY . /Rubyonrails-App
COPY package.json yarn.lock ./
RUN yarn install --check-files

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]