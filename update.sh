#!/usr/bin/env bash

sudo softwareupdate -i -a
brew update
brew upgrade --all
apm upgrade
fish_update_completions
