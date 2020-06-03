#!/bin/bash
# Initial Setup of an Ubuntu Machine

sudo apt update

# install necessary tools
sudo apt install software-properties-common apt-transport-https wget -y
sudo apt install git zsh vim tmux ctags okular -y

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

# create symlinks
rm .zshrc .tmux.conf .ctags .bashrc .npmrc .ycm_extra_conf.py .vimrc .profile
touch ~/.dotfiles/.zsh_aliases

ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.zsh_aliases .zsh_aliases
ln -s .dotfiles/.tmux.conf .tmux.conf
ln -s .dotfiles/.ctags .ctags
ln -s .dotfiles/.bashrc .bashrc
ln -s .dotfiles/.npmrc .npmrc
ln -s .dotfiles/.ycm_extra_conf.py .ycm_extra_conf.py
ln -s .dotfiles/.vimrc .vimrc

echo "***********************************************************"
echo " You need to configure vim and tmux manually!"
echo " For tmux press \"strg + b + I\" to install all packages..."
echo "***********************************************************"
