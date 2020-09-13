#!/bin/bash

set -e

echo '

set runtimepath+=$HOME/.vim_runtime

source $HOME/.vim_runtime/config/core.vim

' > $HOME/.vimrc

mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim
rm -f ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim
ln -s $HOME/.vimrc ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim

echo 'Installed the Ultimate Vim configuration successfully!'
