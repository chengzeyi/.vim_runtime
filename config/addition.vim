augroup myAddition
    au!

    try | colorscheme murphy | catch | endtry

    nnoremap <leader>x :q<cr>

    au InsertCharPre * noautocmd if !pumvisible() && v:char =~# '\k' | call feedkeys("\<c-n>", 'n') | endif

    nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
    autocmd BufWritePost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim

augroup END
