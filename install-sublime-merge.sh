#!/bin/bash

# add apt key
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# make sure https is enabled
sudo apt install -y apt-transport-https

# add repository (it's the sublime-text repository which is fine)
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# update cache
sudo apt update

# install sublime-merge
sudo apt install -y sublime-merge

echo

echo '"smerge" is now on the path'

# remove yourself
rm $0
