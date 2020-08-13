#!/usr/bin/env bash

packages=(
    composer
    fish
    ffmpeg
    git
    php
    nvm
    rbenv
    ruby-build
    scrcpy
    siege
    wget
)

apps=(
    1password
    alfred
    adoptopenjdk8
    android-studio
    firefox
    licecap
    gitify
    insomnia
    google-chrome
    slack
    spectacle
    visual-studio-code
    whatsapp
    vlc
    zwift
)

# Install homebrew
if ! [ -x "$(command -v brew)" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

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
