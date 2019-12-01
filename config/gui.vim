augroup myGui
    au!

    " Properly disable sound on errors on MacVim
    " if has("gui_macvim")
    "     set vb t_vb=
    " endif

    try
        if has("gui_gtk2")
            set guifont=Inconsolata\ 12,Hack\ Regular\ 11
        elseif has("gui_gtk3")
            set guifont=Inconsolata\ 14,Hack\ Regular\ 13
        elseif has("gui_athena")
            set guifont=Inconsolata\ 14,Hack\ Regular\ 13
        elseif has("gui_macvim")
            set guifont=Menlo\ Regular:h14
        elseif has("gui_win32")
            set guifont=Hack\ Regular:h12,Consolas:h12
        endif
    catch
    endtry

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

    nnoremap <leader>eg :e ~/.vim_runtime/config/gui.vim<cr>
    autocmd BufWritePost ~/.vim_runtime/config/gui.vim source ~/.vim_runtime/config/gui.vim

augroup END
