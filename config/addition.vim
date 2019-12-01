augroup myAddition
    au!

    try | colorscheme murphy | catch | endtry

    nnoremap <leader>x :q<cr>
    inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "<tab>"
    inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
    inoremap <expr> <down> pumvisible() ? "\<c-n>" : "\<down>"
    inoremap <expr> <up> pumvisible() ? "\<c-p>" : "\<up>"
    inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"

    au InsertCharPre * noautocmd if !pumvisible() && v:char =~# '\k' | call feedkeys("\<c-n>", 'n') | endif

    nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
    autocmd BufWritePost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim

augroup END
