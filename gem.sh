#!/usr/bin/env bash

rbenv install 2.4.0
rbenv rehash
rbenv global 2.4.0

# reload the shell
eval "$(rbenv init -)"

gem update --system
gem install bundler
