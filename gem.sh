#!/usr/bin/env bash

rbenv install 2.6.2
rbenv rehash
rbenv global 2.6.2

# reload the shell
eval "$(rbenv init -)"

gem update --system
gem install bundler
