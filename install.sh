#!/usr/bin/env bash
user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

DOTFILES=$(pwd)

# Homebrew
source brew.sh
source osx.sh

# Atom Packages
apm install --packages-file=atom/packages.txt

# Symlinks
ln -svf $DOTFILES/vimrc ~
ln -svf $DOTFILES/atom/config.cson ~/.atom
ln -svf $DOTFILES/atom/keymap.cson ~/.atom

git config --global include.path $DOTFILES/.gitconfig

user ' - What is your github name?'
read -e GIT_NAME
user ' - What is your github email?'
read -e GIT_EMAIL

git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL

user ' - Homebrew Github API TOKEN'
read -e HOMEBREW_TOKEN

set -Ux HOMEBREW_GITHUB_API_TOKEN $HOMEBREW_TOKEN
