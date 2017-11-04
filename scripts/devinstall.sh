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
brew cask install robomongo
brew cask install sqlitebrowser
 

#install NVM to enable 
brew install NVM
mkdir ~/.nvm
touch ~/.bash_profile
echo export NVM_DIR=~/.nvm >> ~/.bash_profile
echo source $(brew --prefix nvm)/nvm.sh >> ~/.bash_profile
source ~/.bash_profile

## Still testing this and need to validate 
# #install OpenSSL for .NET Core
# brew install openssl
# mkdir -p /usr/local/lib
# ln -s /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
# ln -s /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/

# #install .net core
# brew install dotnet

