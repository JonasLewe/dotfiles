#!/bin/bash
# Initial Setup of an Ubuntu Machine

sudo apt update

# install necessary tools
sudo apt install software-properties-common apt-transport-https wget -y
sudo apt install git zsh vim tmux ctags -y

# change default shell
#chsh -s /usr/bin/zsh root

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# go to home dir
cd ~/

git clone https://github.com/JonasLewe/.dotfiles.git

rm .zshrc .tmux_conf .ctags .bashrc .npmrc .ycm_extra_conf.py .vimrc

ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.tmux_conf .tmux_conf
ln -s .dotfiles/.ctags .ctags
ln -s .dotfiles/.bashrc .bashrc
ln -s .dotfiles/.npmrc .npmrc
ln -s .dotfiles/.ycm_extra_conf.py .ycm_extra_conf.py
ln -s .dotfiles/.vimrc .vimrc

