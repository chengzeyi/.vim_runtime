#!/bin/bash

set -e

echo '

augroup configDot
    au!

    set runtimepath+=~/.vim_runtime

    source ~/.vim_runtime/config/core.vim
    source ~/.vim_runtime/config/plug.vim

    nnoremap <leader>ed :e ~/.vimrc<cr>

    " local configuration below

    autocmd BufWritePost ~/.vimrc source ~/.vimrc

augroup END

' > ~/.vimrc

mkdir -p ~/.config/nvim
cat ~/.vimrc > ~/.config/nvim/init.vim

echo '

source ~/.vim_runtime/config/gvimrc.vim

' > ~/.gvimrc

echo '

source ~/.vim_runtime/config/ginit.vim

' > ~/.config/nvim/ginit.vim

echo "Installed the Ultimate Vim configuration successfully!"
