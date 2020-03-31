set encoding=utf8

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

if has('nvim') && exists('#UIEnter')
    augroup MyUIEnter
        autocmd!
        autocmd UIEnter * call SetNeovimGui()
    augroup END
endif
function! SetNeovimGui() abort
    if exists('g:fvim_loaded')
        try
            FVimCursorSmoothMove 1
            FVimCursorSmoothBlink 1
        catch
        endtry
        nnoremap <silent> <S-Up> :set guifont=+<CR>
        nnoremap <silent> <S-Down> :set guifont=-<CR>
        nnoremap <A-CR> :FVimToggleFullScreen<CR>
    elseif exists('g:GuiLoaded')
        try
            GuiTabline 0
            GuiPopupmenu 0
        catch
        endtry
        nnoremap <S-Up> :call GuiFont(substitute(g:GuiFont, ':h\zs\d\+', '\=eval(submatch(0) + 1)', 'g'))<cr>
        nnoremap <S-Down> :call GuiFont(substitute(g:GuiFont, ':h\zs\d\+', '\=eval(submatch(0) > 1 ? submatch(0) - 1 : submatch(0))', 'g'))<cr>
    endif
endfunction

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

set updatetime=250

set background=dark

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
set foldnestmax=3
" set nofoldenable
set foldcolumn=1
" au FileType c,cpp,go setlocal foldmethod=syntax

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
set listchars=tab:→\ ,nbsp:·,trail:·,extends:⟩,precedes:⟨
" if has('patch-7.4.710')
"     set listchars+=space:·
" endif
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
augroup MyFileTypeExpandTab
    autocmd!
    au FileType go set noexpandtab
augroup END
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

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
    set completepopup=height:15,width:30,align:menu
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

augroup MyFileType
    autocmd!
    autocmd FileType c,cpp,cs,java,json setlocal commentstring=//\ %s
    autocmd FileType json syntax match Comment +\/\/.\+$+
    if has('python3') || has('python')
        autocmd Filetype python compiler pylint
    endif
    autocmd FileType c compiler gcc
    autocmd FileType cpp compiler gcc
    autocmd FileType go compiler go
augroup END

if has('nvim')
    augroup NeovimTerminal
        autocmd!
        autocmd TermOpen * startinsert
        autocmd TermOpen * set nonumber
        autocmd TermOpen * set foldcolumn=0
        if has('patch-7.3.787')
            autocmd TermOpen * set norelativenumber
        endif
        " autocmd TermClose *
        "             \ if expand('<afile>') !~# 'fzf' && expand('<afile>') !~# 'coc' |
        "             \     bdelete! |
        "             \ endif
    augroup END
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

inoremap <c-a> <home>
" inoremap <c-e> <end>
" inoremap <c-k> <end><c-u>

" Bash like keys for the command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
if v:version >= 600
    cnoremap <C-K> <End><C-U>
else
    cnoremap <C-K> <C-U>
endif

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

function! MapMotion(from, ...) abort
    let from = a:from
    let to = a:0 == 0 ? a:from : a:1
    exec 'noremap <expr> ' . from . ' v:count == 0 ? "g' . to . '" : "' . to . '"'
    exec 'noremap <expr> g' . from . ' v:count == 0 ? ' . '"' . to . '" : "' '"g' . to . '"'
endfunction
call MapMotion('j')
call MapMotion('k')
" call MapMotion('0', '^')
" call MapMotion('^', '0')
" call MapMotion('$')
nnoremap 0 ^
xnoremap 0 ^
onoremap 0 ^
nnoremap ^ 0
xnoremap ^ 0
onoremap ^ 0
nnoremap Q @q
xnoremap Q @q
" noremap M `m
nnoremap Y y$
xnoremap Y y$

nnoremap <leader><bar> :vs<cr>
nnoremap <leader><bslash> :sp<cr>

nnoremap <leader>en :enew<cr>

nnoremap <leader>oo :set scrolloff=<c-r>=&scrolloff == 1 ? 999 : 1<cr><cr>
nnoremap <leader>oj :set scrolljump=<c-r>=&scrolljump == 1 ? 5 : 1<cr><cr>
nnoremap <leader>ot :set ttyscroll=<c-r>=&ttyscroll == 999 ? 5 : 999<cr><cr>
nnoremap <leader>om :set mouse=<c-r>=&mouse == '' ? 'a' : ''<cr><cr>
nnoremap <leader>of :set foldcolumn=<c-r>=&foldcolumn == 0 ? 1 : 0<cr><cr>
if has('patch-8.1.1564')
    nnoremap <leader>os :set signcolumn=<c-r>=&signcolumn == 'no' ? 'number' : 'no'<cr><cr>
else
    nnoremap <leader>os :set signcolumn=<c-r>=&signcolumn == 'no' ? 'auto' : 'no'<cr><cr>
endif
if has('patch-7.3.787')
    nnoremap <leader>or :set invrelativenumber<cr>
endif
nnoremap <leader>on :set invnumber<cr>
if has('termguicolors')
    nnoremap <leader>og :set invtermguicolors<cr>
endif
nnoremap <leader>ow :set textwidth=<c-r>=&textwidth == 0 ? 79 : 0<cr><cr>

" nnoremap <c-]> g<c-]>
" nnoremap g<c-]> <c-]>
" xnoremap <c-]> g<c-]>
" xnoremap g<c-]> <c-]>
" nnoremap <c-w><c-]> <c-w>g<c-]>
" nnoremap <c-w>g<c-]> <c-w><c-]>
" xnoremap <c-w><c-]> <c-w>g<c-]>
" xnoremap <c-w>g<c-]> <c-w><c-]>
" nnoremap g<LeftMouse> g<c-]>
" nnoremap <C-LeftMouse> g<c-]>

if exists(':terminal')
    tnoremap <F1> <c-\><c-n>
    if has('nvim')
        nnoremap <leader>is :split +terminal<cr>
        nnoremap <leader>iv :vert terminal<cr>
        nnoremap <leader>it :tab terminal<cr>
        nnoremap <leader>iw :terminal<cr>
    else
        nnoremap <leader>is :terminal<cr>
        nnoremap <leader>iS :terminal ++close<space>
        nnoremap <leader>iv :vert terminal<cr>
        nnoremap <leader>iV :vert terminal ++close<space>
        nnoremap <leader>it :tab terminal<cr>
        nnoremap <leader>iT :tab terminal ++close<space>
        nnoremap <leader>iw :terminal ++curwin<cr>
        nnoremap <leader>iW :terminal ++curwin ++close<space>
    endif
endif

nnoremap [I [I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."[\t"<Bar>endif<CR>
nnoremap ]I ]I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."]\t"<Bar>endif<CR>
nnoremap [D [I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."[\<lt>c-d>"<Bar>endif<CR>
nnoremap ]D ]I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."]\<lt>c-d>"<Bar>endif<CR>

xnoremap if :<C-U>silent! normal! [zjV]zk<CR>
onoremap if :normal Vif<CR>
xnoremap af :<C-U>silent! normal! [zV]z<CR>
onoremap af :normal Vaf<CR>
" nnoremap <leader>mm :match Question /<bslash><lt><c-r>=expand('<lt>cword>')<cr><bslash>>/<cr>
" nnoremap <leader>mM :match<cr>
nnoremap <leader>jj :call GotoJump()<cr>
nnoremap <leader>jt :call GotoTag()<cr>
nnoremap <leader>js :tselect<cr>
function! GotoJump() abort
    redraw!
    jumps
    let j = input('Please select your jump ([count]j|k): ')
    if j =~# '\v[0-9]+j'
        execute 'normal! ' . j[0:-2] . "\<c-i>"
    elseif j =~# '\v[0-9]+k'
        execute 'normal! ' . j[0:-2] . "\<c-o>"
    endif
endfunction
function! GotoTag() abort
    redraw!
    tags
    let j = input('Please select your tag ([count]j|k): ')
    if j =~# '\v[0-9]+j'
        execute j[0:-2] . 'tag'
    elseif j =~# '\v[0-9]+k'
        execute j[0:-2] . 'pop'
    endif
endfunction
nnoremap <leader>? :call LookUpMap(1, '', '')<cr>
nnoremap <leader>/ :call LookUpMap(1, '', '<lt>leader>')<cr>
nnoremap <localleader>? :map <lt>localleader><cr>
nnoremap <localleader>/ :call LookUpMap(1, '', '<lt>localleader>')<cr>
function! LookUpMap(count, mode, prefix)
    let cmd = a:mode . 'map ' . a:prefix
    let cnt = 0
    while cnt < a:count
        let cnt += 1
        let ch = getchar()
        if ch =~# '\v[0-9]+'
            let rawkey = nr2char(ch)
            if rawkey ==# ' '
                let cmd .= '<space>'
            elseif rawkey =~# '\v[0-9]'
                let cmd .= rawkey
            else
                let cmd .= "\<c-v>" . rawkey
            endif
        else
            let cmd .= ch
        endif
    endwhile
    execute cmd
endfunction

nnoremap <leader>w :w<cr>
nnoremap <leader>W :wa<cr>
nnoremap <leader>x :q<cr>
nnoremap <leader>X :qa<cr>

nnoremap <leader>" :registers<CR>
nnoremap <leader>@ :registers<CR>
inoremap <c-r> <c-r>="\<lt>c-r>" . BetterRegister()<cr>
if exists(':terminal')
    if !has('nvim')
        tnoremap <expr> <c-w>" "\<lt>c-w>\"" . BetterRegister()
    endif
endif
nnoremap <expr> " '"' . BetterRegister()
nnoremap <expr> @ '@' . BetterRegister()
xnoremap <expr> " '"' . BetterRegister()
xnoremap <expr> @ '@' . BetterRegister()
function! BetterRegister()
    let more = &more
    set nomore
    redraw!
    registers
    echohl Question | echon "\nPlease press the register name" | echohl None
    let &more = more
    while 1
        let ch = getchar()
        if ch !~# '\v[0-9]+'
            continue
        else
            redraw!
            return nr2char(ch)
        endif
    endwhile
endfunction
nnoremap <leader>' :marks<CR>
nnoremap <leader>` :marks<CR>
nnoremap <expr> ' "'" . BetterMark()
nnoremap <expr> ` '`' . BetterMark()
xnoremap <expr> ' "'" . BetterMark()
xnoremap <expr> ` '`' . BetterMark()
function! BetterMark()
    let more = &more
    set nomore
    redraw!
    marks
    echohl Question | echon "\nPlease press the mark name" | echohl None
    let &more = more
    while 1
        let ch = getchar()
        if ch !~# '\v[0-9]+'
            continue
        else
            redraw!
            return nr2char(ch)
        endif
    endwhile
endfunction

inoremap <F1> <C-O>za
nnoremap <F1> za
onoremap <F1> <C-C>za
vnoremap <F1> zf
nnoremap <leader>ff :let @/='\<lt><c-r>=expand('<lt>cword>')<cr>\>' <bar> set hls<cr>
nnoremap <leader>fF :let @/='\<lt><c-r>=expand('<lt>cWORD>')<cr>\>' <bar> set hls<cr>
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
nnoremap <leader>f= :set foldlevel=<c-r>=&foldlevel == 99 ? 0 : 99<cr><cr>
nnoremap <leader>f/ :setlocal foldexpr=getline(v:lnum)=~@/?0:1 foldmethod=
            \<c-r>=&foldmethod == 'expr' ? 'indent' : 'expr'<cr> foldlevel=
            \<c-r>=&foldmethod == 'expr' ? 99 : 0<cr><cr>
xnoremap <expr> . expand('<lt>cword>') =~# '[(){}\[\]]' ? 'a'.expand('<lt>cword>') : ':<c-u>silent! normal! [zV]z<cr>'

" Changes to allow blank lines in blocks, and
" Top level blocks (zero indent) separated by two or more blank lines.
" Usage: source <thisfile> in pythonmode and
" Press: vai, vii to select outer/inner python blocks by indetation.
" Press: vii, yii, dii, cii to select/yank/delete/change an indented block.
onoremap ai :<C-u>call IndTxtObj(0)<CR>
onoremap ii :<C-u>call IndTxtObj(1)<CR>
xnoremap ai <Esc>:call IndTxtObj(0)<CR><Esc>gv
xnoremap ii <Esc>:call IndTxtObj(1)<CR><Esc>gv
function! IndTxtObj(inner) abort
    let curcol = col('.')
    let curline = line('.')
    let lastline = line('$')
    let i = indent(line('.'))
    if getline('.') !~ "^\\s*$"
        let p = line('.') - 1
        let pp = line('.') - 2
        let nextblank = getline(p) =~ "^\\s*$"
        let nextnextblank = getline(pp) =~ "^\\s*$"
        while p > 0 && ((i == 0 && (!nextblank || (pp > 0 && !nextnextblank))) ||
                    \ (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
            -
            let p = line('.') - 1
            let pp = line('.') - 2
            let nextblank = getline(p) =~ "^\\s*$"
            let nextnextblank = getline(pp) =~ "^\\s*$"
        endwhile
        normal! 0V
        call cursor(curline, curcol)
        let p = line('.') + 1
        let pp = line('.') + 2
        let nextblank = getline(p) =~ "^\\s*$"
        let nextnextblank = getline(pp) =~ "^\\s*$"
        while p <= lastline && ((i == 0 && (!nextblank || pp < lastline && !nextnextblank)) ||
                    \ (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
            +
            let p = line('.') + 1
            let pp = line('.') + 2
            let nextblank = getline(p) =~ "^\\s*$"
            let nextnextblank = getline(pp) =~ "^\\s*$"
        endwhile
        normal! $
    endif
endfunction

nnoremap g<c-t> :set opfunc=Fanyi<CR>g@
xnoremap g<c-t> :<C-U>call Fanyi(visualmode(), 1)<CR>
command! -nargs=* Fanyi call DoFanyi(<q-args>)
function! Fanyi(type, ...) abort
    let sel_save = &selection
    let &selection = "i'clusive"
    let reg_save = @@

    if a:0  " Invoked from Visual mode, use gv command.
        silent exe 'normal! gvy'
    elseif a:type ==# 'line'
        silent exe "normal! '[V']y"
    else
        silent exe 'normal! `[v`]y'
    endif

    let &selection = sel_save
    let text = @@
    let @@ = reg_save
    call DoFanyi(text)
endfunction
function! DoFanyi(text) abort
    let text = empty(a:text) ? expand('<cword>') : a:text
    let text = substitute(text, '\v\n', ' ', 'g')
    if executable('fanyi')
        let cmd = 'fanyi --nocolor ' . text
    elseif executable('yd')
        let cmd = 'yd ' . text
    else
        let cmd = ''
        echohl ErrorMsg | echo 'No dict program installed' | echohl None
    endif

    if !empty(cmd)
        call PV(cmd)
    endif
endfunction

command! -nargs=+ -complete=shellcmd PV call PV(<q-args>)
function! PV(cmd) abort
    if has('popupwin')
        let out = system(a:cmd)
        let out = split(out, "\n")
        call popup_atcursor(out, {
                    \ 'pos': 'botright',
                    \ 'maxheight': 15,
                    \ 'maxwidth': 60,
                    \ 'padding': [0, 1, 0, 1],
                    \ 'highlight': 'Pmenu',
                    \ })
    else
        let cmd = substitute(a:cmd, '\v[ \t]', '\\ ', 'g')
        let cmd = substitute(cmd, '\v\n', ';\\ ', 'g')
        let cmd = substitute(cmd, '\v\|', '\\|', 'g')
        exe 'noautocmd pedit +exe\ "set\ bufhidden=wipe\ buftype=nofile\\n%d\\nread\ !' . cmd . '\\n1" [Popup Cmd]'
    endif
endfunction

if has('patch-8.1.1880') && has('textprop')
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview,popup<cr>
else
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
endif
nnoremap <leader>p- :set previewheight-=<c-r>=&previewheight <= 0 ? 0 : 1<cr><cr>
nnoremap <leader>p+ :set previewheight+=1<cr>
nnoremap <leader>p= :set previewheight=6<cr>

if has('win32') && executable('sh')
    nnoremap <leader>! :Sh<space>
    command! -nargs=+ -complete=shellcmd Sh call Sh(<q-args>)
    function! Sh(cmd) abort
        let saved = [&shell, &shellcmdflag, &shellxquote]
        if exists('+shellslash')
            let saved += [&shellslash]
        endif
        set shell=sh
        set shellcmdflag=-c
        set shellxquote=
        set shellslash
        try
            exe '!' . a:cmd
        catch
            echohl ErrorMsg | echo v:exception | echohl None
        endtry
        let &shell = saved[0]
        let &shellcmdflag = saved[1]
        let &shellxquote = saved[2]
        if exists('+shellslash')
            let &shellslash = saved[3]
        endif
    endfunction
endif
" if executable('zsh')
"     set shell=zsh
" endif
" elseif executable('fish')
"     set shell=fish
" endif

function! CmdLine(str) abort
    call feedkeys(':' . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range abort
    let l:saved_reg = @"
    execute 'normal! vgvy'

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", '', '')

    if a:direction ==# 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction ==# 'replace'
        call CmdLine('%s' . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

augroup MyFileTypeMapping
    autocmd!
    if executable('python3')
        au filetype python nnoremap <buffer> <localleader>r :w <bar> !python3 %<cr>
        au filetype python nnoremap <buffer> <localleader>R :w <bar> !python3 %<space>
    elseif executable('python')
        au filetype python nnoremap <buffer> <localleader>r :w <bar> !python %<cr>
        au filetype python nnoremap <buffer> <localleader>R :w <bar> !python %<space>
    endif
    if executable('gcc')
        au filetype c nnoremap <buffer> <localleader>r :w <bar>
                    \ !gcc % -o %:r && ./%:r<cr>
        au filetype c nnoremap <buffer> <localleader>R :w <bar>
                    \ !gcc % -o %:r && ./%:r<space>
    endif
    if executable('g++')
        au filetype cpp nnoremap <buffer> <localleader>r :w <bar>
                    \ !g++ % -o %:r && ./%:r<cr>
        au filetype cpp nnoremap <buffer> <localleader>R :w <bar>
                    \ !g++ % -o %:r && ./%:r<space>
    endif
    if executable('go')
        au filetype go nnoremap <buffer> <localleader>r :w <bar>
                    \ !go run %<cr>
        au filetype go nnoremap <buffer> <localleader>R :w <bar>
                    \ !go run %<space>
    endif
    if executable('pandoc')
        au filetype html,docx,rtf,odp,odt nnoremap <buffer> <localleader>v
                    \ :set buftype=nofile ft=markdown <bar>
                    \ %!pandoc -t markdown_strict<cr>
        au filetype html,docx,rtf,odp,odt nnoremap <buffer> <localleader>V
                    \ :enew <bar> read # <bar> set buftype=nofile ft=markdown <bar>
                    \ %!pandoc -t markdown_strict<cr>
    endif
    if executable('pdftotext')
        autocmd FileType pdf nnoremap <buffer> <localleader>v
                    \ :set buftype=nofile ft=markdown <bar>
                    \ %!pdftotext -nopgbrk -layout -q -eol unix /dev/stdin - <bar> fmt -w80<cr>
        autocmd FileType pdf nnoremap <buffer> <localleader>V
                    \ :enew <bar> read # <bar> set buftype=nofile ft=markdown <bar>
                    \ %!pdftotext -nopgbrk -layout -q -eol unix /dev/stdin - <bar> fmt -w80<cr>
    endif
augroup END

if exists(':packadd')
    nnoremap <leader>qf :packadd cfilter<cr>:Cfilter<space>
    nnoremap <leader>qv :packadd cfilter<cr>:Cfilter!<space>
    nnoremap <leader>lf :packadd cfilter<cr>:Lfilter<space>
    nnoremap <leader>lv :packadd cfilter<cr>:Lfilter!<space>
endif
nnoremap [t :tprevious<cr>
nnoremap ]t :tnext<cr>
nnoremap [T :tfirst<cr>
nnoremap ]T :tlast<cr>
nnoremap <leader>] :execute 'ptag ' . expand('<lt>cword>')<cr>
nnoremap <C-LeftMouse> :execute 'ptag ' . expand('<lt>cword>')<cr>
nnoremap <leader>[ :pclose<cr>
nnoremap <C-RightMouse> :pclose<cr>
nnoremap [p :ptprevious<cr>
nnoremap ]p :ptnext<cr>
nnoremap [P :pfirst<cr>
nnoremap ]P :plast<cr>
nnoremap [[ ?{<CR>w99[{
nnoremap ][ /}<CR>b99]}
nnoremap ]] j0?{<CR>w99[{%/{<CR>
nnoremap [] k$/}<CR>b99]}%?}<CR>

augroup MyQuickfixWindow
    autocmd!
    au FileType qf call AdjustWindowHeight(1, 10)
    au Filetype qf set nobuflisted
    au FileType qf set foldcolumn=0
augroup END
" function! AdjustWindowHeight(minheight, maxheight)
"     exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
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
    exe max([min([n_lines, a:maxheight]), a:minheight]) . 'wincmd _'
endfunction
nnoremap <leader>qq :QToggle<cr>
nnoremap <leader>ll :LToggle<cr>
nnoremap <leader>qe :cexpr [] <bar> :cclose<cr>
nnoremap <leader>le :lexpr [] <bar> :lclose<cr>
nnoremap <leader>qb :cbuffer<cr>
nnoremap <leader>lb :lbuffer<cr>
nnoremap [q :cprev<cr>
nnoremap ]q :cnext<cr>
nnoremap [Q :cfirst<cr>
nnoremap ]Q :clast<cr>
nnoremap [l :lprev<cr>
nnoremap ]l :lnext<cr>
nnoremap [L :lfirst<cr>
nnoremap ]L :llast<cr>
command! QToggle call QListToggle(10)
command! LToggle call LListToggle(10)
function! LListToggle(height) abort
    let buffer_count_before = BufferCount()
    " Location list can't be closed if there's cursor in it, so we need
    " to call lclose twice to move cursor to the main pane
    silent! lclose
    silent! lclose

    if BufferCount() == buffer_count_before
        execute 'silent! lwindow ' . a:height
    endif
endfunction
function! QListToggle(height) abort
    let buffer_count_before = BufferCount()
    silent! cclose

    if BufferCount() == buffer_count_before
        execute 'silent! botright cwindow ' . a:height
    endif
endfunction
function! BufferCount() abort
    return len(filter(range(1, bufnr('$')), 'bufwinnr(v:val) != -1'))
endfunction

augroup MyQuickfixUndo
    autocmd!
    autocmd FileType qf nnoremap <buffer> <nowait> <tab> :RemoveQFItem<cr>
    autocmd FileType qf nnoremap <buffer> <nowait> <s-tab> :UndoQFRemove<cr>
augroup END
command! RemoveQFItem call RemoveQFItem()
command! UndoQFRemove call UndoQFRemove()
function! RemoveQFItem() abort
    let winid = win_getid()
    if getwininfo(winid)[0]['loclist']
        let abbr = 'loc' | let ch = 'l'
        let all = getloclist(win_getid())
    elseif getwininfo(winid)[0]['quickfix']
        let abbr = 'qf' | let ch = 'c'
        let all = getqflist()
    else
        return
    endif
    let curidx = line('.') - 1
    if curidx < 0 || curidx >= len(all) | return | endif
    let item = remove(all, curidx)
    if !exists('b:undostack') | let b:undostack = [] | endif
    call add(b:undostack, [item, curidx])
    if getwininfo(winid)[0]['loclist']
        call setloclist(winid, all, 'r')
    else
        call setqflist(all, 'r')
    endif
    execute curidx + 1
endfunction
function! UndoQFRemove() abort
    if !exists('b:undostack') || len(b:undostack) == 0 | return | endif
    let [item, curidx] = remove(b:undostack, -1)
    let winid = win_getid()
    if getwininfo(winid)[0]['loclist']
        let abbr = 'loc' | let ch = 'l'
        let all = getloclist(win_getid())
    elseif getwininfo(winid)[0]['quickfix']
        let abbr = 'qf' | let ch = 'c'
        let all = getqflist()
    else
        return
    endif
    if curidx > len(all) | let curidx = 0 | endif
    call insert(all, item, curidx)
    if getwininfo(winid)[0]['loclist']
        call setloclist(winid, all, 'r')
    else
        call setqflist(all, 'r')
    endif
    execute curidx + 1
endfunction

nnoremap <leader>aa :call AlternateFile()<cr>
function! AlternateFile() abort
    let suffix = expand('%:e')
    if suffix ==# 'cpp' || suffix ==# 'cc'
        try | find %:t:r.hpp | catch | try | find %:t:r.h | catch | endtry | endtry
    elseif suffix ==# 'c'
        try | find %:t:r.h | catch | endtry
    elseif suffix ==# 'hpp'
        try | find %:t:r.cpp | catch | try | find %:t:r.cc | catch | endtry | endtry
    elseif suffix ==# 'h'
        try | find %:t:r.cpp | catch | try | find %:t:r.cc | catch | try | find %:t:r.c | catch | endtry | endtry | endtry
    elseif suffix ==# 'go'
        if expand('%:t:r') =~# '_test$'
            try | find %:t:r:s?\V_test\$??.go | catch | endtry
        else
            try | find %:t:r_test.go | catch | endtry
        endif
    endif
endfunction

if has('patch-8.1.0360') || has('nvim-0.3.2')
    set diffopt=filler,internal,indent-heuristic,algorithm:histogram
endif

nnoremap <leader>ct :Ctags<cr>
nnoremap <leader>cT :Ctags<space>
command! -complete=file -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q <args>

if has('cscope')
    nnoremap <leader>cs :Cscope<cr>
    nnoremap <leader>cS :Cscope<space>
    command! -complete=file -nargs=* Cscope !cscope
                \ -RUbq <args>
    nnoremap <C-\>q :set cscopequickfix=<c-r>=&cscopequickfix == '' ? 's-,g-,d-,c-,t-,e-,f-,i-,a-' : ''<cr><cr>
    nnoremap <C-\><bs> :set invcst<cr>
    nnoremap <C-\><c-h> :set invcst<cr>
    nnoremap <C-\><C-\> :cs add .<cr>
    nnoremap <C-\><bar> :cs add<space>
    nnoremap <C-\><cr> :cs show<cr>
    nnoremap <C-\>h :cs help<cr>
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
endif

nnoremap <leader>vv :Vcs<space>
command! -nargs=+ -complete=command Vcs call Vcs(<q-args>)
function! Vcs(cmd) abort
    let saved = getcwd()
    exe 'cd ' . GetVcsRoot()
    try
        exe a:cmd
    catch
        echohl ErrorMsg | echo v:exception | echohl None
    endtry
    exe 'cd ' . saved
endfunction

nnoremap <leader>vg :vimgrep //j % <bar> cw<left><left><left><left><left><left><left><left><left>
nnoremap <leader>vG :vimgrep //j **/* <bar> cw<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>vl :lvimgrep //j % <bar> cw<left><left><left><left><left><left><left><left><left>
nnoremap <leader>vL :lvimgrep //j **/* <bar> cw<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>ss :%s/
nnoremap <leader>sc :%s//c<left><left>
xnoremap <leader>ss :s/
xnoremap <leader>sc :s//c<left><left>
nnoremap <leader>qs :cdo s/
nnoremap <leader>qc :cdo s//c<left><left>
nnoremap <leader>ls :ldo s/
nnoremap <leader>lc :ldo s//c<left><left>
nnoremap <leader>bs :bufdo %s/
nnoremap <leader>bc :bufdo %s//c<left><left>

command! -nargs=0 W w !sudo tee % > /dev/null

nnoremap <leader>ew :e <C-R>=expand("%:.:h") . "/"<CR>

if executable('xxd')
    nnoremap <leader>eb :Bin<cr>
    command! Bin call InvBinMode()
    function! InvBinMode() abort abort
        set invbin
        let modified = &modified
        if &bin
            %!xxd
            set ft=xxd
        else
            %!xxd -r
            filetype detect
        endif
        let &modified = modified
    endfunction

    augroup MyBinaryMode
        autocmd!
        au BufWritePre * if &bin | exe '%!xxd -r' | endif
        au BufWritePost * if &bin | exe '%!xxd' | endif
    augroup END
endif

inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<c-h>"
inoremap <expr> <down> pumvisible() ? "\<C-n>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<C-p>" : "\<up>"
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()['selected'] != '-1' ?
                \ "\<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
inoremap <expr> <C-e> pumvisible() ? "\<C-e>" : "\<End>"

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
xnoremap * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" nnoremap gh H
" nnoremap gm M
" nnoremap gl L

nnoremap <a-k> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>
nnoremap <a-j> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>
inoremap <a-k> <c-o>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>
inoremap <a-j> <c-o>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>
inoremap <a-y> <c-o><c-y>
inoremap <a-e> <c-o><c-e>
if exists(':terminal')
    tnoremap <a-k> <c-\><c-n>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>i
    tnoremap <a-j> <c-\><c-n>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>i
endif

nnoremap <leader><bs> :nohls<cr>
nnoremap <leader><c-h> :nohls<cr>

" Smart way to move between windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <leader>= <c-w>=
nnoremap <leader>+ :resize +5<cr>
nnoremap <leader>- :resize -5<cr>
nnoremap <leader>> :vertical resize +10<cr>
nnoremap <leader><lt> :vertical resize -10<cr>

" Return to last edit position when opening files (You want this!)
augroup MyReturnToLastEditPosition
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

" Close the current buffer
nnoremap <leader>bb :call BufClose(0)<cr>
nnoremap <leader>bB :call BufClose(1)<cr>
" Don't close window, when deleting a buffer
function! BufClose(force) abort
    if &modified && !a:force
        return
    endif
    let l:currentBufNum = bufnr('%')
    let l:alternateBufNum = bufnr('#')
    let l:doDelete = (empty(&bufhidden) && &hidden) || &bufhidden ==# 'hide'

    if buflisted(l:alternateBufNum)
        buffer #
    else
        try | bnext | catch | endtry
    endif

    if bufnr('%') == l:currentBufNum
        enew
    endif
    if l:doDelete
        exe 'bdelete' . (a:force ? '! ' : ' ') . l:currentBufNum
    endif
endfunction

nnoremap <leader>bd :try <bar> %bd <bar> catch <bar> endtry<cr>
nnoremap <leader>bD :try <bar> %bd! <bar> catch <bar> endtry<cr>
" Close all the buffers
nnoremap <leader>bh :call CloseHiddenBuffers(0)<cr>
nnoremap <leader>bH :call CloseHiddenBuffers(1)<cr>
function! CloseHiddenBuffers(force) abort
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr('$') + 1)
        if buflisted(num) && index(open_buffers, num) == -1
            try | exec 'bdelete' . (a:force ? '! ' : ' ') . num | catch | endtry
        endif
    endfor
endfunction

nnoremap <leader><tab> :bnext<cr>
nnoremap <leader><s-tab> :bprevious<cr>

" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tx :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <leader>tc :tcd %:p:h<cr>
nnoremap <expr> <leader>tC ':tcd ' . GetVcsRoot() . "\<lt>cr>"

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nnoremap <leader>tl :exe 'tabn ' . g:lasttab<cr>
augroup MyReturnToLastTab
    autocmd!
    au TabLeave * let g:lasttab = tabpagenr()
augroup END

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <expr> <leader>cD ':cd ' . GetVcsRoot() . "\<lt>cr>"
function! GetVcsRoot() abort
    let cph = expand('%:p:h', 1)
    if cph =~# '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
        let wd = call('find' . (mkr =~# '/$' ? 'dir' : 'file'), [mkr, cph . ';'])
        if !empty(wd) | let &acd = 0 | brea | en
    endfo
    return fnameescape(empty(wd) ? cph : substitute(wd, mkr . '$', '.', ''))
endfunction

nnoremap <leader>sl :set invspell<cr>

inoremap <c-x>( )<c-g>U<left>(
inoremap <c-x>) )<c-g>U<left>(
inoremap <c-x>[ ]<c-g>U<left>[
inoremap <c-x>] ]<c-g>U<left>[
inoremap <c-x>{ }<c-g>U<left>{
inoremap <c-x>] }<c-g>U<left>{
inoremap <c-x><lt> ><c-g>U<left><lt>
inoremap <c-x>> ><c-g>U<left><lt>
inoremap <c-x>' '<c-g>U<left>'
inoremap <c-x>" "<c-g>U<left>"
inoremap <c-x>` `<c-g>U<left>"

inoremap <expr> <c-b> CloseParen()
inoremap <expr> <c-space> CloseParen()
function! CloseParen() abort
    let closepairs = {'(' : ')',
                \ '[' : ']',
                \ '{' : '}',
                \ '"' : '"',
                \ "'" : "'",
                \ '`' : '`',
                \ }

    let attr = synIDattr(synID(line('.'), col('.') - 1, 0), 'name')
    let last = getline(line('.'))[col('.') - 2]
    if attr =~? 'string\|include' && last !~# "[\"'`]"
        let [m_lnum, m_col] = searchpairpos("[\"'`]", '', "[\"'`]", 'nbW')
    else
        let [m_lnum, m_col] = searchpairpos('[[({]', '', '[\])}]', 'nbW',
                    \ 'synIDattr(synID(line("."), col("."), 0), "name") =~? "string\\|include"')
    endif

    if (m_lnum != 0) && (m_col != 0)
        let c = getline(m_lnum)[m_col - 1]
        return closepairs[c]
    endif
    return ''
endfun

if exists(':terminal')
    augroup MyLaunchDebugger
        autocmd!
        if executable('pudb3')
            au Filetype python nnoremap <buffer> <localleader>d :vert RunTermCmd pudb3<space>
            au Filetype python nnoremap <buffer> <localleader>D :vert RunTermCmd pudb3 %<cr>
        elseif executable('pdb3')
            au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pdb3<space>
            au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pdb3 %<cr>
        elseif executable('pudb')
            au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pudb<space>
            au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pudb %<cr>
        elseif executable('pdb')
            au Filetype python nnoremap <buffer> <localleader>d :RunTermCmd pdb<space>
            au Filetype python nnoremap <buffer> <localleader>D :RunTermCmd pdb %<cr>
        endif
        if executable('gdb')
            au Filetype c,cpp,go nnoremap <buffer> <localleader>d :RunTermCmd gdb<space>
            au Filetype c,cpp,go nnoremap <buffer> <localleader>D :RunTermCmd gdb<cr>
        endif
    augroup END
    command! -nargs=+ RunTermCmd call RunTermCmd(<q-args>)
    function! RunTermCmd(cmd) abort
        botright split
        if has('nvim')
            execute 'terminal ' . a:cmd
        else
            execute 'terminal ++close ++curwin ' . a:cmd
        endif
    endfunction
endif
if exists(':terminal')
    nnoremap <localleader>b :let @" = 'break ' . expand('%:p') . ':' . line('.')<cr>
    nnoremap <localleader>B :let @" = 'tbreak ' . expand('%:p') . ':' . line('.')<cr>
    nnoremap <localleader>c :let @" = 'clear ' . expand('%:p') . ':' . line('.')<cr>
endif
augroup MyEditGDBInit
    autocmd!
    if executable('gdb')
        au FileType c,cpp,go nnoremap <buffer> <localleader>e :e .gdbinit<cr>
    endif
augroup END

nnoremap <leader>sp :TrimWhiteSpace<cr>
command! -nargs=0 TrimWhiteSpace call TrimWhiteSpace()
function! TrimWhiteSpace()
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction

nnoremap <leader>ec :e ~/.vim_runtime/config/core.vim<cr>
augroup MyCore
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/core.vim source ~/.vim_runtime/config/core.vim
augroup END
