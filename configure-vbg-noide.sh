#!/bin/bash

if [ -n "$(command -v yum)" ]; then 
  sudo yum install neovim
else
  sudo apt install neovim
fi

# Install NodeJs
curl -sL install-node.now.sh/lts | sudo bash

# Install Vim/NeoVim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Configure NeoVim
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/vbermudez/vim-dev/master/init.vim

# Configure Vim
curl -fLo ~/.config/.vimrc --create-dirs https://raw.githubusercontent.com/vbermudez/vim-dev/master/.vimrc
ln -s ~/.config/.vimrc ~/.vimrc

# Configure shell
curl -fLo ~/.config/.vbgsh --create-dirs https://raw.githubusercontent.com/vbermudez/vim-dev/master/.vbgsh

echo "Ejecuta :PlugInstall y :CocInstall coc-json coc-tsserver al entrar en Vim/NeoVim"
