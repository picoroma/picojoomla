#!/bin/bash

# Made by Tuomas Olkinuora 2018 - GPL v3
# A simple script to get everything up and running.

echo "Updating repo and installing git and salt"

setxkbmap fi
sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Enabling firewall and allowing ports 80 and 22"

sudo ufw allow 80/tcp
sudo ufw allow 22/tcp
sudo ufw enable

echo "restarting ufw to apply the settings"

sudo systemctl restart ufw.service

echo "Creating /srv/salt if by any chance one doesn't exist"

sudo mkdir /srv/salt

echo "Cloning git from Alfielinux repo"

cd

git clone https://github.com/AlfieLinux/saltyjoomla.git 

cd saltyjoomla

echo "Running state.highstate, hopefully.."

sudo salt-call --local state.highstate --file-root .

echo "opening localhost/joomla with firefox"

firefox localhost/joomla
