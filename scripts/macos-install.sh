#!/bin/sh

# get Apple ID
echo ""
echo "Enter AppleID to signin to Mac App Store:"
read -p "  AppleID (john@foo.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
mas install 588726889 #ReadKit
mas install 568494494 #Pocket 
mas install 419330170 #Moom
mas install 497799835 #Xcode
mas install 485812721 #TweetDeck
