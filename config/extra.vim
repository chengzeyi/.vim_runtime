" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

inoremap <expr> <TAB>
            \ pumvisible() ? "\<C-n>" : "\<TAB>"
            " \ <SID>check_back_space() ? "\<TAB>" :
            " \ "\<C-x>\<C-i>"
" inoremap <C-l> <C-x><C-i>
