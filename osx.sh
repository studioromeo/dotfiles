#!/usr/bin/env bash

# Ensure permissions are correct in /usr/local
sudo chown -R `whoami` /usr/local/

# Set the window minimize animation Options: suck, genie, scale
defaults write com.apple.dock mineffect scale

# Set the size of the dock icons to 46px
defaults write com.apple.dock tilesize -int 46

# Position the dock on the left hand side
defaults write com.apple.dock orientation left

# Hide the dock automatically
defaults write com.apple.dock autohide -bool true

killall Dock

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Disable spotlight
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
killall SystemUIServer

# Disable notifications
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
killall NotificationCenter
killall SystemUIServer
