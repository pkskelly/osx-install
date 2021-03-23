#!/bin/sh
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | sh
brew doctor

brew install cask
brew doctor

# homebrew cask updater: https://github.com/buo/homebrew-cask-upgrade
brew tap buo/cask-upgrade
