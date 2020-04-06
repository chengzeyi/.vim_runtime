" Return to last edit position when opening files (You want this!)
augroup MyReturnToLastEditPosition
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

augroup MyQuickfixUndo
    autocmd!
    autocmd FileType qf nnoremap <buffer> <nowait> <tab> :RemoveQFItem<cr>
    autocmd FileType qf nnoremap <buffer> <nowait> <s-tab> :UndoQFRemove<cr>
augroup END

command! RemoveQFItem call RemoveQFItem()
command! UndoQFRemove call UndoQFRemove()

function! RemoveQFItem() abort
    let winid = win_getid()
    if getwininfo(winid)[0]['loclist']
        let abbr = 'loc' | let ch = 'l'
        let all = getloclist(win_getid())
    elseif getwininfo(winid)[0]['quickfix']
        let abbr = 'qf' | let ch = 'c'
        let all = getqflist()
    else
        return
    endif
    let curidx = line('.') - 1
    if curidx < 0 || curidx >= len(all) | return | endif
    let item = remove(all, curidx)
    if !exists('b:undostack') | let b:undostack = [] | endif
    call add(b:undostack, [item, curidx])
    if getwininfo(winid)[0]['loclist']
        call setloclist(winid, all, 'r')
    else
        call setqflist(all, 'r')
    endif
    execute curidx + 1
endfunction

function! UndoQFRemove() abort
    if !exists('b:undostack') || len(b:undostack) == 0 | return | endif
    let [item, curidx] = remove(b:undostack, -1)
    let winid = win_getid()
    if getwininfo(winid)[0]['loclist']
        let abbr = 'loc' | let ch = 'l'
        let all = getloclist(win_getid())
    elseif getwininfo(winid)[0]['quickfix']
        let abbr = 'qf' | let ch = 'c'
        let all = getqflist()
    else
        return
    endif
    if curidx > len(all) | let curidx = 0 | endif
    call insert(all, item, curidx)
    if getwininfo(winid)[0]['loclist']
        call setloclist(winid, all, 'r')
    else
        call setqflist(all, 'r')
    endif
    execute curidx + 1
endfunction

augroup MyQuickfixWindow
    autocmd!
    au FileType qf call AdjustWindowHeight(1, 10)
    au Filetype qf set nobuflisted
    au FileType qf set foldcolumn=0
augroup END

" function! AdjustWindowHeight(minheight, maxheight)
"     exe max([min([line('$'), a:maxheight]), a:minheight]) . 'wincmd _'
" endfunction

function! AdjustWindowHeight(minheight, maxheight) abort
    let l = 1
    let n_lines = 0
    let w_width = winwidth(0)
    while l <= line('$')
        " number to float for division
        let l_len = strlen(getline(l)) + 0.0
        let line_width = l_len/w_width
        let n_lines += float2nr(ceil(line_width))
        let l += 1
    endw
    exe max([min([n_lines, a:maxheight]), a:minheight]) . 'wincmd _'
endfunction

if has('nvim')
    augroup NeovimTerminal
        autocmd!
        autocmd TermOpen * startinsert
        autocmd TermOpen * set nonumber
        autocmd TermOpen * set foldcolumn=0
        if has('patch-7.3.787')
            autocmd TermOpen * set norelativenumber
        endif
        " autocmd TermClose *
        "             \ if expand('<afile>') !~# 'fzf' && expand('<afile>') !~# 'coc' |
        "             \     bdelete! |
        "             \ endif
    augroup END
endif

augroup MyFileType
    autocmd!
    " autocmd FileType c,cpp,cs,java,json setlocal commentstring=//\ %s
    " autocmd FileType json syntax match Comment +\/\/.\+$+
    " if has('python3') || has('python')
        " autocmd Filetype python compiler pylint
    " endif
    " autocmd FileType c compiler gcc
    " autocmd FileType cpp compiler gcc
    " autocmd FileType go compiler go
    autocmd FileType go set noexpandtab
augroup END

augroup MyFileTypeMapping
    autocmd!
    if executable('python3')
        au filetype python nnoremap <buffer> <localleader>r :w <bar> !python3 %<cr>
        au filetype python nnoremap <buffer> <localleader>R :w <bar> !python3 %<space>
    elseif executable('python')
        au filetype python nnoremap <buffer> <localleader>r :w <bar> !python %<cr>
        au filetype python nnoremap <buffer> <localleader>R :w <bar> !python %<space>
    endif
    if executable('gcc')
        au filetype c nnoremap <buffer> <localleader>r :w <bar>
                    \ !gcc % -o %:r && ./%:r<cr>
        au filetype c nnoremap <buffer> <localleader>R :w <bar>
                    \ !gcc % -o %:r && ./%:r<space>
    endif
    if executable('g++')
        au filetype cpp nnoremap <buffer> <localleader>r :w <bar>
                    \ !g++ % -o %:r && ./%:r<cr>
        au filetype cpp nnoremap <buffer> <localleader>R :w <bar>
                    \ !g++ % -o %:r && ./%:r<space>
    endif
    if executable('go')
        au filetype go nnoremap <buffer> <localleader>r :w <bar>
                    \ !go run %<cr>
        au filetype go nnoremap <buffer> <localleader>R :w <bar>
                    \ !go run %<space>
    endif
    if executable('pandoc')
        au filetype html,docx,rtf,odp,odt nnoremap <buffer> <localleader>v
                    \ :set buftype=nofile ft=markdown <bar>
                    \ %!pandoc -t markdown_strict<cr>
        au filetype html,docx,rtf,odp,odt nnoremap <buffer> <localleader>V
                    \ :enew <bar> read # <bar> set buftype=nofile ft=markdown <bar>
                    \ %!pandoc -t markdown_strict<cr>
    endif
    if executable('pdftotext')
        autocmd FileType pdf nnoremap <buffer> <localleader>v
                    \ :set buftype=nofile ft=markdown <bar>
                    \ %!pdftotext -nopgbrk -layout -q -eol unix /dev/stdin - <bar> fmt -w80<cr>
        autocmd FileType pdf nnoremap <buffer> <localleader>V
                    \ :enew <bar> read # <bar> set buftype=nofile ft=markdown <bar>
                    \ %!pdftotext -nopgbrk -layout -q -eol unix /dev/stdin - <bar> fmt -w80<cr>
    endif
augroup END

augroup MyEditGDBInit
    autocmd!
    if executable('gdb')
        au FileType c,cpp,go nnoremap <buffer> <localleader>e :e .gdbinit<cr>
    endif
augroup END

if exists(':terminal')
    augroup MyLaunchDebugger
        autocmd!
        if executable('pudb3')
            au Filetype python nnoremap <buffer> <localleader>d :vert RunTermCmd pudb3<space>
            au Filetype python nnoremap <buffer> <localleader>D :vert RunTermCmd pudb3 %<cr>
        elseif executable('pdb3')
            au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pdb3<space>
            au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pdb3 %<cr>
        elseif executable('pudb')
            au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pudb<space>
            au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pudb %<cr>
        elseif executable('pdb')
            au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pdb<space>
            au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pdb %<cr>
        endif
        if executable('gdb')
            au Filetype c,cpp,go nnoremap <buffer> <localleader>d :RunTermCmd gdb<space>
            au Filetype c,cpp,go nnoremap <buffer> <localleader>D :RunTermCmd gdb<cr>
        endif
    augroup END
    command! -nargs=+ -complete=shellcmd RunTermCmd call RunTermCmd(<q-args>)
    function! RunTermCmd(cmd) abort
        botright split
        if has('nvim')
            execute 'terminal ' . a:cmd
        else
            execute 'terminal ++close ++curwin ' . a:cmd
        endif
    endfunction
endif
