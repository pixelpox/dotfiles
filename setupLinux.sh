#!/bin/bash

#bash_alias
ln -s ~/github/dotfiles/.bash_aliases ~/.bash_aliases

#VI
ln -s ~/github/dotfiles/.vi/.vimrc ~/.vimrc

#SSH
mkdir -p ~/.ssh
ln -s ~/github/dotfiles/.ssh/config ~/.ssh/config