if !has('nvim') && has('gui_running')
    set lines=999 columns=999

    let &guifont = get(g:, 'guifont', &guifont)

    set guioptions-=e  "tab pages
    set guioptions-=m  "menu bar
    set guioptions-=r  "scrollbar
    set guioptions-=L  "scrollbar
    set guioptions-=T  "toolbar
    set guioptions-=c  "dialogs
    " set guioptions-=b  "scrollbar
    " set guioptions-=R  "scrollbar
    " set guioptions-=l  "scrollbar
    " set guitablabel=%M\ %t

    if has('balloon_eval')
        set ballooneval
    endif

    nnoremap <silent> <F5> :let &gfn = substitute(&gfn,
                \ '\(:h\<bar> \)\zs\d\+', '\=eval(submatch(0) > 1 ? submatch(0) - 1 : submatch(0))', 'g')<cr>
    nnoremap <silent> <F6> :let &gfn = substitute(&gfn,
                \ '\(:h\<bar> \)\zs\d\+', '\=eval(submatch(0) + 1)', 'g')<cr>
endif

if has('nvim-0.4.0')
    augroup MyNvimGui
        autocmd!
        autocmd UIEnter * call SetNvimGui()
    augroup END

    function! SetNvimGui() abort
        if exists('g:GuiLoaded')
            let &guifont = get(g:, 'guifont', &guifont)
            try
                GuiTabline 0
                GuiPopupmenu 0
            catch
            endtry
            " nnoremap <silent><rightmouse> :call GuiShowContextMenu()<cr>
            " inoremap <silent><rightmouse> <Esc>:call GuiShowContextMenu()<cr>
            " vnoremap <silent><rightmouse> :call GuiShowContextMenu()<cr>gv
            nnoremap <silent> <F5> :call GuiFont(substitute(g:GuiFont,
                        \ ':h\zs\d\+', '\=eval(submatch(0) > 1 ? submatch(0) - 1 : submatch(0))', 'g'))<cr>
            nnoremap <silent> <F6> :call GuiFont(substitute(g:GuiFont,
                        \ ':h\zs\d\+', '\=eval(submatch(0) + 1)', 'g'))<cr>
            if has('mac')
                nnoremap <silent> <c-d-f> :call GuiWindowFullScreen(!g:GuiWindowFullScreen)<cr>
            else
                nnoremap <silent> <F11> :call GuiWindowFullScreen(!g:GuiWindowFullScreen)<cr>
            endif
        endif
    endfunction
endif
