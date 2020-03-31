augroup MyCompletion
    autocmd!
    au InsertCharPre * noautocmd if !pumvisible() && v:char =~# '\k' | call feedkeys("\<c-n>", 'n') | endif
    au CmdwinEnter [:>] iunmap <buffer> <Tab>
augroup END

nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
augroup MyAddition
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim
augroup END
