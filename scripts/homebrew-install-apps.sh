#!/bin/sh 

brew install azure-cli
brew install exa
brew install ffmpeg
brew install git
brew install gh 
brew install git-secrets
brew install jpeg
brew install jq
brew install mas 
brew install mono
brew install nvm
brew install neofetch
brew install openssl
brew install python@3.9
brew install speedtest-cli
brew install tree
brew install vsts-cli
brew install webp
brew install youtube-dl

# install mas-cli to install from the Mac App store
brew install mas

brew install --cask aerial # screensavers
brew install --cask microsoft-azure-storage-explorer
brew install --cask azure-data-studio
brew install --cask cheatsheet
brew install --cask dropbox
brew install --cask docker
brew install --cask dotnet-sdk
brew install --cask drawio
brew install --cask firefox
brew install --cask evernote
#brew install cask ghost
brew install --cask google-drive
brew install --cask grandperspective
brew install --cask iterm2
brew install --cask kindle
brew install --cask lastpass
brew install --cask microsoft-edge
brew install --cask ngrok
brew install --cask obs
brew install --cask obs-ndi
brew install --cask pandora
brew install --cask parallels
brew install --cask postman
brew install --cask powershell
brew install --cask send-to-kindle
brew install --cask skitch

brew install --cask spotify
brew install --cask textexpander
brew install --cask mono-mdk
brew install --cask visual-studio
brew tap homebrew/cask-versions # must tap for homebrew/cask-versions/mono-mdk-for-visual-studio dependency
brew install visual-studio-code
brew install --cask xmind

brew install caskformula/caskformula/inkscape

#Add the tap for bicep       
brew tap azure/bicep https://github.com/azure/bicep
#Install the tool
brew install azure/bicep/bicep

# Azure Functions Tools
brew tap azure/functions
brew install azure-functions-core-tools@3

#databases
brew install sqlite
brew install --cask db-browser-for-sqlite

brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>! ~/.zshrc

mkdir ~/.nvm


# #some minor config changes for personal preferences
# defaults write com.apple.finder AppleShowAllFiles YES
# defaults write com.apple.finder CreateDesktop -bool false && killall Finder

# # Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# # Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# # Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# # Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# # Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# # Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# #show the ~/Library folder
chflags nohidden ~/Library


###############################################################################
# Dock & hot corners                                                          #
###############################################################################

# # Enable highlight hover effect for the grid view of a stack (Dock)
# defaults write com.apple.dock mouse-over-hilte-stack -bool true

# # Enable spring loading for all Dock items
# defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# # Show indicator lights for open applications in the Dock
# defaults write com.apple.dock show-process-indicators -bool true

# # Speed up Mission Control animations
# defaults write com.apple.dock expose-animation-duration -float 0.1

# # Don’t show Dashboard as a Space
# defaults write com.apple.dock dashboard-in-overlay -bool true

# # Remove the auto-hiding Dock delay
# defaults write com.apple.Dock autohide-delay -float 0
# # Remove the animation when hiding/showing the Dock
# defaults write com.apple.dock autohide-time-modifier -float 0

# # Automatically hide and show the Dock
# defaults write com.apple.dock autohide -bool true

# # Reset Launchpad
# find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete

# #Configure DOCK to remove icons not in use
# defaults write com.apple.dock static-only -bool TRUE;

# Set 'Menu Bar → Battery → Show Percentag' to 'YES'.
defaults write com.apple.menuextra.battery ShowPercent -string 'YES'



