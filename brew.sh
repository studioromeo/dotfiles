#!/usr/bin/env bash

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap homebrew/homebrew-php

brew install brew-cask
brew tap caskroom/versions

brew install ansible
brew install composer

brew install fish
echo /usr/local/bin/fish >>/etc/shells #add to list of shells
chsh -s /usr/local/bin/fish #fish default

brew install git
brew install mysql
brew install node
brew install php56
brew install php56-mcrypt
brew install php56-xdebug
brew install siege
brew install rmtrash
brew install wget

brew cask install atom
brew cask install hipchat
brew cask install firefox
brew cask install google-chrome
brew cask install mongohub
brew cask install sequel-pro
brew cask install the-unarchiver

brew cleanup
brew cask cleanup
