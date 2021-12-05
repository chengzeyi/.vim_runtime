#!/bin/bash

set -e

echo '
set runtimepath+=$HOME/.vim_runtime
source $HOME/.vim_runtime/config/core.vim
' > $HOME/.vimrc

[[ ! -f $HOME/.vim_runtime/config/before.vim ]] && echo "
\" let g:background = 'dark'
\" let g:colorscheme = 'hydrangea'
\" let g:guifont = 'MesloLGS NF:h14'

\" let g:use_ftplugins = 'all'
\" let g:use_colorschemes = 'all'
\" let g:use_devicons = 1
\" let g:use_treesitter = 1
\" let g:use_nvim_cmp = 1
\" let g:use_nvim_lsp = 1
\" let g:use_nvim_lsp_configs = []
\" let g:use_coc = 1
\" let g:use_vim_lsp = 1
\" let g:use_asyncomplete = 1
" > $HOME/.vim_runtime/config/before.vim

mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim
rm -f ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim
ln -s $HOME/.vimrc ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim

echo 'Installed the Ultimate Vim configuration successfully!'
