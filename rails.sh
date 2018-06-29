#!/usr/bin/env bash
# quit on unexpected error
# set -e
set -x
# prep rbenv
brew update
for package in "rbenv" "ruby-build" "postgresql"; do
    echo "Here"
    eval "brew outdated | grep -q $package && brew upgrade $package" || 1
done
# set up latest ruby version
for command in "install" "local"; do
    eval "rbenv $command \$(rbenv install -l | grep -v - | tail -1)"
done
ruby -v
# set up rails app using first argument as app name
gem install rails 
rails new "$1" -d -T postgresql
# cd "$1"
# set up bundler for app
gem install bundler
bundle install
# add basic gems with bundler
bundle add database_cleaner
bundle add factory_bot_rails
bundle add faker
bundle add rspec-rails
bundle add rubocop
bundle add guard
bundle add guard-rails
bundle add rspec-rails
bundle install
# set up rspec
rails g rspec:install
# setup guard
bundle exec guard init
bundle guard init rails
# setup rubocop
# set up graphql
#   rails generate graphql:install