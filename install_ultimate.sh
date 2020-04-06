#!/bin/bash

set -e

echo '

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/config/core.vim

' > ~/.vimrc

mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim

echo "Installed the Ultimate Vim configuration successfully!"
