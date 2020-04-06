#!/bin/bash

set -e

echo '

set runtimepath+=~/.vim_runtime

let g:installed_basic = 1

source ~/.vim_runtime/config/core.vim

' > ~/.vimrc

mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim

echo "Installed the Basic Vim configuration successfully!"
