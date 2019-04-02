#!/bin/bash

#setup git folder
mkdir ~/github

#get the dotfile repo
cd ~/github
git clone https://github.com/pixelpox/dotfiles.git



#bash_alias
ln -s ~/github/dotfiles/.bash_aliases ~/.bash_aliases

#VI
ln -s ~/github/dotfiles/.vi/.vimrc ~/.vimrc

#SSH
mkdir -p ~/.ssh
ln -s ~/github/dotfiles/.ssh/config ~/.ssh/config

#PROFILE
ln -s ~/github/dotfiles/.mac/.profile ~/.profile
ln -s ~/github/dotfiles/.mac/.bash_aliases ~/.bash_aliases