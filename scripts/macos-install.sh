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
mas install 410628904 Wunderlist (3.4.7)
mas install 588726889 ReadKit (2.5.2)
mas install 568494494 Pocket (1.6.2)
mas install 419330170 Moom (3.2.10)
mas install 497799835 Xcode (9.1)
mas install 485812721 TweetDeck (3.9.889)
