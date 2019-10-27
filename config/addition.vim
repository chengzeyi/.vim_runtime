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

if !has('nvim') && has('terminal')
    augroup setDebugger
        au!
        if executable('pudb3')
            au Filetype python nnoremap <buffer> <localleader>d :vert terminal ++close pudb3 %<cr>
            au Filetype python nnoremap <buffer> <localleader>D :vert terminal ++close pudb3<space>
        elseif executable('pdb3')
            au Filetype python nnoremap <buffer> <localleader>d :terminal ++close pdb3 %<cr>
            au Filetype python nnoremap <buffer> <localleader>D :terminal ++close pdb3<space>
        elseif executable('pudb')
            au Filetype python nnoremap <buffer> <localleader>d :vert terminal ++close pudb %<cr>
            au Filetype python nnoremap <buffer> <localleader>D :vert terminal ++close pudb<space>
        elseif executable('pdb')
            au Filetype python nnoremap <buffer> <localleader>d :terminal ++close pdb %<cr>
            au Filetype python nnoremap <buffer> <localleader>D :terminal ++close pdb<space>
        endif
        if executable('gdb')
            au Filetype c,cpp,go nnoremap <buffer> <localleader>d :GdbStart<space>
            au Filetype c,cpp,go nnoremap <buffer> <localleader>D :GdbStart<cr>
        endif
    augroup END
    command! -bang -nargs=* -complete=file GdbStart call GdbStart(<bang>0, <f-args>)
    function! GdbStart(bang, ...) abort
        let s:last_gdb_term = term_start([
            \ 'gdb',
            \ '--tui',
            \ '-ex',
            \ 'set confirm off',
            \ '-ex',
            \ 'set pagination off'
            \ ] + a:000, {
                \ 'vertical': 1,
                \ 'term_finish': 'close',
                \ 'exit_cb': { -> execute('unlet s:last_gdb_term') }
            \ })
        if !a:bang
            exec "normal! \<c-w>p"
        endif
    endfunction
    nnoremap <F3> :GdbSend refresh<cr>
    nnoremap <F4> :GdbSend quit<cr>
    nnoremap <F5> :GdbSend continue<cr>
    nnoremap <S-F5> :GdbSend kill<cr>
    nnoremap <F6> :GdbSend run<cr>
    nnoremap <S-F6> :GdbSend file<cr>
    nnoremap <F7> :GdbSend clear<cr>
    nnoremap <S-F7> :GdbSend tbreak <c-r>=expand('%:p')<cr>:<c-r>=line('.')<cr><cr>
    nnoremap <F8> :GdbSend break <c-r>=expand('%:p')<cr>:<c-r>=line('.')<cr><cr>
    nnoremap <S-F8> :GdbSend clear <c-r>=expand('%:p')<cr>:<c-r>=line('.')<cr><cr>
    nnoremap <F9> :GdbSend step<cr>
    nnoremap <S-F9> :GdbSend finish<cr>
    nnoremap <F10> :GdbSend next<cr>
    nnoremap <F12> :GdbSend print <c-r>=expand('<lt>cword>')<cr><cr>
    nnoremap <leader>dd :GdbSend<space>
    nnoremap <leader>dD :GdbSend!<space>
    command! -bang -nargs=* -complete=file GdbSend call GdbSend(<bang>0, <q-args>)
    function! GdbSend(bang, cmd) abort
        if !exists('s:last_gdb_term')
            return
        endif
        if a:bang
            call term_sendkeys(s:last_gdb_term, a:cmd)
        else
            call term_sendkeys(s:last_gdb_term, a:cmd . "\<cr>")
        endif
    endfunction
endif
