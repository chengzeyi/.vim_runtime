set encoding=utf8

filetype plugin on
filetype indent on

set notimeout
" set timeoutlen=2000
set ttimeout
set ttimeoutlen=20

" set shortmess=a

set mouse=a
if exists('+ttymouse')
    if has('mouse_sgr')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif
set mousemodel=popup_setpos

set tags+=./tags; tags+=./TAGS;
" set tags+=./.tags
" set tags+=../.tags
" set tags+=../../.tags
" set tags+=../../../.tags
" set tags+=../../../../.tags
" set tags+=~/.vimtags
" set tags+=~/.vim_runtime/tags/cpp_tags

set updatetime=200

" Rsetting this can cause highlight issues
" set background=dark

if has('patch-8.1.1564')
    set signcolumn=number
endif
set number
if has('patch-7.3.787')
    set relativenumber
endif

set exrc
set secure

set cursorline
" set cursorcolumn

set splitbelow
set splitright

set history=500

set autoread

set foldmethod=indent
set foldlevelstart=99
" set foldnestmax=3
" set nofoldenable
" set foldcolumn=1

set display+=lastline

set re=1

set scrolloff=1

let $LANG='en'
set langmenu=en

" set spelllang=en_gb

set wildmenu
set wildmode=longest,full
set wildignorecase
if has('menu')
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    set wcm=<F11>
    map <F11> :emenu <F11>
endif

set wildignore=*.o,*~,*.pyc
if has('win16') || has('win32')
    set wildignore+=.git\*,.hg\*,.svn\*,tags,TAGS,cscope.*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,tags,TAGS,cscope.*
endif

set ruler
set cmdheight=1
set showmode
set noshowcmd

set hid

set backspace=eol,start,indent
set whichwrap+=<,>,[,]

set virtualedit=block

set ignorecase
set smartcase
set gdefault
set hlsearch
set incsearch

if has('nvim')
    set inccommand=split
endif

set lazyredraw

set magic

set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set belloff=all

" set noerrorbells
" set novisualbell
" set t_vb=

set fillchars=vert:│,fold:-
" let &showbreak = "\u21aa "
let &showbreak = '↪ '
set listchars=tab:→\ ,nbsp:␣,trail:·,extends:⟩,precedes:⟨
if has('patch-7.4.710')
    set listchars+=space:·
endif
" set listchars=tab:>-,trail:~,extends:>,precedes:<
" set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list

" Enable syntax highlighting
if !exists('g:syntax_on')
    syntax enable
endif

" Enable 256 colors palette in Gnome Terminal
" if $COLORTERM == 'gnome-terminal'
" set t_Co=256
" endif
" if !has('nvim') && has('cursorshape') && &term =~? 'xterm'
"     let &t_SI = "\<Esc>]6 q"
"     let &t_SR = "\<Esc>]4 q"
"     let &t_EI = "\<Esc>]2 q"
" endif

set t_Co=256

if has('termguicolors')
    set termguicolors
endif

" Use Unix as the standard file type
" set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set nojoinspaces

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=-1

set cink+=*<Return>
set cino+=l1,g0,N-s,E-s,(0

set indentkeys+=*<Return>

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set lbr

if has('patch-7.4.338')
    set breakindent
endif

" Specify the behavior when switching between buffers
" set switchbuf=useopen,usetab,newtab
set switchbuf=useopen
set stal=1

" Always show the status line
set laststatus=2
set statusline=%f%m%=%y\ %{&fenc?&fenc:&enc}\[%{&ff}\]\ %p%%\ %l:%c

if has('persistent_undo')
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
endif

if has('patch-7.4.775')
    set completeopt=menuone,noinsert,noselect
else
    set completeopt=menuone,noinsert
endif
if has('patch-8.1.1882') && has('textprop')
    set completeopt+=popup
    set completepopup=height:15,width:30,align:menu,border:off
endif
set pumheight=12

" if has('patch-8.1.1714') && has('textprop')
"     set previewpopup=height:15,width:60
" endif
set previewheight=6

" if has('conceal')
"     set conceallevel=2 concealcursor=nc
" endif

if has('balloondelay')
    set balloondelay=200
endif
if has('balloon_eval_term')
    set balloonevalterm
endif
if has('balloon_eval')
    " Returns either the contents of a fold or spelling suggestions.
    function! BalloonExpr() abort
        let foldStart = foldclosed(v:beval_lnum )
        let foldEnd = foldclosedend(v:beval_lnum)
        let lines = []
        if foldStart < 0
            " We're not in a fold.
            " If 'spell' is on and the word pointed to is incorrectly spelled,
            " the tool tip will contain a few suggestions.
            let suggestions = spellsuggest(spellbadword(v:beval_text)[0], 5, 0)
            if empty(suggestions)
                let lines = ['[' . v:beval_lnum . ', ' . v:beval_col . '] ' . synIDattr(synID(v:beval_lnum, v:beval_col, 0), 'name')]
            else
                let lines = suggestions
            endif
        else
            let numLines = foldEnd - foldStart + 1
            " Up to 31 lines get shown okay; beyond that, only 30 lines are shown with
            " ellipsis in between to indicate too much. The reason why 31 get shown ok
            " is that 30 lines plus one of ellipsis is 31 anyway.
            if (numLines > 31)
                let lines = getline(foldStart, foldStart + 14)
                let lines += ['-- Snipped ' . (numLines - 30) . ' lines --']
                let lines += getline(foldEnd - 14, foldEnd)
            else
                let lines = getline(foldStart, foldEnd)
            endif
        endif
        return join(lines, has('balloon_multiline') ? "\n" : ' ')
    endfunction
    set balloonexpr=BalloonExpr()
endif

if has('cscope')
    set csverb
    " set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-,a-
endif

set pastetoggle=<F2>

let mapleader = ' '
let maplocalleader = '\'

" let g:vimsyn_embed = 'lmpPrt'
" let g:vimsyn_folding = 'aflmpPrt'

" let g:markdown_folding = 1
" let g:markdown_syntax_conceal = 0

let g:tex_flavor = 'latex'

" let g:vim_json_conceal = 0

let g:java_highlight_all = 1
let g:java_highlight_functions = 1

let g:netrw_liststyle = 1
