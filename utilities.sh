# install balena etcher
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sudo apt update && sudo apt install balena-etcher-electron

# install htop
# install joplin
# install keepassxc
# install vlc
# install zoom
# install flameshot
# install dropbox
