#!/bin/bash

set -e

echo '
set runtimepath+=$HOME/.vim_runtime
let g:installed_basic = 1
source $HOME/.vim_runtime/config/core.vim
' > $HOME/.vimrc

[[ ! -f $HOME/.vim_runtime/config/before.vim ]] && echo "
\" let g:background = 'dark'
\" let g:guifont = 'MesloLGS NF:h14'
" > $HOME/.vim_runtime/config/before.vim

mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim
rm -f ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim
ln -s $HOME/.vimrc ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim

echo 'Installed the Basic Vim configuration successfully!'
