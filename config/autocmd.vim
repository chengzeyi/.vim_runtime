" Return to last edit position when opening files (You want this!)
augroup MyReturnToLastEditPosition
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal!' "g'\"" | endif
augroup END

augroup MyColorScheme
    autocmd!
    if v:vim_did_enter
        let &background = get(g:, 'background', &background)
        exe 'colorscheme' get(g:, 'colorscheme', get(g:, 'colors_name', 'default'))
    else
        au VimEnter * ++nested let &background = get(g:, 'background', &background)
        au VimEnter * ++nested exe 'colorscheme' get(g:, 'colorscheme', get(g:, 'colors_name', 'default'))
    endif
augroup END

" augroup MyVimCursorColumn
"     autocmd!
"     autocmd InsertEnter * set cuc
"     autocmd InsertLeave * set nocuc
" augroup END

augroup MyQuickfixEnhancement
    autocmd!
    autocmd FileType qf if getwininfo(win_getid())[0]['quickfix'] && !getwininfo(win_getid())[0]['loclist'] | wincmd J | endif
    autocmd FileType qf nnoremap <silent> <buffer> <nowait> <tab> :RemoveQFItem<cr>
    autocmd FileType qf nnoremap <silent> <buffer> <nowait> <s-tab> :UndoQFRemove<cr>
    " autocmd QuickfixCmdPost [^l]* call ShortenQuifkFixPath(0)
    " autocmd QuickfixCmdPost l* call ShortenQuifkFixPath(1)
    " autocmd FileType qf autocmd CursorMoved <buffer=abuf> call EchoQFBufName()
    autocmd FileType qf setl nobuflisted nowrap foldcolumn=0
    autocmd BufEnter * if winnr('$') == 1 &&
                \ &filetype ==# 'qf'
                \ | q | endif
augroup END

command! RemoveQFItem call RemoveQFItem()
command! UndoQFRemove call UndoQFRemove()

function! GetQuickfixAll() abort
    let winid = win_getid()
    let wininfo = getwininfo(winid)[0]
    if wininfo['loclist']
        return getloclist(winid, {'all': 1})
    elseif wininfo['quickfix']
        return getqflist({'all': 1})
    else
        return {}
    endif
endfunction

function! SetQuickfixAll(all, au) abort
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
    let all = GetQuickfixAll()
    if empty(all)
        return
    endif
    let curidx = line('.') - 1
    if curidx < 0 || curidx >= len(all.items) | return | endif
    let item = remove(all.items, curidx)
    if !exists('b:undostack') | let b:undostack = [] | endif
    call add(b:undostack, [item, curidx])
    call SetQuickfixAll(all, 0)
    execute curidx + 1
endfunction

function! UndoQFRemove() abort
    let all = GetQuickfixAll()
    if empty(all)
        return
    endif
    if !exists('b:undostack') || len(b:undostack) == 0 | return | endif
    let [item, curidx] = remove(b:undostack, -1)
    if curidx > len(all.items) | let curidx = 0 | endif
    call insert(all.items, item, curidx)
    call SetQuickfixAll(all, 0)
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
"     let all = GetQuickfixAll()
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
    augroup MyQuickfixPreview
        autocmd!
        au FileType qf nnoremap <silent> <buffer> p :PreviewQuickfixEntry<cr>
    augroup END
    command! PreviewQuickfixEntry call PreviewQuickFixEntry()

    function! PreviewQuickfixEntry() abort
        let all = GetQuickfixAll()
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
            try
                call nvim_win_set_cursor(winid, [lnum, col])
            catch
            endtry
            call nvim_win_set_option(winid, 'cursorline', v:true)
            let old_winid = win_getid()
            call nvim_set_current_win(winid)
            normal! zz
            call nvim_set_current_win(old_winid)
            execute 'au' 'CursorMoved' '*' '++once' 'call nvim_win_close(' . winid . ', 0)'
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

" augroup MyQuickfixWindow
"     autocmd!
"     au WinEnter * if &filetype ==# 'qf' | call AdjustWindowHeight(1, 10) | endif
"     au FileType qf call AdjustWindowHeight(1, 10)
" augroup END

" function! AdjustWindowHeight(minheight, maxheight) abort
"     exe max([min([line('$'), a:maxheight]), a:minheight]) . 'wincmd' '_'
" endfunction

" function! AdjustWindowHeight(minheight, maxheight) abort
"     let l = 1
"     let n_lines = 0
"     let w_width = winwidth(0)
"     while l <= line('$')
"         " number to float for division
"         let l_len = strlen(getline(l)) + 0.0
"         let line_width = l_len/w_width
"         let n_lines += float2nr(ceil(line_width))
"         let l += 1
"     endw
"     exe 'resize' max([min([n_lines, a:maxheight]), a:minheight])
" endfunction

if has('nvim')
    augroup NeovimTerminal
        autocmd!
        autocmd TermOpen * startinsert
        autocmd TermOpen * setlocal foldcolumn=0
        autocmd TermOpen * setlocal signcolumn=no
        autocmd TermOpen * setlocal nonumber
        if has('patch-7.3.787')
            autocmd TermOpen * setlocal norelativenumber
        endif
        " autocmd TermClose *
        "             \ if expand('<afile>') !~# 'fzf' && expand('<afile>') !~# 'coc' |
        "             \     bdelete! |
        "             \ endif
    augroup END
elseif exists(':terminal')
    augroup MyVimTerminal
        autocmd!
        autocmd TerminalWinOpen * setlocal foldcolumn=0
        autocmd TerminalWinOpen * setlocal signcolumn=no
        autocmd TerminalWinOpen * setlocal nonumber
        if has('patch-7.3.787')
            autocmd TerminalWinOpen * setlocal norelativenumber
        endif
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
    autocmd FileType python if executable('pydoc3') | set keywordprg=pydoc3 | endif
augroup END

" augroup MyOpenLargeFile
"     autocmd!
"     autocmd BufReadPre * if getfsize(expand('<afile>')) > 1024 * 1024 | setlocal foldmethod=indent | endif
"     if has('nvim-0.5.0')
"         autocmd BufReadPre * if getfsize(expand('<afile>')) > 1024 * 1024 | setlocal foldcolumn=1 | endif
"     endif
" augroup END

" if has('nvim-0.4.0')
"     augroup MyNeovimGitLens
"         autocmd!
"         autocmd CursorHold * lua require'util'.blame_virt_text()
"         autocmd CursorMoved * lua require'util'.clear_blame_virt_text()
"         autocmd CursorMovedI * lua require'util'.clear_blame_virt_text()
"     augroup END
" endif
