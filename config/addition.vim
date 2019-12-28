augroup myAddition
    au!

    try | colorscheme murphy | catch | endtry

    nnoremap <leader>x :q<cr>

    au InsertCharPre * noautocmd if !pumvisible() && v:char =~# '\k' | call feedkeys("\<c-n>", 'n') | endif

    au CmdwinEnter [:>] iunmap <buffer> <Tab>

    inoremap <expr> <C-e> pumvisible() ? "\<C-e>" : "\<End>"

    if exists('*complete_info')
        inoremap <expr> <cr> complete_info()["selected"] != "-1" ?
                    \ "<C-y>" : "\<C-g>u\<CR>"
    else
        inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif
    inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
    autocmd BufWritePost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim

augroup END
