#!/bin/sh 

brew install cask docker
brew install cask dotnet-sdk
brew install cask firefox 
brew install cask ghost
brew install cask iterm2
#brew install java
#brew install jsawk
#brew install jsdoc3
brew install cask microsoft-azure-storage-explorer
brew install --cask powershell
brew install --cask obs
brew install cask ngrok
#brew install cask pencil
brew install cask postman
#brew install cask fork
#brew install cask smartgit 
#brew install cask sourcetree 
#brew install cask wireshark
brew install cask visual-studio
#brew install cask visual-studio-code
brew install cask visual-studio-code-insiders
brew install cask xmind
brew install youtube-dl
brew install gh 


# yarn without dependencies 
brew install cask yarn --ignore-dependencies

# Azure ClI
# brew install azure-cli
curl -L https://aka.ms/InstallAzureCli | bash

# Azure Functions Tools
brew tap azure/functions
brew install azure-functions-core-tools@3

#databases
#brew install cask mongodb
#brew install cask robo-3t
#brew install cask db-browser-for-sqlite
