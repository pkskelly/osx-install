#!/bin/sh

# install node v12 (LTS)
nvm install lts/erbium
npm install -g npm
curl -sL https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/npm-install-global-packages.sh | sh

# install node v14 (LTS)
nvm install lts/fermium
npm install -g npm
curl -sL https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/npm-install-global-packages.sh | sh

# install node latest stable
nvm install stable
npm install -g npm
curl -sL https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/npm-install-global-packages.sh | sh

# set default version to stable
nvm alias default stable
