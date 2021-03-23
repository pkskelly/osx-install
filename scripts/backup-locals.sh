#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)"

#BACKUP_FOLDER=~/os_backup
BACKUP_FOLDER="/Volumes/256Thumb"

# Create backup folder on media 
if [[ ! -d "$BACKUP_FOLDER" ]]; then
    echo "Creating $BACKUP_FOLDER folder..."    
    mkdir $BACKUP_FOLDER
fi

echo "Moving to $BACKUP_FOLDER..."   
cd $BACKUP_FOLDER

echo "Checking current working dir..."   
pwd

# Get a list of current npm root global packages
npm list -g --depth=0 >> $BACKUP_FOLDER/npm_global_packages.txt

# Get a list of current npm root global packages
code-insiders --list-extensions >> $BACKUP_FOLDER/code_extensions.txt

# Backup a list of all /Applications 
cd /Applications 
ls -d */ | cut -f1 -d'/' > $BACKUP_FOLDER/Applications.txt
cd $__dir

# Backup common config files
cp ~/.bash_profile $BACKUP_FOLDER/.bash_profile
cp ~/.bash_prompt $BACKUP_FOLDER/.bash_prompt
cp ~/.p10k.zsh $BACKUP_FOLDER  # Backup Powerline10k zsh profile
cp ~/.zshrc $BACKUP_FOLDER  # Backup zsh rc

# Check PowerShell profile folder 
if [[ ! -d "$BACKUP_FOLDER/.config" ]]; then
    echo "Creating PowerShell profile folder..."    
    mkdir "$BACKUP_FOLDER/.config"
    mkdir "$BACKUP_FOLDER/.config/powershell"
fi
cp ~/.config/powershell/profile.ps1 $BACKUP_FOLDER/.config/powershell/profile.ps1

# Backup git configuration info
cp ~/.gitconfig $BACKUP_FOLDER/.gitconfig
cp ~/.gitignore_global $BACKUP_FOLDER/.gitignore_global 

# Backup WakaTime Config info 
cp ~/.wakatime.cfg $BACKUP_FOLDER/.wakatime.cfg


# Backup ~/repos - even though most of these would be git projects, some are not in a remote, so for safety back them up
cd ~/repos/github
echo "*******************************" 
echo "Removing node_modules and backing up $PWD..."  
echo "*******************************"   
find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
mkdir -p $BACKUP_FOLDER/repos/github
rsync -aruvP ~/repos/github/* $BACKUP_FOLDER/repos/github

cd ~/repos/scratch
echo "*******************************" 
echo "Removing node_modules and backing up $PWD..."  
echo "*******************************"   
find . -name 'node_modules' -type d -prune -exec rm -rf '{}' + 
mkdir -p $BACKUP_FOLDER/repos/scratch
rsync -aruvP ~/repos/scratch/* $BACKUP_FOLDER/repos/scratch

cd ~/repos/vsts
echo "*******************************" 
echo "Removing node_modules and backing up $PWD..."  
echo "*******************************"   
find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
mkdir -p $BACKUP_FOLDER/repos/vsts
rsync -aruvP ~/repos/vsts/* $BACKUP_FOLDER/repos/vsts

# Backup ~/bin - common utilities and other items 
rsync -aruvP ~/bin/* $BACKUP_FOLDER/bin

echo "Changing back to script root"  
cd $__dir

echo "Returned to $PWD ..."   