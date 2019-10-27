nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
augroup configAddition
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim
augroup END

set background=dark
set completeopt+=noselect

try | colorscheme murphy | catch | endtry

if has('patch-8.1.1880') && has('textprop')
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview,popup<cr>
else
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
endif

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
