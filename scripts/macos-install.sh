#!/bin/sh

# install mas-cli to install from the Mac App store
brew install mas

# get Apple ID
echo ""
echo "Enter AppleID to signin to Mac App Store:"
read -p "  AppleID (john@foo.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
mas install 410628904 
mas install 588726889 
mas install 568494494 
mas install 419330170 
mas install 497799835 
mas install 485812721 
