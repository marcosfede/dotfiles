#!/usr/bin/env bash

# echo "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# dock delay
defaults write com.apple.Dock autohide-delay -float 0; killall Dock
# echo "show the ~/Library folder in Finder"
chflags nohidden ~/Library
# show path bar in finder
defaults write com.apple.finder ShowPathbar -bool true

echo "Disable press-and-hold for keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 2

echo "Set a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

echo "Enable Safari’s debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
