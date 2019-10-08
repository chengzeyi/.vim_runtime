#!/bin/bash

set -e

echo '

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/config/core.vim
source ~/.vim_runtime/config/plug.vim

' > ~/.vimrc

mkdir -p ~/.config/nvim
cat ~/.vimrc > ~/.config/nvim/init.vim

echo '

source ~/.vim_runtime/config/gui.vim

' > ~/.gvimrc

echo "Installed the Ultimate Vim configuration successfully!"
