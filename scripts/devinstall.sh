#!/bin/sh 
brew install azure-cli
brew cask install diffmerge
brew cask install docker
brew cask install firefox 
brew cask install iterm
brew install jsawk
brew install jsdoc3
brew cask install pencil
brew cask install smartgit 
brew cask install wireshark
brew cask install visual-studio-code
brew cask install visual-studio-code-insiders
brew cask install xmind
brew cask install yarn
brew install youtube-dl


#databases
brew cask install mongodb
brew cask install robomongo
brew install sqlitebrowser
 

#install NVM to enable 
brew install NVM
echo export NVM_DIR=~/.nvm >> ~/.bashrc
echo source $(brew --prefix nvm)/nvm.sh


## Still testing this and need to validate 
# #install OpenSSL for .NET Core
# brew install openssl
# mkdir -p /usr/local/lib
# ln -s /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
# ln -s /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/

# #install .net core
# brew install dotnet

