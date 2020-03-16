if exists('g:fvim_loaded')
    if has('unix')
        set guifont=Inconsolata\ 12,Hack\ Regular\ 11
    elseif has('win32')
        set guifont=Cascadia\ Code:h15
    endif
    nnoremap <silent> <S-Up> :set guifont=+<CR>
    nnoremap <silent> <S-Down> :set guifont=-<CR>
    nnoremap <A-CR> :FVimToggleFullScreen<CR>
    FVimCursorSmoothMove 1
    FVimCursorSmoothBlink 1
elseif exists('g:GuiLoaded')
    GuiTabline 0
    GuiPopupmenu 0
endif

nnoremap <leader>eg :e ~/.vim_runtime/config/ginit.vim<cr>
autocmd BufWritePost ~/.vim_runtime/config/ginit.vim source ~/.vim_runtime/config/ginit.vim
