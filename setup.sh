#!/bin/bash
# Initial Setup of an Ubuntu Machine

sudo apt update

# install necessary tools
sudo apt install software-properties-common apt-transport-https wget -y
sudo apt install git zsh vim tmux ctags okular fonts-powerline -y

# install vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y

# install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# go to home dir
cd ~/

# clone personal dotfiles
git clone https://github.com/JonasLewe/.dotfiles.git ~/.dotfiles

# clone tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# clone vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# setup for symlinks
rm .zshrc .tmux.conf .ctags .bashrc .npmrc .ycm_extra_conf.py .vimrc .profile
touch ~/.dotfiles/.zsh_aliases

# create symlinks
ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.zsh_aliases .zsh_aliases
ln -s .dotfiles/.tmux.conf .tmux.conf
ln -s .dotfiles/.ctags .ctags
ln -s .dotfiles/.bashrc .bashrc
ln -s .dotfiles/.npmrc .npmrc
ln -s .dotfiles/.ycm_extra_conf.py .ycm_extra_conf.py
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.profile .profile


# install vim plugins
vim +PluginInstall +qall


echo "**************************************************************"
echo " Success! We are done here."
echo " But you need to configure tmux manually!"
echo " Within tmux press \"strg + b + I\" to install all packages..."
echo "**************************************************************"
