augroup myGinit
    au!

    GuiTabline 0
    GuiPopupmenu 0

    nnoremap <leader>eg :e ~/.vim_runtime/config/ginit.vim<cr>
    autocmd BufWritePost ~/.vim_runtime/config/ginit.vim source ~/.vim_runtime/config/ginit.vim

augroup END
