# Mac OS Build Process 

This is my personal build process for my Mac Book Pro.  I rebuild about every 6 months or so.  This process and several of the scripts are based on the initial restore process I ran into from Andrew Connell.  See [Andrew's blog post](http://www.andrewconnell.com/blog/rapid-complete-install-reinstall-os-x-like-a-champ-in-three-ish-hours) and [Andrew's version here](https://github.com/andrewconnell/osx-install).  

Some additional ideas leveraged from [Jose Padilla's dotfiles](https://github.com/jpadilla/dotfiles/blob/master/Brewfile) and [Mathias Bynens dotfiles](https://github.com/mathiasbynens/dotfiles).


## Pre-Paving
Before starting a fresh install or re-pave, backup current virtual machines from ```~/Parallels/VirtualMachines``` folder (or other location for virtual machines) to an external drive.

- Screen snap current Moom settings
- Clean out Downloads, backup any files needed
- Clean out Desktop, backup any files needed
- Clean out Movies or backup as needed
- Clean out ~/repos and any sub-folders (will be backed up by script)
- Run TimeMachine for a back up (if desired)

## Backup Local Files 

Run the ```backup-local.sh``` script to make backups of critical config files and folders. This script also makes backups of Applications, npm and Visual Studio Code extensions from a list perspective to restore as needed. 

## Re-Pave Mac 
- Reboot and press Command+R during reboot when Apple logo comes up
- Delete existing partition (not the 2nd tiny partition listed)
- Install Mac OSX
- Create personal profile 
- Configure initial settings with login

## Homebrew & Homebrew Cask
- Install [Homebrew](https://brew.sh/) for applications.

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/homebrew-install.sh | sh
```

## Install Core Apps 
Install core applications 

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/homebrew-install-apps.sh | sh
```

## Install MacOS Apps

Install apps from the store. (mas app installed via Home Brew)

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/macos-install.sh | sh
```

## Install Node using NVM Global NPM Packages  

Ensure nvm version (run nvm --version) from shell, then run

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/node-install.sh | sh

```

Then run 

```
curl -L https://raw.githubusercontent.com/pkskelly/osx-install/master/scripts/npm-install-global-packages.sh | sh

```

## Install Visual Studio Code Extensions

This no longer needed since the extensions are sync'd when logged in.  

## Update Homebrew and all installs
```
brew doctor && brew update && brew upgrade && brew cleanup
```

## Configure Git Profile 
- Configure local Git profile
```
git config --global user.name “Pete Skelly”
git config --global user.email “email@email.com”
git config --global core.editor “code-insiders -w”
git config --global merge.tool code-insiders

```

## Restore Virtual Machines (as needed)
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



