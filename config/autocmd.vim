" Return to last edit position when opening files (You want this!)
augroup MyReturnToLastEditPosition
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

" augroup MyVimCursorLine
"     autocmd!
"     autocmd InsertEnter * set cuc
"     autocmd InsertLeave * set nocuc
" augroup END

augroup MyQuickFixEnhancement
    autocmd!
    autocmd FileType qf nnoremap <buffer> <nowait> <tab> :RemoveQFItem<cr>
    autocmd FileType qf nnoremap <buffer> <nowait> <s-tab> :UndoQFRemove<cr>
    " autocmd QuickFixCmdPost [^l]* call ShortenQuifkFixPath(0)
    " autocmd QuickFixCmdPost l* call ShortenQuifkFixPath(1)
    " autocmd FileType qf autocmd CursorMoved <buffer=abuf> call EchoQFBufName()
    autocmd FileType qf setl nowrap nonumber norelativenumber foldcolumn=0
    autocmd BufEnter * if winnr('$') == 1 &&
                \ &filetype ==# 'qf'
                \ | q | endif
augroup END

command! RemoveQFItem call RemoveQFItem()
command! UndoQFRemove call UndoQFRemove()

function! GetQuickFixAll() abort
    let winid = win_getid()
    if getwininfo(winid)[0]['loclist']
        return getloclist(win_getid(), {'all': 1})
    elseif getwininfo(winid)[0]['quickfix']
        return getqflist({'all': 1})
    else
        return {}
    endif
endfunction

function! SetQuickFixAll(all, au) abort
    let winid = win_getid()
    if getwininfo(winid)[0]['loclist']
        if a:au
            call setloclist(winid, [], 'r', a:all)
        else
            noautocmd call setloclist(winid, [], 'r', a:all)
        endif
    elseif getwininfo(winid)[0]['quickfix']
        if a:au
            call setqflist([], 'r', a:all)
        else
            noautocmd call setqflist([], 'r', a:all)
        endif
    endif
endfunction

function! RemoveQFItem() abort
    let all = GetQuickFixAll()
    if empty(all)
        return
    endif
    let curidx = line('.') - 1
    if curidx < 0 || curidx >= len(all.items) | return | endif
    let item = remove(all.items, curidx)
    if !exists('b:undostack') | let b:undostack = [] | endif
    call add(b:undostack, [item, curidx])
    call SetQuickFixAll(all, 0)
    execute curidx + 1
endfunction

function! UndoQFRemove() abort
    let all = GetQuickFixAll()
    if empty(all)
        return
    endif
    if !exists('b:undostack') || len(b:undostack) == 0 | return | endif
    let [item, curidx] = remove(b:undostack, -1)
    if curidx > len(all.items) | let curidx = 0 | endif
    call insert(all.items, item, curidx)
    call SetQuickFixAll(all, 0)
    execute curidx + 1
endfunction

" function! ShortenQuifkFixPath(loc) abort
"     if a:loc
"         let all = getloclist(0, {'all': 1})
"     else
"         let all = getqflist({'all': 1})
"     endif
"     if empty(all)
"         return
"     endif
"     for item in all.items
"         let item.module = pathshorten(bufname(item.bufnr))
"     endfor
"     if a:loc
"         call setloclist(0, [], 'r', all)
"     else
"         call setqflist([], 'r', all)
"     endif
" endfunction

" command! EchoQFBufName call EchoQFBufName()
" function! EchoQFBufName() abort
"     let all = GetQuickFixAll()
"     if empty(all)
"         return
"     endif
"     let curidx = line('.') - 1
"     if curidx < 0 || curidx >= len(all.items) | return | endif
"     let item = all.items[curidx]
"     let buf_name = bufname(item.bufnr)
"     echo buf_name
" endfunction

if has('nvim-0.4.0') || has('popupwin')
    augroup MyQuickFixPreview
        autocmd!
        au FileType qf nnoremap <buffer> p :PreviewQuickFixEntry<cr>
    augroup END
    command! PreviewQuickFixEntry call PreviewQuickFixEntry()

    function! PreviewQuickFixEntry() abort
        let all = GetQuickFixAll()
        if empty(all)
            return
        endif
        let curidx = line('.') - 1
        if curidx < 0 || curidx >= len(all.items) | return | endif
        let item = all.items[curidx]
        let bufnr = item.bufnr
        let lnum = item.lnum
        let col = item.col
        let width = float2nr(&columns * 0.8)
        let height = &previewheight
        let line_pos = 0
        let col_pos = (&columns - float2nr(&columns * 0.8)) / 2
        if has('nvim')
            let winid = nvim_open_win(
                        \ bufnr,
                        \ 0, {
                            \ 'relative': 'editor',
                            \ 'width': width,
                            \ 'height': height,
                            \ 'row': line_pos,
                            \ 'col': col_pos,
                            \ 'style': 'minimal'})
            call nvim_win_set_cursor(winid, [lnum, col])
            call nvim_win_set_option(winid, 'cursorline', v:true)
            let old_winid = win_getid()
            call nvim_set_current_win(winid)
            normal! zz
            call nvim_set_current_win(old_winid)
            execute 'au CursorMoved * ++once call nvim_win_close(' . winid . ', 0)'
        else
            let winid = popup_create(bufnr, {
                        \ 'minwidth': width,
                        \ 'maxwidth': width,
                        \ 'minheight': height,
                        \ 'maxheight': height,
                        \ 'line': line_pos + 1,
                        \ 'col': col_pos,
                        \ 'zindex': 200,
                        \ 'moved': 'any',
                        \ 'wrap': 0,
                        \ 'firstline': lnum - (height - 1) / 2
                        \ })
        endif
    endfunction
endif

augroup MyQuickFixWindow
    autocmd!
    au WinEnter * if &filetype ==# 'qf' | call AdjustWindowHeight(1, 10) | endif
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
    exe 'resize ' . max([min([n_lines, a:maxheight]), a:minheight])
endfunction

if has('nvim')
    augroup NeovimTerminal
        autocmd!
        autocmd TermOpen * startinsert
        autocmd TermOpen * setlocal nonumber
        autocmd TermOpen * setlocal foldcolumn=0
        if has('patch-7.3.787')
            autocmd TermOpen * setlocal norelativenumber
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
    autocmd Filetype *
                \ if empty(&omnifunc) |
                \     setlocal omnifunc=syntaxcomplete#Complete |
                \ endif
augroup END

" augroup MyFileTypeMapping
"     autocmd!
"     if executable('python3')
"         au filetype python nnoremap <buffer> <localleader>r :w <bar> !python3 %<cr>
"         au filetype python nnoremap <buffer> <localleader>R :w <bar> !python3 %<space>
"     elseif executable('python')
"         au filetype python nnoremap <buffer> <localleader>r :w <bar> !python %<cr>
"         au filetype python nnoremap <buffer> <localleader>R :w <bar> !python %<space>
"     endif
"     if executable('gcc')
"         au filetype c nnoremap <buffer> <localleader>r :w <bar>
"                     \ !gcc % -o %:r && ./%:r<cr>
"         au filetype c nnoremap <buffer> <localleader>R :w <bar>
"                     \ !gcc % -o %:r && ./%:r<space>
"     endif
"     if executable('g++')
"         au filetype cpp nnoremap <buffer> <localleader>r :w <bar>
"                     \ !g++ % -o %:r && ./%:r<cr>
"         au filetype cpp nnoremap <buffer> <localleader>R :w <bar>
"                     \ !g++ % -o %:r && ./%:r<space>
"     endif
"     if executable('go')
"         au filetype go nnoremap <buffer> <localleader>r :w <bar>
"                     \ !go run %<cr>
"         au filetype go nnoremap <buffer> <localleader>R :w <bar>
"                     \ !go run %<space>
"     endif
"     if executable('pandoc')
"         au filetype html,docx,rtf,odp,odt nnoremap <buffer> <localleader>v
"                     \ :set buftype=nofile ft=markdown <bar>
"                     \ %!pandoc -t markdown_strict<cr>
"         au filetype html,docx,rtf,odp,odt nnoremap <buffer> <localleader>V
"                     \ :enew <bar> read # <bar> set buftype=nofile ft=markdown <bar>
"                     \ %!pandoc -t markdown_strict<cr>
"     endif
"     if executable('pdftotext')
"         autocmd FileType pdf nnoremap <buffer> <localleader>v
"                     \ :set buftype=nofile ft=markdown <bar>
"                     \ %!pdftotext -nopgbrk -layout -q -eol unix /dev/stdin - <bar> fmt -w80<cr>
"         autocmd FileType pdf nnoremap <buffer> <localleader>V
"                     \ :enew <bar> read # <bar> set buftype=nofile ft=markdown <bar>
"                     \ %!pdftotext -nopgbrk -layout -q -eol unix /dev/stdin - <bar> fmt -w80<cr>
"     endif
" augroup END

" augroup MyEditGDBInit
"     autocmd!
"     if executable('gdb')
"         au FileType c,cpp,go nnoremap <buffer> <localleader>e :e .gdbinit<cr>
"     endif
" augroup END

" if exists(':terminal')
"     augroup MyLaunchDebugger
"         autocmd!
"         if executable('pudb3')
"             au Filetype python nnoremap <buffer> <localleader>d :vert RunTermCmd pudb3<space>
"             au Filetype python nnoremap <buffer> <localleader>D :vert RunTermCmd pudb3 %<cr>
"         elseif executable('pdb3')
"             au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pdb3<space>
"             au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pdb3 %<cr>
"         elseif executable('pudb')
"             au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pudb<space>
"             au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pudb %<cr>
"         elseif executable('pdb')
"             au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pdb<space>
"             au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pdb %<cr>
"         endif
"         if executable('gdb')
"             au Filetype c,cpp,go nnoremap <buffer> <localleader>d :RunTermCmd gdb<space>
"             au Filetype c,cpp,go nnoremap <buffer> <localleader>D :RunTermCmd gdb<cr>
"         endif
"     augroup END
"     command! -nargs=+ -complete=shellcmd RunTermCmd call RunTermCmd(<q-args>)
"     function! RunTermCmd(cmd) abort
"         botright split
"         if has('nvim')
"             execute 'terminal ' . a:cmd
"         else
"             execute 'terminal ++close ++curwin ' . a:cmd
"         endif
"     endfunction
" endif
