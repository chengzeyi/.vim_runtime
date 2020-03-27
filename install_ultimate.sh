#!/bin/bash

set -e

echo '

set runtimepath+=~/.vim_runtime

if filereadable(expand("~/.vim_runtime/config/before.vim"))
    source ~/.vim_runtime/config/before.vim
endif
source ~/.vim_runtime/config/core.vim
source ~/.vim_runtime/config/plug.vim
if filereadable(expand("~/.vim_runtime/config/after.vim"))
    source ~/.vim_runtime/config/after.vim
endif

nnoremap <leader>ed :e ~/.vimrc<cr>
nnoremap <leader>e[ :e ~/.vim_runtime/config/before.vim<cr>
nnoremap <leader>e] :e ~/.vim_runtime/config/after.vim<cr>

autocmd BufWritePost ~/.vimrc source ~/.vimrc
autocmd BufWritePost ~/.vim_runtime/config/before.vim source ~/.vim_runtime/config/before.vim
autocmd BufWritePost ~/.vim_runtime/config/after.vim source ~/.vim_runtime/config/after.vim

' > ~/.vimrc

mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim

echo "Installed the Ultimate Vim configuration successfully!"
