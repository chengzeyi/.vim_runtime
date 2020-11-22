if has('gui_running')
    set guioptions-=e  "tab pages
    set guioptions-=m  "menu bar
    set guioptions-=r  "scrollbar
    set guioptions-=L  "scrollbar
    set guioptions-=T  "toolbar
    set guioptions-=c  "dialogs
    " set guioptions-=b  "scrollbar
    " set guioptions-=R  "scrollbar
    " set guioptions-=l  "scrollbar
    set guitablabel=%M\ %t

    " if has('balloon_eval')
    "     set ballooneval
    " endif

    if exists('+gfn')
        nnoremap <s-up> :let &gfn = substitute(&gfn, '\(:h\<bar> \)\zs\d\+', '\=eval(submatch(0) + 1)', 'g')<cr>
        nnoremap <s-down> :let &gfn = substitute(&gfn, '\(:h\<bar> \)\zs\d\+', '\=eval(submatch(0) > 1 ? submatch(0) - 1 : submatch(0))', 'g')<cr>
    endif
endif

if has('nvim-0.4.0')
    augroup MyNeovimGui
        autocmd!
        autocmd UIEnter * call SetNeovimGui()
    augroup END

    function! SetNeovimGui() abort
        if exists('g:GuiLoaded')
            try
                GuiTabline 0
                GuiPopupmenu 0
            catch
            endtry
            nnoremap <s-up> :call GuiFont(substitute(g:GuiFont, ':h\zs\d\+', '\=eval(submatch(0) + 1)', 'g'))<cr>
            nnoremap <s-down> :call GuiFont(substitute(g:GuiFont, ':h\zs\d\+', '\=eval(submatch(0) > 1 ? submatch(0) - 1 : submatch(0))', 'g'))<cr>
        endif
    endfunction
endif
