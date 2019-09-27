#!/bin/sh
set -e

cd ~/.vim_runtime

echo '

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/my_config.vim

' > ~/.vimrc

mkdir -p ~/.config/nvim
cat ~/.vimrc > ~/.config/nvim/init.vim

echo "Installed the Ultimate Vim configuration successfully!"
