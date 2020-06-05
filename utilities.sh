#!/bin/bash

# organize things
mkdir /home/$USER/Apps

# install utilities
sudo apt update
sudo add-apt-repository universe
sudo apt install htop snapd gparted -y

# install java
sudo apt install default-jdk

# install thunderbird
sudo apt install thunderbird

# install chrome
cd /home/$USER/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# install balena-etcher
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sudo apt update
sudo apt install balena-etcher-electron -y

# install joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash

# install keepassxc
sudo snap install keepassxc

# install vlc
sudo snap install vlc

# install zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb

# install flameshot
sudo apt install flameshot

# install wireshark
sudo apt install wireshark

# install dropbox
sudo apt install nautilus-dropbox
