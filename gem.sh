#!/usr/bin/env bash

# By default ruby is installed on a mac so
# we don't need to worry about installing rbenv here

if ! gem list -i bundler; then
    sudo gem install bundler
fi;
