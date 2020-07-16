set encoding=utf8

filetype plugin on
filetype indent on

set sessionoptions-=folds

set notimeout
" set timeoutlen=2000
set ttimeout
set ttimeoutlen=20

set shortmess+=atT

" Setting this instead of nvi makes VIM more compatible with aweful terminals
set mouse=nvi
if exists('+ttymouse')
    if has('mouse_sgr')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif
" set mousemodel=popup_setpos

" set path+=**

set tags+=./tags;
" set tags+=./.tags
" set tags+=../.tags
" set tags+=../../.tags
" set tags+=../../../.tags
" set tags+=../../../../.tags
" set tags+=~/.vimtags
" set tags+=~/.vim_runtime/tags/cpp_tags
set tagcase=match

set showfulltag

set updatetime=200

" Rsetting this can cause highlight issues
" set background=dark

set number
" if has('patch-7.3.787')
"     set relativenumber
" endif
if has('patch-8.1.1564')
    set signcolumn=number
endif

set exrc
set secure

set cursorline
" set cursorcolumn

set splitbelow
set splitright

set history=500

set autoread

" function! TSIndent(line)
"     return strlen(matchstr(a:line, '\V\^\s\+'))
" endfunction

function! MyFoldExpr()
    let cline = getline(v:lnum)
    if empty(cline)
        return -1
    endif
    let nline = getline(v:lnum + 1)
    let shiftwidth = &shiftwidth
    let ind = (indent(v:lnum) + shiftwidth - 1) / shiftwidth
    let indNext = (indent(v:lnum + 1) + shiftwidth - 1) / shiftwidth
    return (ind < indNext) ? ('>' . (indNext)) : ind
endfunction

function! MyFoldText()
    " Foldtext ignores tabstop and shows tabs as one space,
    " so convert tabs to 'tabstop' spaces so text lines up
    let ts = repeat(' ', &tabstop)
    let fline = substitute(getline(v:foldstart), '\V\t', ts, 'g')
    let numLines = v:foldend - v:foldstart + 1
    let numLinesStr = ' [' . numLines . ' lines]'
    return fline . numLinesStr
endfunction

set foldmethod=expr
set foldtext=MyFoldText()
set foldexpr=MyFoldExpr()
set foldlevelstart=99
" set foldnestmax=3
" set nofoldenable
" set foldcolumn=1

set display+=lastline

" set re=1

set scrolloff=1

" let $LANG='en'
" set spelllang=en_gb
if v:version > 704 || (v:version == 704 && has('patch88'))
    set spelllang+=cjk
endif

if filereadable('/usr/share/dict/words')
    set dictionary+=/usr/share/dict/words
endif

set wildmenu
set wildmode=longest,full
set wildignorecase
" if has('menu')
"     " set langmenu=en
"     source $VIMRUNTIME/delmenu.vim
"     source $VIMRUNTIME/menu.vim
"     set wcm=<F11>
"     map <F11> :emenu <F11>
" endif

set wildignore=*.o,*.obj,*~,*.pyc
if has('win16') || has('win32')
    set wildignore+=.git\*,.hg\*,.svn\*,tags,TAGS,cscope.*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,tags,TAGS,cscope.*
endif

set ruler
set cmdheight=1
set showmode
set showcmd

set hid

set backspace+=eol,start,indent
" set whichwrap+=<,>,[,],h,l

set virtualedit+=block

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

set belloff=
set novisualbell
set noerrorbells

if has('nvim-0.3.1')
    let &fillchars = 'eob: '
else
    set fillchars=
endif
set fillchars+=vert:│,fold:-
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

" set t_Co=256

if has('termguicolors')
    set termguicolors
endif

" Use Unix as the standard file type
" set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set formatoptions+=tcromMqj

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
set sidescroll=1
set sidescrolloff=1
set lbr

if has('patch-7.4.338')
    set breakindent
endif

" Specify the behavior when switching between buffers
set switchbuf=useopen
if has('patch-8.1.2315') || has('nvim-0.5.0')
    set switchbuf+=uselast
endif
set stal=1

" Always show the status line
set laststatus=2
set statusline=%f%m\ %{StatuslineExtra('left')}%=%{StatuslineExtra('right')}\ Ln\ %3l/%L\ Col\ %2c\ [%p%%]\ %{fnamemodify(getcwd(),':~')}\ %y\ %{&fenc?&fenc:&enc}\[%{&ff}\]

function! StatuslineExtra(dir) abort
    let statusline_extra = get(g:, 'statusline_extra_' . a:dir, [])
    if empty(statusline_extra)
        return ''
    endif
    try
        let status = call(statusline_extra[0], statusline_extra[1])
    catch
        return ''
    endtry
    if empty(status)
        return ''
    endif
    return '[' . status . ']'
endfunction

if has('persistent_undo')
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
endif

if has('diff')
    if has('patch-8.1.0360') || has('nvim-0.3.2')
        set diffopt=filler,internal,indent-heuristic,algorithm:histogram
    endif
endif

set completeopt-=preview
set completeopt+=menuone
" if has('patch-7.4.775')
"     set completeopt+=noinsert,noselect
" endif
if has('patch-8.1.1882') && has('textprop')
    set completeopt+=popup
    set completepopup=height:20,width:80,align:menu,border:off
endif
set pumheight=12
" if has('nvim-0.4.0')
"     set pumblend=15
"     augroup MyPumBlend
"         autocmd!
"         autocmd ColorScheme * hi PmenuSel blend=0
"     augroup END
" endif

if has('patch-8.1.1714') && has('textprop')
    set previewpopup=height:15,width:80
endif
set previewheight=10

if has('conceal')
    " set conceallevel=2 concealcursor=nc
    set concealcursor=nc
endif

" if has('balloondelay')
"     set balloondelay=200
" endif
" if has('balloon_eval_term')
"     set balloonevalterm
" endif
" if has('balloon_eval')
"     " Returns either the contents of a fold or spelling suggestions.
"     function! BalloonExpr() abort
"         let foldStart = foldclosed(v:beval_lnum )
"         let foldEnd = foldclosedend(v:beval_lnum)
"         let lines = []
"         if foldStart < 0
"             " We're not in a fold.
"             " If 'spell' is on and the word pointed to is incorrectly spelled,
"             " the tool tip will contain a few suggestions.
"             let suggestions = spellsuggest(spellbadword(v:beval_text)[0], 5, 0)
"             if empty(suggestions)
"                 let lines = ['[' . v:beval_lnum . ':' . v:beval_col . '] ' . synIDattr(synID(v:beval_lnum, v:beval_col, 0), 'name')]
"             else
"                 let lines = suggestions
"             endif
"         else
"             let numLines = foldEnd - foldStart + 1
"             " Up to 31 lines get shown okay; beyond that, only 30 lines are shown with
"             " ellipsis in between to indicate too much. The reason why 31 get shown ok
"             " is that 30 lines plus one of ellipsis is 31 anyway.
"             if (numLines > 31)
"                 let lines = getline(foldStart, foldStart + 14)
"                 let lines += ['-- Snipped ' . (numLines - 30) . ' lines --']
"                 let lines += getline(foldEnd - 14, foldEnd)
"             else
"                 let lines = getline(foldStart, foldEnd)
"             endif
"         endif
"         return join(lines, has('balloon_multiline') ? "\n" : ' ')
"     endfunction
"     set balloonexpr=BalloonExpr()
" endif

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

let java_highlight_all = 1
let java_highlight_functions = 'style'

let g:netrw_liststyle = 1

" if exists('!!:packadd')
"     packadd! justify
" endif
