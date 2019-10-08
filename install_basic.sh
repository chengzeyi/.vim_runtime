#!/bin/sh
set -e

cd ~/.vim_runtime

echo '

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/config/core.vim

' > ~/.vimrc

mkdir -p ~/.config/nvim
cat ~/.vimrc > ~/.config/nvim/init.vim

echo '

source ~/.vim_runtime/config/gui.vim

' > ~/.gvimrc

echo "Installed the Basic Vim configuration successfully!"
