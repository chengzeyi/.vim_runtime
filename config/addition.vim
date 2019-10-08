nnoremap <leader>ea :e ~/.vim_runtime/config/addition.vim<cr>
augroup configAddition
    autocmd!
    autocmd bufwritepost ~/.vim_runtime/config/addition.vim source ~/.vim_runtime/config/addition.vim
augroup END

try | colorscheme murphy | catch | endtry

if has('patch-8.1.1880') && has('textprop')
nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview,popup<cr>
else
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
endif
