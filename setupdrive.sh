#!/bin/bash

read -p "Setup Google Drive? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo chown -R $(id -un):staff /Users/Cloud

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install hardlink-osx
cd /Users
sudo mkdir Cloud
sudo chown $(id -un):staff Cloud
sudo mkdir /Users/Cloud/Google\ Drive
sudo chmod 777 /Users/Cloud/Google\ Drive
sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)"
sudo mkdir "/Users/Cloud/Google Drive/$(scutil --get ComputerName)"
read -p "Sync Documents? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Documents/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Documents"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Documents"	
fi


read -p "Sync Desktop? " -n 1 -r response
echo 
if  [[ $response =~ ^(yes|y| ) ]] | [ -z $response ]
then
    sudo hln "/Users/$(id -un)/Desktop/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Desktop"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Desktop"	
fi


read -p "Sync Downloads? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Downloads/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Downloads"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Downloads"	
fi


read -p "Sync Movies? " -n 1 -r
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Movies/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Movies"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Movies"	
fi


read -p "Sync Music? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Music/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Music"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Music"	
fi


read -p "Sync Pictures? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Pictures/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Pictures"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Pictures"	
fi


read -p "Sync Books? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Books/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Books"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Books"	
fi


read -p "Sync Public? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Public/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Public"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Public"	
fi


read -p "Sync Creative Cloud Files? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Creative Cloud Files/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Creative Cloud Files"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Creative Cloud Files"	
fi


read -p "Sync Dropbox? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Dropbox/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Dropbox"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Dropbox"	
fi


read -p "Sync Applications? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Applications/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Applications"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/Applications"	
fi


read -p "Sync iCloud Drive? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo hln "/Users/$(id -un)/Library/Mobile Documents/com~apple~CloudDocs/" "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/iCloud Drive"
else
	sudo hln -u "/Users/Cloud/Google Drive/$(scutil --get ComputerName)/iCloud Drive"	
fi



else

read -p "Repair Installation? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
echo "repairing permissions"
echo 
    sudo chown -R $(id -un):staff /Users/Cloud
    sudo chmod -R 775 /Users/Cloud
fi


fi
