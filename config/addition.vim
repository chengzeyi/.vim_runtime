nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
augroup configAddition
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim
augroup END

try | colorscheme murphy | catch | endtry

xnoremap if :<C-U>silent! normal! [zjV]zk<CR>
onoremap if :normal Vif<CR>
xnoremap af :<C-U>silent! normal! [zV]z<CR>
onoremap af :normal Vaf<CR>

nnoremap <leader>x :q<cr>
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
inoremap <expr> <down> pumvisible() ? "\<c-n>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<c-p>" : "\<up>"
inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"

augroup setAutoComplete
    au!
    au InsertCharPre * noautocmd if !pumvisible() && v:char =~# '\k' | call feedkeys("\<c-n>", 'n') | endif
augroup END
