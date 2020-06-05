#!/bin/bash

# organize things
mkdir /home/$USER/Apps

# install utilities
sudo apt update
sudo apt install htop snapd wget git -y

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
# install zoom
# install flameshot
# install dropbox
