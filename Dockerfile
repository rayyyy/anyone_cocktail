FROM ruby:2.6.3-alpine

WORKDIR /anyone_cocktail
COPY . .

RUN apk add --no-cache --virtual=build-dependencies \
  alpine-sdk \
  nodejs-current \
  nodejs-npm \
  yarn \
  mysql-client \
  mysql-dev \
  python2 \
  tzdata && \
  gem install bundler && \
  bundle install -j4

# gem install rails --version 6.0.0.beta1
# rails new . -T ｰB -d mysql --webpack=react

