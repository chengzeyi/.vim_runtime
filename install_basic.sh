#!/bin/bash

set -e

echo '

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/config/core.vim
source ~/.vim_runtime/config/addition.vim

nnoremap <leader>ed :e ~/.vimrc<cr>
augroup configDot
    autocmd!
    autocmd BufWritePost ~/.vimrc source ~/.vimrc
augroup END

" local configuration below

' > ~/.vimrc

mkdir -p ~/.config/nvim
cat ~/.vimrc > ~/.config/nvim/init.vim

echo '

source ~/.vim_runtime/config/gvimrc.vim

' > ~/.gvimrc

echo '

source ~/.vim_runtime/config/ginit.vim

' > ~/.config/nvim/ginit.vim

echo "Installed the Basic Vim configuration successfully!"
