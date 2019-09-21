set nocompatible

call plug#begin('~/.vim_runtime/plugged')

Plug 'chengzeyi/vim-markify'
" Plug 'chengzeyi/a.vim', {'on': 'A'}
Plug 'chengzeyi/OmniCppComplete', {'for': ['cpp', 'c']}

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
" Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'c']}
" Plug 'fatih/vim-go', {'for': 'go', 'on': ['GoUpdateBinaries', 'GoInstallBinaries']}

Plug 'lfilho/cosco.vim', {'on': '<plug>(cosco-commaOrSemiColon)'}

Plug 'vim-utils/vim-man'

Plug 'mattn/gist-vim'

Plug 'FooSoft/vim-argwrap', {'on': 'ArgWrap'}

Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}

" Plug 'terryma/vim-expand-region'

Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}

Plug 'luochen1990/rainbow', {'on': 'RainbowToggle'}

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

" Plug 'stefandtw/quickfix-reflector.vim'

Plug 'ntpeters/vim-better-whitespace'

" Plug 'Valloric/ListToggle'

Plug 'mhinz/vim-startify'

Plug 'mhinz/vim-grepper', {'on': ['Grepper', '<plug>(GrepperOperator)']}

Plug 'wsdjeg/FlyGrep.vim', {'on': 'FlyGrep'}

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'junegunn/vim-easy-align', {'on': '<plug>(EasyAlign)'}

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-eunuch'

" Plug 'machakann/vim-sandwich'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'maxbrunsfeld/vim-yankstack'

Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky', {'on': 'CtrlPFunky'}
if has('python') || has('python3')
    Plug 'fisadev/vim-ctrlp-cmdpalette', {'on': 'CtrlPCmdPalette'}
endif
" Plug 'dbeecham/ctrlp-commandpalette.vim', {'on': 'CtrlPCommandPalette'}

if has('lua')
    Plug 'Shougo/neocomplete'
    Plug 'Shougo/neco-vim'
    Plug 'Shougo/neco-syntax'
else
    Plug 'Shougo/neocomplcache.vim'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/echodoc.vim'
" Plug 'Shougo/deol.nvim'

Plug 'majutsushi/tagbar', {'on': ['TagbarToggle', 'TagbarOpenAutoClose']}

Plug 'sbdchd/neoformat', {'on': 'Neoformat'}

" Plug 'skywind3000/vim-preview'
Plug 'skywind3000/asyncrun.vim'

" Plug 'xuhdev/SingleCompile'

" Plug 'vim-scripts/TagHighlight'

Plug 'ludovicchabant/vim-gutentags'

" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'

" Plug 'chengzeyi/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', {'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'sheerun/vim-polyglot'

" Plug 'dense-analysis/ale'

if exists(':terminal')
    Plug 'Lenovsky/nuake', {'on': 'Nuake'}
endif

Plug 'liuchengxu/space-vim-dark'
Plug 'chriskempson/base16-vim'
Plug 'cocopon/iceberg.vim'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
" Plug 'arcticicestudio/nord-vim'

call plug#end()

let mapleader = ' '
set pastetoggle=<F2>

inoremap <c-a> <home>
inoremap <c-e> <end>
nnoremap Q @q
nnoremap M `m
nnoremap Y y$
nnoremap 0 ^
nnoremap ^ 0
xnoremap 0 ^
xnoremap ^ 0
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
xnoremap j gj
xnoremap gj j
xnoremap k gk
xnoremap gk k
nnoremap <leader>? :nmap <lt>leader><cr>
nnoremap <leader>/ :execute 'nmap <lt>leader>' . nr2char(getchar())<cr>
nnoremap <leader>w :w!<cr>
nnoremap <leader>cb :cbuffer<cr>
nnoremap <leader>" :registers<CR>
nnoremap <leader>' :marks<CR>
nnoremap <leader>` :marks<CR>
nnoremap <leader>f0 :set foldlevel=0<cr>
nnoremap <leader>f1 :set foldlevel=1<cr>
nnoremap <leader>f2 :set foldlevel=2<cr>
nnoremap <leader>f3 :set foldlevel=3<cr>
nnoremap <leader>f4 :set foldlevel=4<cr>
nnoremap <leader>f5 :set foldlevel=5<cr>
nnoremap <leader>f6 :set foldlevel=6<cr>
nnoremap <leader>f7 :set foldlevel=7<cr>
nnoremap <leader>f8 :set foldlevel=8<cr>
nnoremap <leader>f9 :set foldlevel=9<cr>
nnoremap <leader>f- :set foldlevel-=1<cr>
nnoremap <leader>f+ :set foldlevel+=1<cr>
nnoremap <leader>f= :set foldlevel=99<cr>
if exists(':terminal')
    tnoremap <c-n> <c-w>N
endif
if exists(':packadd')
    nnoremap <leader>dd :packadd termdebug <bar> Termdebug<space>
    nnoremap <leader>dD :packadd termdebug <bar> TermdebugCommand<space>
    nnoremap <leader>dr :Run<cr>
    nnoremap <leader>dR :Run<space>
    nnoremap <leader>da :Arguments<space>
    nnoremap <leader>de :Evaluate<cr>
    nnoremap <leader>dE :Evaluate<space>
    nnoremap <leader>db :Break<cr>
    nnoremap <leader>ds :Step<cr>
    nnoremap <leader>dS :Stop<cr>
    nnoremap <leader>do :Over<cr>
    nnoremap <leader>df :Finish<cr>
    nnoremap <leader>dc :Continue<cr>
    nnoremap <leader>dC :Clear<cr>
    nnoremap <leader>d[ :Gdb<cr>
    nnoremap <leader>d] :Program<cr>
    nnoremap <leader>d\ :Source<cr>

    nnoremap <leader>qf :packadd cfilter <bar> Cfilter<space>
    nnoremap <leader>qv :packadd cfilter <bar> Cfilter!<space>
    nnoremap <leader>lf :packadd cfilter <bar> Lfilter<space>
    nnoremap <>lv :packadd cfilter <bar> Lfilter!<space>
endif
nnoremap <leader>] :execute 'ptag ' . expand('<cword>')<cr>
nnoremap <leader>[ :pclose<cr>
augroup skipBuffer
    au!
    au Filetype qf set nobuflisted
augroup END

nnoremap dS :call <SID>DeleteSurround()<cr>
nnoremap cS :call <SID>ChangeSurround()<cr>
nnoremap S :set operatorfunc=<SID>OperatorSurround<cr>g@
vnoremap S :<c-u>call <SID>OperatorSurround(visualmode())<cr>
function! <SID>CanPair(ch)
    return a:ch !=# "\<esc>" && a:ch !=# "\<c-c>" &&
                \ stridx("()[]{}<>bBt'\"`", a:ch) != -1
endfunction
function! <SID>CanSurround(ch)
    return a:ch !=# "\<esc>" && a:ch !=# "\<c-c>"
endfunction
function! <SID>ParsePair(ch)
    if a:ch ==# 't'
        let name = input('Enter tag name: ')
        return ['<' . name . '>', '</' . name . '>']
    endif
    let idx = stridx('()[]{}<>bB', a:ch)
    if idx == -1 | return [a:ch, a:ch] | endif
    let space = stridx('}])', a:ch) != -1 ? ' ' : ''
    let left = '(([[{{<<({'[idx] . space
    let right = space . '))]]}}>>)}'[idx]
    return [left, right]
endfunction
function! <SID>DeleteSurround()
    let sur = nr2char(getchar())
    if !<SID>CanPair(sur) | return | endif
    let saved = @a
    execute 'normal! "adi' . sur . '"_va' . sur . '"ap'
    let @a = saved
endfunction
function! <SID>ChangeSurround()
    let from = nr2char(getchar())
    if !<SID>CanPair(from) | return | endif
    let to = nr2char(getchar())
    if !<SID>CanSurround(to) | return | endif
    let [left, right] = <SID>ParsePair(to)
    let saved = @a
    execute 'normal! "adi' . from . '"_ca' . from . left . "\<c-r>a" . right . "\<esc>"
    let @a = saved
endfunction
function! <SID>OperatorSurround(motion_wise)
    let sur = nr2char(getchar())
    if !<SID>CanSurround(sur) | return | endif
    let [left, right] = <SID>ParsePair(sur)
    let bp = getpos("'[")
    let ep = getpos("']")
    call setpos('.', ep)
    execute "normal! \"=right\<cr>p"
    call setpos('.', bp)
    execute "normal! \"=left\<cr>P"
endfunction

nnoremap <leader>qq :QToggle<cr>
nnoremap <leader>ll :LToggle<cr>
nnoremap <leader>q[ :cprev<cr>
nnoremap <leader>q] :cnext<cr>
nnoremap <leader>l[ :lprev<cr>
nnoremap <leader>l] :lnext<cr>
command! QToggle call <SID>QListToggle(10)
command! LToggle call <SID>LListToggle(10)
function! <SID>LListToggle(height) abort
    let buffer_count_before = <SID>BufferCount()
    " Location list can't be closed if there's cursor in it, so we need
    " to call lclose twice to move cursor to the main pane
    silent! lclose
    silent! lclose

    if <SID>BufferCount() == buffer_count_before
        execute "silent! lopen " . a:height
    endif
endfunction
function! <SID>QListToggle(height) abort
    let buffer_count_before = <SID>BufferCount()
    silent! cclose

    if <SID>BufferCount() == buffer_count_before
        execute "silent! botright copen " . a:height
    endif
endfunction
function! <SID>BufferCount() abort
    return len(filter(range(1, bufnr('$')), 'bufwinnr(v:val) != -1'))
endfunction

augroup setQLEditable
    au!
    autocmd FileType qf nnoremap <buffer> dd :RemoveQFItem<cr>
augroup END
command! RemoveQFItem :call <SID>RemoveQFItem()
function! <SID>RemoveQFItem()
    if getwininfo(win_getid())[0]['loclist']
        let abbr = 'loc' | let ch = 'l'
    elseif getwininfo(win_getid())[0]['quickfix']
        let abbr = 'qf' | let ch = 'c'
    else
        return
    endif
    execute 'let all = get' . abbr . 'list()'
    let curidx = line('.') - 1
    if curidx < 0 || curidx >= len(all) | return | endif
    call remove(all, curidx)
    execute 'call set' . abbr . 'list(all, "r")'
    execute curidx + 1
    " execute curidx + 1 . ch . 'first'
    " copen
endfunction

augroup compileAndRun
    au!
    if executable('python3')
        au filetype python nnoremap <leader>cr :w <bar> exec '!python3 '.shellescape('%')<CR>
    else
        au filetype python nnoremap <leader>cr :w <bar> exec '!python '.shellescape('%')<CR>
    endif
    au filetype c nnoremap <leader>cr :w <bar>
                \ exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
    au filetype cpp nnoremap <leader>cr :w <bar>
                \ exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
augroup END

nnoremap <leader>aa :call SwitchSourceHeader()<cr>
function! SwitchSourceHeader()
    let suffix = expand("%:e")
    if suffix ==# "cpp"
        silent! find %:t:r.h
        silent! find %:t:r.hpp
    elseif suffix ==# "c"
        silent! find %:t:r.h
    elseif suffix ==# "hpp"
        silent! find %:t:r.cpp
    elseif suffix ==# "h"
        silent! find %:t:r.c
        silent! find %:t:r.cpp
    endif
endfunction

nnoremap <leader>ct :Ctags<cr>
nnoremap <leader>cT :Ctags<space>
command! -complete=file -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+ialS --extra=+q <args>

set csverb
" set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-,a-
nnoremap <leader>cs :Cscope<cr>
nnoremap <leader>cS :Cscope<space>
command! -complete=file -nargs=* Cscope !cscope -Rbqk <args>
nnoremap <C-\><cr> :cs add .<cr>
nnoremap <C-\>h :cs help<cr>
nnoremap <C-\>H :cs show<cr>
nnoremap <C-\>r :cs reset<cr>
nnoremap <C-\>k :cs kill -1<cr>
nnoremap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>A :cs find a<space>
nnoremap <C-\>S :cs find s<space>
nnoremap <C-\>G :cs find g<space>
nnoremap <C-\>C :cs find c<space>
nnoremap <C-\>T :cs find t<space>
nnoremap <C-\>E :cs find e<space>
nnoremap <C-\>F :cs find f<space>
nnoremap <C-\>I :cs find i<space>
nnoremap <C-\>D :cs find d<space>
nnoremap <C-\><C-\>a :scs find a <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\><C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\><C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>A :scs find a<space>
nnoremap <C-\><C-\>S :scs find s<space>
nnoremap <C-\><C-\>G :scs find g<space>
nnoremap <C-\><C-\>C :scs find c<space>
nnoremap <C-\><C-\>T :scs find t<space>
nnoremap <C-\><C-\>E :scs find e<space>
nnoremap <C-\><C-\>F :scs find f<space>
nnoremap <C-\><C-\>I :scs find i<space>
nnoremap <C-\><C-\>D :scs find d<space>

nnoremap <leader>vv :vimgrep // % <bar> cw<left><left><left><left><left><left><left><left>
nnoremap <leader>vV :vimgrep // **/* <bar> cw<left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>vl :lvimgrep // % <bar> cw<left><left><left><left><left><left><left><left>
nnoremap <leader>vL :lvimgrep // **/* <bar> cw<left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>ss :%s//g<left><left>
nnoremap <leader>sc :%s//gc<left><left><left>
nnoremap <leader>qs :cdo s//g<left><left>
nnoremap <leader>qc :cdo s//gc<left><left><left>
nnoremap <leader>ls :ldo s//g<left><left>
nnoremap <leader>lc :ldo s//gc<left><left><left>
nnoremap <leader>bs :bufdo %s//g<left><left>
nnoremap <leader>bc :bufdo %s//gc<left><left><left>

command! W w !sudo tee % > /dev/null

set notimeout
" set timeoutlen=2000
set ttimeout
set ttimeoutlen=10

" set shortmess=a

set mouse=a

nnoremap <c-]> g<c-]>
nnoremap g<c-]> <c-]>
xnoremap <c-]> g<c-]>
xnoremap g<c-]> <c-]>

set tags=./tags;,./TAGS;
augroup setFtTags
    autocmd!
    autocmd FileType cpp setlocal tags^=~/.vim_runtime/tags/cpp_tags
augroup END
" set tags+=./.tags
" set tags+=../.tags
" set tags+=../../.tags
" set tags+=../../../.tags
" set tags+=../../../../.tags
" set tags+=~/.vimtags
" set tags+=~/.vim_runtime/tags/cpp_tags

augroup setCompiler
    autocmd!
    autocmd FileType python compiler pylint
    autocmd FileType c compiler gcc
    autocmd FileType cpp compiler gcc
    autocmd FileType go compiler go
augroup END

set updatetime=1500

set number
set exrc
set secure

" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
" set noexpandtab

set cursorline
" set cursorcolumn

highlight CursorLine cterm=none ctermbg=236
" highlight CursorColumn cterm=none ctermbg=236

set splitbelow
set splitright

set history=500

filetype plugin on
filetype indent on

set autoread

set foldmethod=indent
set foldlevelstart=99
set foldnestmax=3
" set nofoldenable

set display+=lastline

set re=1

set scrolloff=1

let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set wildmenu
set wildmode=longest,full
set wildignorecase

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*,tags,TAGS,cscope.*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,tags,TAGS,cscope.*
endif

set ruler
set cmdheight=1
" set showmode
set showcmd

set hid

set backspace=eol,start,indent
set whichwrap+=<,>,[,]

set ignorecase
set smartcase
set hlsearch
set incsearch

set lazyredraw

set magic

set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set noerrorbells
set novisualbell
set t_vb=
" set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    augroup macBell
        autocmd!
        autocmd GUIEnter * set vb t_vb=
    augroup END
endif

" Add a bit extra margin to the left
set foldcolumn=1

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
" if $COLORTERM == 'gnome-terminal'
" set t_Co=256
" endif
if has('cursorshape')
    if &term =~ "xterm"
        let &t_SI = "\<Esc>[6 q"
        let &t_SR = "\<Esc>[4 q"
        let &t_EI = "\<Esc>[2 q"
    endif
endif

" set t_Co=256
if has('termguicolors')
    nnoremap <leader>tg :set invtermguicolors<cr>
endif

" let g:space_vim_dark_background = 234

augroup myColors
    autocmd!
    autocmd ColorScheme * hi LineNr     ctermbg=NONE guibg=NONE
    autocmd ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE
    autocmd ColorScheme * hi Comment    guifg=#5C6370 ctermfg=59
augroup END

try
    colorscheme space-vim-dark
catch
endtry

" hi Comment cterm=italic
" hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment    guifg=#5C6370 ctermfg=59

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 13
    elseif has("gui_gtk3")
        set guifont=Inconsolata\ 15
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Consolas\ 14
    endif
endif

" set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    " set t_Co=256
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
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
xnoremap * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <c-k> <C-w>p5<C-y><C-w>p
nnoremap <c-j> <C-w>p5<C-e><C-w>p
" inoremap <c-k> <Esc><C-w>p5<C-y><C-w>pi
" inoremap <c-j> <Esc><C-w>p5<C-e><C-w>pi

" Disable highlight when <leader>\ is pressed
nnoremap <leader><bs> :noh<cr>
nnoremap <leader><c-h> :noh<cr>

" Smart way to move between windows
nnoremap <s-j> <c-w>j
nnoremap <s-k> <c-w>k
nnoremap <s-h> <c-w>h
nnoremap <s-l> <c-w>l

nnoremap <leader>= <c-w>=
nnoremap <leader>+ :exe "resize +5"<cr>
nnoremap <leader>- :exe "resize -5"<cr>

" nnoremap <c-h> :bprevious<cr>
" nnoremap <c-l> :bnext<cr>
nnoremap <F3> :tabp<cr>
nnoremap <F4> :tabn<cr>

" Close the current buffer
" map <leader>bc :Bclose<cr>:tabclose<cr>gT
nnoremap <leader>bb :Bclose<cr>
" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

" Close all the buffers
nnoremap <leader>bd :bufdo bd<cr>
nnoremap <leader>bh :CloseHiddenBuffers<cr>
command! CloseHiddenBuffers call s:CloseHiddenBuffers()
function! s:CloseHiddenBuffers()
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr("$") + 1)
        if buflisted(num) && index(open_buffers, num) == -1
            exec "bdelete ".num
        endif
    endfor
endfunction

nnoremap <leader><tab> :bnext<cr>
nnoremap <leader><s-tab> :bprevious<cr>

" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <leader>t<leader> :tabnext<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nnoremap <leader>tl :exe "tabn ".g:lasttab<cr>
augroup tabLeave
    au!
    au TabLeave * let g:lasttab = tabpagenr()
augroup END

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
    " set switchbuf=useopen,usetab,newtab
    set switchbuf=useopen
    set stal=2
catch
endtry

augroup bufReadPost
    au!
    " Return to last edit position when opening files (You want this!)
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

" Always show the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Pressing ,ss will toggle and untoggle spell checking
" nnoremap <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" nnoremap <leader>sn ]s
" nnoremap <leader>sp [s
" nnoremap <leader>sa zg
" nnoremap <leader>s? z=

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>e :e! ~/.vim_runtime/my_config.vim<cr>
augroup vimConfig
    autocmd!
    autocmd bufwritepost ~/.vim_runtime/my_config.vim source ~/.vim_runtime/my_config.vim
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

" Bash like keys for the command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader><cr><cr> <Plug>(lsp-status)
nmap <leader><cr>a <Plug>(lsp-code-action)
nmap <leader><cr>f <Plug>(lsp-document-range-format)
nmap <leader><cr>F <Plug>(lsp-document-format)
nmap <leader><cr>d <Plug>(lsp-document-diagnostics)
nmap <leader><cr>1 <Plug>(lsp-peek-declaration)
nmap <leader><cr>q <Plug>(lsp-declaration)
nmap <leader><cr>2 <Plug>(lsp-peek-definition)
nmap <leader><cr>w <Plug>(lsp-definition)
nmap <leader><cr>3 <Plug>(lsp-peek-implementation)
nmap <leader><cr>e <Plug>(lsp-implementation)
nmap <leader><cr>h <Plug>(lsp-hover)
nmap <leader><cr>r <Plug>(lsp-references)
nmap <leader><cr>R <Plug>(lsp-rename)
nmap <leader><cr>t <Plug>(lsp-peek-type-definition)
nmap <leader><cr>T <Plug>(lsp-type-definition)
nmap <leader><cr>s <Plug>(lsp-document-symbol)
nmap <leader><cr>S <Plug>(lsp-workspace-symbol)
nmap <leader><cr>] <Plug>(lsp-next-error)
nmap <leader><cr>} <Plug>(lsp-next-reference)
nmap <leader><cr>[ <Plug>(lsp-previous-error)
nmap <leader><cr>{ <Plug>(lsp-previous-reference)
nmap <leader><cr>\ <Plug>(lsp-preview-focus)
nmap <leader><cr><bar> <Plug>(lsp-preview-close)
let g:lsp_diagnostics_echo_cursor = 1
augroup lspReg
    au!
    if executable('gopls')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'gopls',
                    \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
                    \ 'whitelist': ['go'],
                    \ })
        " autocmd BufWritePre *.go LspDocumentFormatSync
        autocmd FileType go setlocal omnifunc=lsp#complete
    endif
    if executable('pyls')
        " pip install python-language-server
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'pyls',
                    \ 'cmd': {server_info->['pyls']},
                    \ 'whitelist': ['python'],
                    \ })
        autocmd FileType python setlocal omnifunc=lsp#complete
    endif
    " if executable('clangd')
    "     au User lsp_setup call lsp#register_server({
    "                 \ 'name': 'clangd',
    "                 \ 'cmd': {server_info->['clangd', '-background-index']},
    "                 \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
    "                 \ })
    " endif
    if executable('bash-language-server')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'bash-language-server',
                    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
                    \ 'whitelist': ['sh'],
                    \ })
        " autocmd FileType sh setlocal omnifunc=lsp#complete
    endif
augroup END

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1

let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_DefaultNamespaces = ['std', '_GLIBCXX_STD']

imap <C-\> <Plug>(neosnippet_expand_or_jump)
smap <C-\> <Plug>(neosnippet_expand_or_jump)
xmap <C-\> <Plug>(neosnippet_expand_target)
" For conceal markers.
" if has('conceal')
"     set conceallevel=2 concealcursor=niv
" endif

augroup disableCmdwinMappings
    au!
    au CmdwinEnter [:>] iunmap <buffer> <Tab>
    au CmdwinEnter [:>] nunmap <buffer> <Tab>
augroup END

if has('lua')
    set completeopt=menuone,noselect
    inoremap <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>"<cr>
                \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>"<cr>
    inoremap <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n>
else
    set completeopt=menuone
    inoremap <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>\<lt>c-p>"<cr>
                \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>\<lt>c-p>"<cr>
    inoremap <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n><c-p>
endif
if (v:version > 801 || (v:version == 801 && has('patch1880'))) &&
            \ has('textprop')
    " set completeopt+=popup
    set previewpopup=height:10,width:60
endif
set pumheight=12

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.css = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:neocomplete#force_omni_input_patterns.html = '<[^>]*'
let g:neocomplete#force_omni_input_patterns.xml = '<[^>]*'
let g:neocomplete#force_omni_input_patterns.markdown = '<[^>]*'
let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
let g:neocomplete#force_omni_input_patterns.xml = '<[^>]*'
let g:neocomplete#force_omni_input_patterns.php = '[^. \t]->\h\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.go = '[^.[:digit:] *\t]\.\w*'
let g:neocomplete#force_omni_input_patterns.python = '[^. \t]\.\w*'
let g:neocomplete#force_omni_input_patterns.java = '\%(\h\w*\|)\)\.\w*'

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
" let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
" let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
" let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'
" let g:neocomplete#sources#omni#input_patterns.python = '[^. \t]\.\w*'

if has('lua')
    let g:neocomplete#enable_auto_close_preview = &completeopt =~# 'preview' ? 1 : 0
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#sources#dictionary#dictionaries = {
                \ 'default' : '',
                \ 'vimshell' : $HOME.'/.vimshell_hist',
                \ 'scheme' : $HOME.'/.gosh_completions'
                \ }
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#sources#tags#cache_limit_size = 10 * 1024 * 1024
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
    let g:neocomplete#fallback_mappings =
                \ ["\<C-x>\<C-o>", "\<C-x>\<C-n>"]
    inoremap <expr><C-g> neocomplete#undo_completion()
    inoremap <expr><C-l> neocomplete#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? "\<C-y>" : "\<CR>"
    endfunction
    " <TAB>: completion.
    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
    inoremap <expr><down> pumvisible() ? "\<C-n>" : "\<down>"
    inoremap <expr><up> pumvisible() ? "\<C-p>" : "\<up>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<BS>"
    " Enable heavy omni completion.

    try
        call neocomplete#custom#source('_', 'converters',
                    \ ['converter_remove_overlap', 'converter_remove_last_paren',
                    \  'converter_abbr'])
    catch
    endtry
else
    let g:neocomplcache_enable_auto_close_preview = &completeopt =~# 'preview' ? 1 : 0
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_smart_case = 1
    let g:neocomplcache_enable_underbar_completion = 0
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_tags_caching_limit_file_size = 10 * 1024 * 1024
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    " let g:neocomplcache_enable_auto_select = 1
    " let g:neocomplcache_disable_auto_complete = 1

    inoremap <expr><C-g> neocomplcache#undo_completion()
    inoremap <expr><C-l> neocomplcache#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        " return neocomplcache#smart_close_popup() . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
    endfunction

    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
    inoremap <expr><down> pumvisible() ? "\<C-n>" : "\<down>"
    inoremap <expr><up> pumvisible() ? "\<C-p>" : "\<up>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplcache#smart_close_popup()."\<BS>"
    " inoremap <expr><C-y> neocomplcache#close_popup()
    " inoremap <expr><C-e> neocomplcache#cancel_popup()
    " Close popup by <Space>.
    " inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
    inoremap <expr><C-j> neocomplcache#start_manual_complete()
    inoremap <expr><C-k> neocomplcache#cancel_popup()

    " Enable heavy omni completion.
    if !exists('g:neocomplcache_force_omni_patterns')
        let g:neocomplcache_force_omni_patterns = g:neocomplete#force_omni_input_patterns
    endif

    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = g:neocomplete#sources#omni#input_patterns
    endif
endif

let g:echodoc_enable_at_startup = 1
if has('nvim') && exists('*nvim_open_win')
    let g:echodoc#type = 'floating'
else
    set noshowmode
endif

" autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 30
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nb :NERDTreeFromBookmark<space>
nnoremap <leader>nf :NERDTreeFocus<cr>
nnoremap <leader>nF :NERDTreeFind<cr>
nnoremap <leader>nv :NERDTreeVCS<cr>
nnoremap <leader>nc :NERDTreeCWD<cr>
nnoremap <leader>nr :NERDTreeRefreshRoot<cr>
nnoremap <leader>nm :NERDTreeMirror<cr>
augroup closeNERDTreeBuffer
    autocmd!
    autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
augroup END

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-f>'
nnoremap <leader>pp :CtrlP<cr>
nnoremap <leader>pw :CtrlPCurFile<cr>
nnoremap <leader>pW :CtrlPCurWD<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pt :CtrlPTag<cr>
nnoremap <leader>pl :CtrlPLine<cr>
nnoremap <leader>pL :CtrlPLastMode<cr>
nnoremap <leader>pq :CtrlPQuickfix<cr>
nnoremap <leader>pr :CtrlPRTS<cr>
nnoremap <leader>pm :CtrlPMRU<cr>
nnoremap <leader>pM :CtrlPMixed<cr>
nnoremap <leader>pu :CtrlPUndo<cr>
nnoremap <leader>pC :CtrlPChange<cr>
nnoremap <leader>pd :CtrlPDir<cr>

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

nnoremap <leader>pf :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <leader>pF :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_multi_buffers = 1

if has('python') || has('python3')
    nnoremap <leader>pc :CtrlPCmdPalette<cr>
    nnoremap <c-p> :CtrlPCmdPalette<cr>
endif
" nnoremap <leader>pc :CtrlPCommandPalette<cr>
" nnoremap <c-p> :CtrlPCommandPalette<cr>

let g:gitgutter_enabled=1
nnoremap <leader>hh :GitGutterToggle<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gB :Gbrowse<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gC :Git checkout<space>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gD :Gdelete<cr>
nnoremap <leader>gg :Ggrep<space>
nnoremap <leader>gm :Gmerge<space>
nnoremap <leader>gM :Gmove<space>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gL :Glog!<cr>
nnoremap <leader>gh :0Glog<cr>
nnoremap <leader>gH :0Glog!<cr>
nnoremap <leader>gf :Gfetch<cr>
nnoremap <leader>gp :Gpush<cr>
nnoremap <leader>gP :Gpull<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gS :Git stash<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gR :Gremove<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gi :Gist<cr>

let g:yankstack_yank_keys = ['y', 'd']
nmap <F9> <Plug>yankstack_substitute_older_paste
nmap <F10> <Plug>yankstack_substitute_newer_paste
imap <F9> <Plug>yankstack_substitute_older_paste
imap <F10> <Plug>yankstack_substitute_newer_paste

let g:tagbar_width = 30
let g:tagbar_compact = 1
nnoremap <leader>tt :TagbarToggle<cr>
nnoremap <leader>ta :TagbarOpenAutoClose<cr>

nnoremap <leader>rr :AsyncRun<space>
nnoremap <leader>rs :AsyncStop<cr>
" let g:asyncrun_bell = 1
" map <leader>q :call asyncrun#quickfix_toggle(8)<cr>
let g:asyncrun_open = 10
let g:asyncrun_save = 2
let g:asyncrun_auto = "make"

let g:fzf_command_prefix = 'FZF'
" Mapping selecting mappings
" nmap <c-b> <plug>(fzf-maps-n)
" xmap <c-b> <plug>(fzf-maps-x)
" omap <c-b> <plug>(fzf-maps-o)
" nnoremap <c-c> :FzfCommand<cr>
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter'
" nnoremap <c-n> :FZFCommands<cr>
nnoremap <leader>zz :FZFFiles<cr>
nnoremap <leader>zg :FZFGFiles<cr>
nnoremap <leader>zG :FZFGFiles?<cr>
nnoremap <leader>zf :FZFFiles<cr>
nnoremap <leader>zF :FZFFiletypes<cr>
nnoremap <leader>zb :FZFBuffers<cr>
nnoremap <leader>zc :FZFCommands<cr>
nnoremap <leader>zC :FZFColors<cr>
nnoremap <leader>zC :FZFColors<cr>
nnoremap <leader>za :FZFAg<cr>
nnoremap <leader>zr :FZFRg<cr>
nnoremap <leader>zl :FZFLines<cr>
nnoremap <leader>zL :FZFBLines<cr>
nnoremap <leader>zt :FZFTags<cr>
nnoremap <leader>zT :FZFBTags<cr>
nnoremap <leader>zm :FZFMarks<cr>
nnoremap <leader>zw :FZFWindows<cr>
nnoremap <leader>zh :FZFHistory<cr>
nnoremap <leader>zH :FZFHelptags<cr>
nnoremap <leader>zs :FZFSnippets<cr>

nmap <c-_> <Plug>CommentaryLine
vmap <c-_> <Plug>Commentary
augroup commentStr
    autocmd!
    autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
augroup END

let g:gutentags_define_advanced_commands = 1
let g:gutentags_ctags_extra_args = ['--sort=yes', '--c++-kinds=+p', '--fields=+ialS', '--extra=+q']
let g:gutentags_cache_dir = '~/.vim_gutentags'

" let g:easytags_include_members = 1
" let g:easytags_async = 1
" let g:easytags_opts = ['--sort=yes', '--c++-kinds=+p', '--fields=+iaS', '--extra=+q']

let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
" let g:airline_symbols_ascii = 1
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

let g:goyo_width = '80%'
let g:goyo_height = '95%'
nnoremap <leader>\ :Goyo<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <c-g> :Grepper<cr>
if !exists('g:grepper')
    let g:grepper = {}
endif
let g:grepper.prompt_mapping_tool = '<c-g>'

nnoremap <leader>ff :FlyGrep<cr>

" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
" nnoremap <leader>i :IndentGuidesToggle<cr>

let g:better_whitespace_ctermcolor = '63'
let g:better_whitespace_guicolor = '#5f5fff'
let g:better_whitespace_operator = 'gb'

nnoremap <leader>x :Sayonara<cr>
nnoremap <leader>X :Sayonara!<cr>

let g:EasyMotion_do_mapping = 1

let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle
nnoremap <leader>rb :RainbowToggle<cr>

nnoremap <leader>uu :UndotreeToggle<cr>
nnoremap <leader>uf :UndotreeFocus<cr>
nnoremap <leader>us :UndotreeShow<cr>
nnoremap <leader>uh :UndotreeHide<cr>
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

nnoremap <leader>mm :MarkifyToggle<cr>
nnoremap <leader>mk :Markify<cr>
nnoremap <leader>mc :MarkifyClear<cr>
" let g:markify_echo_current_message = 1

nnoremap <leader>aw :ArgWrap<cr>
augroup setArgWrap
    au!
    au FileType go let b:argwrap_tail_comma = 1
    au FileType vim let b:argwrap_line_prefix = '\ '
augroup END

nmap <c-right> <Plug>(cosco-commaOrSemiColon)
imap <c-right> <esc><Plug>(cosco-commaOrSemiColon)
nmap <c-down> <Plug>(cosco-commaOrSemiColon)o
imap <c-down> <esc><Plug>(cosco-commaOrSemiColon)o
" nmap <c-space> <Plug>(cosco-commaOrSemiColon)o
" imap <c-space> <esc><Plug>(cosco-commaOrSemiColon)o

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap <leader>fm :Neoformat<cr>

let g:startify_change_to_vcs_root = 1
let g:startify_custom_indices = map(range(0,99), 'printf("%02d", v:val)')
let g:startify_custom_header = [
            \ '            __',
            \ '    __  __ /\_\    ___ ___',
            \ '   /\ \/\ \\/\ \ /'' __` __`\',
            \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \',
            \ '    \ \___/  \ \_\ \_\ \_\ \_\',
            \ '     \/__/    \/_/\/_/\/_/\/_/',
            \ ]
nnoremap <leader>st :Startify<cr>

if exists(':terminal')
    nnoremap <F12> :Nuake<CR>
    tnoremap <F12> <C-w>:Nuake<CR>
endif

