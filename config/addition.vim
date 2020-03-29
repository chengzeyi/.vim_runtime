augroup MyCompletion
    autocmd!
    au InsertCharPre * noautocmd if !pumvisible() && v:char =~# '\k' | call feedkeys("\<c-n>", 'n') | endif
    au CmdwinEnter [:>] iunmap <buffer> <Tab>
augroup END

inoremap <expr> <C-e> pumvisible() ? "\<C-e>" : "\<End>"

if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ?
                \ "<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
augroup MyAddition
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim
augroup END
