# Mac OS Build Process 

This is my personal build process for my Mac Book Pro.  I rebuild about every 6 months or so.  This process and several of the scripts are based on the initial restore process I ran into from Andrew Connell.  See [Andrew's blog post](http://www.andrewconnell.com/blog/rapid-complete-install-reinstall-os-x-like-a-champ-in-three-ish-hours) and [Andrew's version here](https://github.com/andrewconnell/osx-install).  


## Pre-Paving
Before starting a fresh install or re-pave, backup current virtual machines from ```~/Documents/Parallels/VirtualMachines``` folder (or other location for virtual machines) to an external drive.

- Screen snap current Moom settings
- Clean out Downloads, backup any files needed
- Clean out Desktop, backup any files needed
- Clean out Movies or backup as needed
- Backup Chrome Profiles in ~/Library/Application Support/Google/Chrome
- Run TimeMachine for a back up 
- Open terminal and navigate to /Applications. Run ls -1 to list all apps - print list and update scripts as needed  
- Copy config files
    - ```~/.bash_prompt```
    - ```~/.gitconfig```
    - ```~/.gitmessage```
- Backup ~/repos - even though most of these would be git projects, some are not in a remote, so for safety back them up
    - Run ```rsync -aruv * /backups/repos``` (or any location you want to backup to)

## Node 
- List all global packages 
    - ```npm list -g --depth=0```
    - Update nodeinstall.sh with all global packages

## Re-Pave Mac 
- Reboot and press Command+R during reboot when Apple logo comes up
- Delete existing partition (not the 2nd tiny partition listed)
- Install Mac OSX
- Create personal profile 
- Configure initial settings with login

## First App Installs
- Install XCode via AppStore
     - apply updates, open at least once
- Install Purchased Apps from App Store


## Homebrew & Homebrew Cask
- Install [Homebrew](https://brew.sh/) for applications.
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew install caskroom/cask/brew-cask
brew doctor
```

## Install Core Apps 
- Copy CoreInstall.sh locally (touch coreinstall.sh)
- Make executable and run:
    - ```chmod a+x coreinstall.sh``
    - ```./coreinstall.sh```
- Login to Chrome
- Install LastPass 
    - Configure LastPass

## Install Dev Apps
- Copy or create devinstall.sh
- Make executable:  ```chmod a+x devinstall.sh```
- Run ```./devinstall.sh``` 

The ```devinstall.sh``` will install nvm as the final install in order to prep for NodeJS. 

```
brew install NVM
echo export NVM_DIR=~/.nvm >> ~/.bashrc
echo source $(brew --prefix nvm)/nvm.sh
```

- Run ```sh vscode-ext-install.sh```

## Install NodeJS 
- Copy or create nodeinstall.sh
- Make executable:  
    - ```chmod a+x nodeinstall.sh``
    - Run ```nodeinstall.sh```
- May need to restart terminal to have npm functional

##Install NPM and modules
- Create or copy npminstall.sh
- Make executable:  
    - ```sh npminstall.sh```


## Update Homebrew and all installs
```
brew updates
brew updates brew-cask
brew cleanup
```

## Configure Git Profile 
- Configure local Git profile
```
git config --global user.name “Pete Skelly”
git config --global user.email “email@email.com”
git config --global core.editor “code -w”
git config --global merge.tool code

```

## Install Manual Changes
- Install Google Chrome Extensions
- Configure TagCloud
- Apply .bash_prompt settings or from github dotfiles
- Copy .bash_prompt
- Run chmod +x .bash_prompt
- Add “source ~/.bash_prompt” to .bash_profile

## Restore Virtual Machines
- Copy Virtual Machines
- Create directory for ~/virtualmachines 
- Copy virtual machines for dev to new ~/virtualmachines  

## GitHub Restore
- Clone desired repositories from GitHub to ~/repos
- Restore selected repos from ~/repos backup disk

## Install (Manual) Apps from App Store
- ReadKit - has no brew cask install from App Store; license should come from store
- Log into Pocket account using Gmail account
- Log into Feedly using Gmail account 
- Install Growl
- Install Moom
    - Configure Moom
- Login to DropBox
- Login to EverNote
- Install Office Apps from Office 365
- Install BitDefender
- Install TextExpander





