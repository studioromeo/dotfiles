#!/usr/bin/env bash

packages=(
    composer
    fish
    git
    httpie
    mysql
    php70
    php70-mcrypt
    php70-xdebug
    rbenv
    ruby-build
    siege
    rmtrash
    wget
)

apps=(
    alfred
    atom
    firefox
    licecap
    google-chrome
    mongohub
    spectacle
    sequel-pro
    the-unarchiver
    vagrant
    virtualbox
)

# Install homebrew
if ! [ -x "$(command -v brew)" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Tapping
brew tap caskroom/cask
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap homebrew/homebrew-php
brew tap caskroom/versions

# Install Packages
for p in "${packages[@]}"
do
    if ! brew list -1 | grep -q "^${p}\$"; then
        brew install $p;
    fi
done

# Install Applications
for a in "${apps[@]}"
do
    if ! brew cask list -1 | grep -q "^${a}\$"; then
        brew cask install $a;
    fi
done

# Setup fish shell
if ! grep -q 'fish' /etc/shells; then
    echo /usr/local/bin/fish >>/etc/shells; #add to list of shells
fi;
if ! grep 'fish' $SHELL; then
    chsh -s /usr/local/bin/fish; #fish default
fi;

# Update composer
composer self-update

# Cleanup
brew cleanup
brew cask cleanup
