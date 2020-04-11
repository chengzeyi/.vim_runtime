augroup MyCompletion
    autocmd!
    au InsertCharPre * noautocmd if !pumvisible() && v:char =~# '\k' | call feedkeys("\<c-n>", 'n') | endif
    au CmdwinEnter [:>] iunmap <buffer> <Tab>
augroup END

inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
