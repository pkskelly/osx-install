# Mac OS Build Process 

This is my personal build process for my Mac Book Pro.  I rebuild about every 6 motnhs of so.  This process and several fo the scripts are based on the initial restore process I ran into from Andrew Connell.  See [Andrew's version here](https://github.com/andrewconnell/osx-install).  


## Pre-Paving
Backup current ~/Documents/Parallels/VirtualMachines folder (or other location for virtual machines)
Open terminal and navigate to /Applications.   ls -1 to list all apps - print list and update scripts as needed  
Screen shot dock 
Copy config files
~/.bash_prompt
~/.gitconfig
~/.gitmessage

## Node 
List all global packages with npm list -g --depth=0
Update nodeinstall.sh with all global packages

## Re-Pave Mac 
Reboot and press Command+R during reboot when Apple logo comes up
Delete existing partition (not the 2nd tiny partition listed)
Install Mac OSX
Create personal profile 
Configure initial settings with login

## First App Installs
- Install XCode via AppStore
     - apply updates, open at least once
Install Purchased Apps from App Store
Install Homebrew
Open a terminal and run the following to install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
Install Homebrew Cask 
brew tap caskroom/cask
brew install caskroom/cask/brew-cask
brew doctor
Install Google Drive
brew cask install google-drive 
Open Google Drive

## Install (Manual) Apps from App Store
ReadKit - has no brew cask install from App Store; license should come from store
Log into Pocket account using Gmail account
Log into Feedly using Gmail account 
Install Coffitivity 
Install Growl
Install Pocket
Install Moom
Install Docker from web site

## Install Core apps
Copy CoreInstall.sh locally (touch coreinstall.sh)
Make executable:  chmod a+x coreinstall.sh
Run:  ./coreinstall.sh
Login to Chrome
Install LastPass
Login to DropBox, EverNote
Configure Moom

Install Dev Apps
Copy or create devinstall.sh
Make executable:  chmod a+x devinstall.sh
Run ./devinstall.sh 
UPDATE: Add http://www.johnpapa.net/automatically-restarting-asp-net-on-osx-with-dnxmon/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+JohnPapa+%28JohnPapa.net%29 to the install 

Install Node 
Copy or create nodeinstall.sh
Make executable:  chmod a+x nodeinstall.sh
Run nodeinstall.sh
May need to restart terminal to have npm functional
Run the following
node --version
Close and restart terminal (or source prompt again) 
npm -v
npm list -g --depth=0 (should have nothing yet)

Install NPM and modules
Create or copy npminstall.sh
Make executable:  chmod a+x npminstall.sh
Run npminstall.sh
npm list -g --depth=0 (should have all packages installed)


Install Manual Changes
Apply or copy standard GitConfig file - copy from 
Apply or copy standard bash file… 
Install Google Chrome Extensions
Configure TagCloud
Apply .bash_prompt settings or from github dotfiles
copy .bash_prompt
run chmod +x .bash_prompt
add “source ~/.bash_prompt” to .bash_profile

Configure Git
git config --global user.name “Pete Skelly”
git config --global user.email “email@email.com”
Add .gitignore to ~/.gitignore
Add .gitconfig to  ~/.gitconfig 


Copy Virtual Machines
Create directory for ~/virtualmachines 
copy virtual machines for dev to new ~/virtualmachines  

GitHub Restore
clone desired repositories from GitHub to ~/repos


