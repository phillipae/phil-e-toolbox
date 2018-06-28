#!/usr/bin/env bash
# quit on unexpected error
set -e
# set up rbenv
rbenv init
# set up latest ruby version
rbenv install -l | grep -v - | tail -1
# set up bundler
# gem install bundler
# bundle install
# rails new (appname) -d postgresql
# bundle add pg
# add basic gems with bundler
# bundle add database_cleaner
# bundle add factory_bot_rails
# bundle add faker
# bundle add rspec-rails
# bundle add rubocop
# bundle add guard
# set up rspec
#   rspec-rails
#   rails generate rspec:install
# setup factory bot linter
# setup rubocop
?bundle guard init
# setup guard
# set up graphql
#   rails generate graphql:install

