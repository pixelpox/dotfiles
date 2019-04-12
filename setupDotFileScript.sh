#!/bin/bash

#setup git folder
if [ ! -d ~/github ] 
then
    echo "making github folder"
		mkdir ~/github
fi

#get the dotfile repo
cd ~/github

if [ ! -d ~/github/dotfiles ] 
then
    echo "fetching dotfiles"
		git clone https://github.com/pixelpox/dotfiles.git

else
		exit 9999
fi



#bash_alias
ln -s ~/github/dotfiles/.bash_aliases ~/.bash_aliases

#VI
ln -s ~/github/dotfiles/.vi/.vimrc ~/.vimrc

#SSH
if [ ! -d ~/.ssh ] 
then
    echo "making .ssh folder"
		mkdir -p ~/.ssh 
fi

#if ssh config exists move it and then add link
if [ -e ~/.ssh/config ]
then
    mv ~/.ssh/config ~/.ssh/config.bak
fi
ln -s ~/github/dotfiles/.ssh/config ~/.ssh/config

#if auth keys exists move it and then add link
if [ -e ~/.ssh/authorized_keys ]
then
    mv ~/.ssh/authorized_keys ~/.ssh/authorized_keys.bak
fi
ln -s ~/github/dotfiles/.ssh/simon_authorized_keys ~/.ssh/authorized_keys

#PROFILE
#ln -s ~/github/dotfiles/.mac/.profile ~/.profile
#ln -s ~/github/dotfiles/.mac/.bash_aliases ~/.bash_aliases