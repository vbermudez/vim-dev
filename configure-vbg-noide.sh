#!/bin/bash

if [ -n "$(command -v yum)" ]; then 
  sudo yum install vim
else
  sudo apt install vim
fi

# Install Vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Configure Vim
curl -fLo ~/.config/.vimrc --create-dirs https://raw.githubusercontent.com/vbermudez/vim-dev/master/.vimrc-noide
ln -s ~/.config/.vimrc ~/.vimrc

# Configure shell
curl -fLo ~/.config/.vbgsh --create-dirs https://raw.githubusercontent.com/vbermudez/vim-dev/master/.vbgsh
source ~./config/.vbgsh

echo "Ejecuta :PlugInstall al entrar en Vim"
