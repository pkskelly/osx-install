# Mac OS Build Process 

This is my personal build process for my Mac Book Pro.  I rebuild about every 6 months or so.  This process and several of the scripts are based on the initial restore process I ran into from Andrew Connell.  See [Andrew's blog post](http://www.andrewconnell.com/blog/rapid-complete-install-reinstall-os-x-like-a-champ-in-three-ish-hours) and [Andrew's version here](https://github.com/andrewconnell/osx-install).  

Some additional ideas leveraged from [Jose Padilla's dotfiles](https://github.com/jpadilla/dotfiles/blob/master/Brewfile).


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
- Backup ~/bin - common utilities and other items
    - Run ```rsync -aruv * /backups/bin``` (or any location you want to backup to)
    - includes alias.sh and other common scripts
- Backup git configuration info
    - Run ```cp ~/.gitignore_global /backups/.gitignore_global ```
    - Run ```cp ~/.gitignore_global /backups/.gitconfig```
- Backup Powerline10k zsh profile
    - Run ```cp ~/.gitignore_global /backups/.gitconfig```
- Backup WakaTime Config info 
    - Run ```cp ~/wakatime.cfg /backups/.wakatime.cfg```
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

## Install MacOS Apps
Install apps from the store. 

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/macos-install.sh | sh
```


## Homebrew & Homebrew Cask
- Install [Homebrew](https://brew.sh/) for applications.

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/homebrew-install.sh | sh
```

## Install Core Apps 
Install core applications 

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/coreinstall.sh | sh
```

## Install Dev Apps
Install Dev apps, databases tools, and more. 
```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/devinstall.sh | sh

``` 

## Install Node Version Manager NVM
```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/nvm-install.sh | sh

```
Be sure to add the following to .bash_profile

```
export NVM_DIR=/Users/pete/.nvm
source /usr/local/opt/nvm/nvm.sh
```

## Install NodeJS 
Ensure nvm version (run nvm --version) from shell, then run

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/nodeinstall.sh | sh

```

## Install Global NPM Packages  
Ensure nvm version (run nvm --version) from shell, then run

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/npm-global-packages.sh | sh

```


## Install VSCode Extensions
Run the following to install all extensions. 
```
curl -L  https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/vs-code-insiders-install.sh | sh

```
If the command fails, try Cmd + Shift + P and then type install and choose the
```
Shell Command: Install 'code-insiders' command in PATH
```
and re-run the command



## Update Homebrew and all installs
```
brew update
brew upgrade brew-cask
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
- Copy /backups/bin to ~/bin 
- Copy /backups/.p10k.zsh to ~/.p10k.zsh
- Add ```source ~/bin/alias.sh``` to .zshrc file

## Restore Virtual Machines
- Copy Virtual Machines
- Create directory for ~/virtualmachines 
- Copy virtual machines for dev to new ~/virtualmachines  

## GitHub Restore
- Clone desired repositories from GitHub to ~/repos
- Restore selected repos from ~/repos backup disk



## Ongoing... HOWTO Keep Things Updated

To keep homebrew installed things update, do this (you may need to run ```brew tap buo/cask-upgrade``` for cu utility):

  ```shell
  brew update           # download app updated formulas
  brew outdated         # what’s old?
  brew upgrade          # upgrade everything locally
  # list all brew casks installed & their versions
  brew cu --dry-run
  # optionally update everything
  brew cu
  # cleanup everything
  brew cleanup
  ```



