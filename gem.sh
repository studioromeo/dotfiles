#!/usr/bin/env bash

rbenv install 2.7.1
rbenv rehash
rbenv global 2.7.1

# reload the shell
eval "$(rbenv init -)"

gem update --system
gem install bundler
