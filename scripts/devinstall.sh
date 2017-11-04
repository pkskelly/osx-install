#!/bin/sh 

brew cask install docker
brew cask install dotnet-sdk
brew cask install firefox 
brew cask install ghost
brew cask install iterm2
brew install java
brew install jsawk
brew install jsdoc3
brew cask install microsoft-azure-storage-explorer
brew cask install ngrok
brew cask install pencil
brew cask install postman
brew cask install smartgit 
brew cask install sourcetree 
brew cask install wireshark
brew cask install visual-studio
brew cask install visual-studio-code
brew cask install visual-studio-code-insiders
brew cask install xmind
brew install youtube-dl

# yarn without dependencies 
brew cask install yarn --ignore-dependencies

# Azure ClI
# brew install azure-cli
curl -L https://aka.ms/InstallAzureCli | bash

#databases
brew cask install mongodb
brew cask install robo-3t
brew cask install db-browser-for-sqlite



