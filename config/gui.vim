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

    if has('balloon_eval')
        set ballooneval
    endif

    nnoremap <S-Up> :let &gfn = substitute(&gfn, '\(:h\<bar> \)\zs\d\+', '\=eval(submatch(0) + 1)', 'g')<cr>
    nnoremap <S-Down> :let &gfn = substitute(&gfn, '\(:h\<bar> \)\zs\d\+', '\=eval(submatch(0) > 1 ? submatch(0) - 1 : submatch(0))', 'g')<cr>
endif

if has('nvim-0.4.0')
    augroup MyUIEnter
        autocmd!
        autocmd UIEnter * call SetNeovimGui()
    augroup END
endif
function! SetNeovimGui() abort
    if exists('g:GuiLoaded')
        try
            GuiTabline 0
            GuiPopupmenu 0
        catch
        endtry
        nnoremap <S-Up> :call GuiFont(substitute(g:GuiFont, ':h\zs\d\+', '\=eval(submatch(0) + 1)', 'g'))<cr>
        nnoremap <S-Down> :call GuiFont(substitute(g:GuiFont, ':h\zs\d\+', '\=eval(submatch(0) > 1 ? submatch(0) - 1 : submatch(0))', 'g'))<cr>
    endif
endfunction
