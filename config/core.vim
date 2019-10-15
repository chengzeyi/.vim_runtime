set encoding=utf8

filetype plugin on
filetype indent on

set notimeout
" set timeoutlen=2000
set ttimeout
set ttimeoutlen=10

" set shortmess=a

set belloff=all

set mouse=a
if exists('+ttymouse')
    if has('mouse_sgr')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif
set mousemodel=popup

set tags+=./tags;,./TAGS;
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

set updatetime=1500

if has('patch-8.1.1564')
    set signcolumn=number
endif
set number
" if has('patch-7.3.787')
"     set relativenumber
" endif

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
" if has('menu')
"     source $VIMRUNTIME/menu.vim
"     set wcm=<c-z>
"     map <F12> :emenu <c-z>
" endif

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*,tags,TAGS,cscope.*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,tags,TAGS,cscope.*
endif

set ruler
set cmdheight=1
set showmode
set showcmd

set hid

set backspace=eol,start,indent
set whichwrap+=<,>,[,]

set ignorecase
set smartcase
set hlsearch
set incsearch

if has('nvim')
    set inccommand=nosplit
endif

set lazyredraw

set magic

" set showmatch
" How many tenths of a second to blink when matching brackets
" set mat=2

set noerrorbells
set novisualbell
set t_vb=
" set tm=500

set fillchars=vert:│,fold:-
" let &showbreak = "\u21aa "
let &showbreak = '↪ '
set listchars=tab:→\ ,nbsp:·,extends:⟩,precedes:⟨
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

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab
augroup expandTabException
    au!
    au FileType go setlocal noexpandtab
augroup END
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4

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

" Specify the behavior when switching between buffers
try
    " set switchbuf=useopen,usetab,newtab
    set switchbuf=useopen
    set stal=2
catch
endtry

" Always show the status line
set laststatus=2

try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

set completeopt+=menuone
set completeopt-=preview
if has('patch-8.1.1882') && has('textprop')
    set completepopup=highlight:Pmenu,border:off,align:menu
endif
set pumheight=12

if has('patch-8.1.1714') && has('textprop')
    set previewpopup=height:15,width:60
endif
set previewheight=6

set csverb
" set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-,a-

augroup commentStr
    autocmd!
    autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
augroup END

augroup setCompiler
    autocmd!
    if has('python3') || has('python')
        autocmd Filetype python compiler pylint
    endif
    autocmd FileType c compiler gcc
    autocmd FileType cpp compiler gcc
    autocmd FileType go compiler go
augroup END

set pastetoggle=<F2>

let mapleader = ' '
let maplocalleader = '\'

nnoremap <leader>ec :e ~/.vim_runtime/config/core.vim<cr>
augroup configCore
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/core.vim source ~/.vim_runtime/config/core.vim
augroup END

inoremap <c-a> <home>
inoremap <c-e> <end>

" Bash like keys for the command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

function! MapMotion(from, ...)
    let from = a:from
    let to = a:0 == 0 ? a:from : a:1
    exec 'noremap ' . from . ' g' . to
    exec 'noremap g' . from . ' ' . to
endfunction
call MapMotion('j')
call MapMotion('k')
" call MapMotion('0', '^')
" call MapMotion('^', '0')
" call MapMotion('$')
noremap 0 ^
noremap ^ 0
nnoremap Q @q
nnoremap M `m
nnoremap Y y$

nnoremap <leader><bslash> :vs<cr>
nnoremap <leader><bar> :sp<cr>

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
nnoremap <leader>or :set invrelativenumber<cr>
nnoremap <leader>on :set invnumber<cr>
if has('termguicolors')
    nnoremap <leader>og :set invtermguicolors<cr>
endif

nnoremap <c-]> g<c-]>
nnoremap g<c-]> <c-]>
xnoremap <c-]> g<c-]>
xnoremap g<c-]> <c-]>
nnoremap <c-w><c-]> <c-w>g<c-]>
nnoremap <c-w>g<c-]> <c-w><c-]>
xnoremap <c-w><c-]> <c-w>g<c-]>
xnoremap <c-w>g<c-]> <c-w><c-]>
nnoremap g<LeftMouse> g<c-]>
nnoremap <C-LeftMouse> g<c-]>

if exists(':terminal')
    if has('nvim')
        tnoremap <F1> <c-\><c-n>
    else
        tnoremap <F1> <c-w>N
    endif
endif

" nnoremap <leader>mm :match Question /<bslash><lt><c-r>=expand('<lt>cword>')<cr><bslash>>/<cr>
" nnoremap <leader>mM :match<cr>
nnoremap <leader>ff :let @/='\<lt><c-r>=expand('<lt>cword>')<cr>\>' <bar> set hls<cr>
nnoremap <leader>fF :let @/='\<lt><c-r>=expand('<lt>cWORD>')<cr>\>' <bar> set hls<cr>
nnoremap <leader>jj :call GotoJump()<cr>
nnoremap <leader>jt :call GotoTag()<cr>
nnoremap <leader>jm :tselect<cr>
function! GotoJump()
    redraw!
    jumps
    let j = input("Please select your jump ([count]j|k): ")
    if j =~# '\v[0-9]+j'
        execute "normal! " . j[0:-2] . "\<c-i>"
    elseif j =~# '\v[0-9]+k'
        execute "normal! " . j[0:-2] . "\<c-o>"
    endif
endfunction
function! GotoTag()
    redraw!
    tags
    let j = input("Please select your tag ([count]j|k): ")
    if j =~# '\v[0-9]+j'
        execute j[0:-2] . "tag"
    elseif j =~# '\v[0-9]+k'
        execute j[0:-2] . "pop"
    endif
endfunction
nnoremap <leader>? :call LookUpMap(1, '', '')<cr>
nnoremap <leader>/ :call LookUpMap(1, '', '<lt>leader>')<cr>
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
nnoremap <leader>" :registers<CR>
nnoremap <leader>@ :registers<CR>
inoremap <c-r> <c-r>="\<lt>c-r>" . BetterRegister()<cr>
if exists(':terminal')
    if has('nvim')
        tnoremap <expr> <c-r> "\<lt>c-\>\<lt>c-n>\"" . BetterRegister() . 'pi'
    else
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
" nnoremap <leader>ms :match Folded /<bslash>v^.*(%'a<bar>%'b<bar>%'c<bar>%'d).*/<cr>
nnoremap <leader>mh :call MatchMarkLines()<cr>
nnoremap <leader>mH :match<cr>
nnoremap <leader>md :delmarks a-z<cr>
nnoremap <leader>mD :delmarks a-zA-Z<cr>
function! HighlightMarkLines()
    let cmd = 'matc
    echo range(char2nr('a'), char2nr('z'))
    let marks = map(range(char2nr('a'), char2nr('z')) + range(char2nr('A'), char2nr('Z')), "'%''' . nr2char(v:val)")
    let cmd .= join(marks, '|')
    let cmd .= ').*$/'
    execute cmd
endfunction

xnoremap if :<C-U>silent! normal! [zjV]zk<CR>
onoremap if :normal Vif<CR>
xnoremap af :<C-U>silent! normal! [zV]z<CR>
onoremap af :normal Vaf<CR>
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
nnoremap <leader>f= :set foldlevel=<c-r>=&foldlevel ? 0 : 99<cr><cr>
nnoremap <leader>fs :setlocal foldexpr=getline(v:lnum)=~@/ ? 0 : 1 foldmethod=
            \<c-r>=&foldmethod == 'expr' ? 'indent' : 'expr'<cr> foldlevel=
            \<c-r>=&foldmethod == 'expr' ? 99 : 0<cr><cr>
xnoremap <expr> . expand('<lt>cword>') =~# '[(){}\[\]]' ? 'a'.expand('<lt>cword>') : '.'

" Changes to allow blank lines in blocks, and
" Top level blocks (zero indent) separated by two or more blank lines.
" Usage: source <thisfile> in pythonmode and
" Press: vai, vii to select outer/inner python blocks by indetation.
" Press: vii, yii, dii, cii to select/yank/delete/change an indented block.
onoremap ai :<C-u>call IndTxtObj(0)<CR>
onoremap ii :<C-u>call IndTxtObj(1)<CR>
xnoremap ai <Esc>:call IndTxtObj(0)<CR><Esc>gv
xnoremap ii <Esc>:call IndTxtObj(1)<CR><Esc>gv
function! IndTxtObj(inner)
    let curcol = col(".")
    let curline = line(".")
    let lastline = line("$")
    let i = indent(line("."))
    if getline(".") !~ "^\\s*$"
        let p = line(".") - 1
        let pp = line(".") - 2
        let nextblank = getline(p) =~ "^\\s*$"
        let nextnextblank = getline(pp) =~ "^\\s*$"
        while p > 0 && ((i == 0 && (!nextblank || (pp > 0 && !nextnextblank))) ||
                    \ (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
            -
            let p = line(".") - 1
            let pp = line(".") - 2
            let nextblank = getline(p) =~ "^\\s*$"
            let nextnextblank = getline(pp) =~ "^\\s*$"
        endwhile
        normal! 0V
        call cursor(curline, curcol)
        let p = line(".") + 1
        let pp = line(".") + 2
        let nextblank = getline(p) =~ "^\\s*$"
        let nextnextblank = getline(pp) =~ "^\\s*$"
        while p <= lastline && ((i == 0 && (!nextblank || pp < lastline && !nextnextblank)) ||
                    \ (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
            +
            let p = line(".") + 1
            let pp = line(".") + 2
            let nextblank = getline(p) =~ "^\\s*$"
            let nextnextblank = getline(pp) =~ "^\\s*$"
        endwhile
        normal! $
    endif
endfunction

nmap <silent> gt :set opfunc=Fanyi<CR>g@
vmap <silent> gt :<C-U>call Fanyi(visualmode(), 1)<CR>
command! -nargs=* -complete=tag Fanyi call DoFanyi(<q-args>)
function! Fanyi(type, ...)
    let sel_save = &selection
    let &selection = "inclusive"
    let reg_save = @@

    if a:0  " Invoked from Visual mode, use gv command.
        silent exe "normal! gvy"
    elseif a:type == 'line'
        silent exe "normal! '[V']y"
    else
        silent exe "normal! `[v`]y"
    endif

    let &selection = sel_save
    let text = @@
    let @@ = reg_save
    call DoFanyi(text)
endfunction
function! DoFanyi(text)
    let text = empty(a:text) ? expand('<cword>') : a:text
    let text = substitute(text, '\v\n', ' ', 'g')
    if executable('fanyi')
        let cmd = 'fanyi --nocolor ' . text
    elseif executable('yd')
        let cmd = 'yd ' . text
    else
        let cmd = ''
        echoerr 'No dict program installed'
    endif

    if cmd != ''
        call PV(cmd)
    endif
endfunction

command! -nargs=+ -complete=shellcmd PV call PV(<q-args>)
function! PV(cmd)
    if exists('*popup_atcursor')
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

nnoremap <leader>p- :set previewheight-=<c-r>=&previewheight <= 0 ? 0 : 1<cr><cr>
nnoremap <leader>p+ :set previewheight+=1<cr>
nnoremap <leader>p= :set previewheight=6<cr>
" if executable('zsh')
"     set shell=zsh
" endif
" elseif executable('fish')
"     set shell=fish
" endif

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

augroup compileAndRun
    au!
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
                    \ !go build % -o %:r && ./%:r<cr>
        au filetype go nnoremap <buffer> <localleader>R :w <bar>
                    \ !go build % -o %:r && ./%:r<space>
    endif
    if executable('pandoc')
        au filetype html nnoremap <buffer> <localleader>r :w <bar>
                    \ enew <bar> read # <bar> set buftype=nofile ft=markdown <bar>
                    \ %!pandoc -t markdown_strict<cr>
        au filetype html nnoremap <buffer> <localleader>R :w <bar>
                    \ set buftype=nofile ft=markdown <bar>
                    \ %!pandoc -t markdown_strict<cr>
    endif
augroup END

augroup setDebugger
    if exists(':packadd')
        au Filetype c,cpp nnoremap <buffer> <localleader>d :packadd termdebug <bar> Termdebug<space>
        au Filetype c,cpp nnoremap <buffer> <localleader>D :packadd termdebug <bar> TermdebugCommand<space>
    endif
    if exists(':terminal')
        if has('nvim')
            if executable('pudb3')
                au Filetype python nnoremap <buffer> <localleader>d :vert terminal pudb3 %<cr>
                au Filetype python nnoremap <buffer> <localleader>D :vert terminal pudb3<space>
            elseif executable('pudb')
                au Filetype python nnoremap <buffer> <localleader>d :vert terminal pudb %<cr>
                au Filetype python nnoremap <buffer> <localleader>D :vert terminal pudb<space>
            endif
            au Filetype go nnoremap <buffer> <localleader>d :vert terminal dlv<space>
        else
            if executable('pudb3')
                au Filetype python nnoremap <buffer> <localleader>d :vert terminal ++close pudb3 %<cr>
                au Filetype python nnoremap <buffer> <localleader>D :vert terminal ++close pudb3<space>
            elseif executable('pudb')
                au Filetype python nnoremap <buffer> <localleader>d :vert terminal ++close pudb %<cr>
                au Filetype python nnoremap <buffer> <localleader>D :vert terminal ++close pudb<space>
            endif
            au Filetype go nnoremap <buffer> <localleader>d :vert terminal ++close dlv<space>
        endif
    endif
augroup END

augroup golangTools
    if executable('goimports')
        au Filetype go nnoremap <buffer> <localleader>i :%!goimports<cr>
    endif
augroup END

augroup readNonTextFile
    au!
    if executable('pandoc')
        autocmd BufReadPre *.docx,*.rtf,*.odp,*.odt silent set ro
        autocmd BufReadPost *.docx,*.rtf,*.odp,*.odt silent %!pandoc -t markdown_strict
    endif
    " Read-only .doc through antiword
    " autocmd BufReadPre *.doc silent set ro
    " autocmd BufReadPost *.doc silent %!antiword "%"
    " Read-only odt/odp through odt2txt
    " autocmd BufReadPre *.odt,*.odp silent set ro
    " autocmd BufReadPost *.odt,*.odp silent %!odt2txt "%"
    " Read-only pdf through pdftotext
    if executable('pdftotext')
        autocmd BufReadPre *.pdf silent set ro
        autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk -layout -q -eol unix /dev/stdin - | fmt -w80
    endif
    " Read-only rtf through unrtf
    " autocmd BufReadPre *.rtf silent set ro
    " autocmd BufReadPost *.rtf silent %!unrtf --text"
augroup END

if exists(':packadd')
    nnoremap <leader>qf :packadd cfilter <bar> Cfilter<space>
    nnoremap <leader>qv :packadd cfilter <bar> Cfilter!<space>
    nnoremap <leader>lf :packadd cfilter <bar> Lfilter<space>
    nnoremap <leader>lv :packadd cfilter <bar> Lfilter!<space>
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
augroup skipBuffer
    au!
    au Filetype qf set nobuflisted
augroup END

" augroup setQuickfixWindowHeight
"     au!
"     au FileType qf call AdjustWindowHeight(1, 10)
" augroup END
augroup autoOpenQuickfixWindow
    autocmd!
    autocmd QuickFixCmdPost [^l]* exe "
                \ try \n
                \     botright cwindow \n
                \     if getwininfo(win_getid())[0]['quickfix'] \n
                \         exe max([min([line('$'), 10]), 1]) . 'wincmd _' \n
                \     endif \n
                \ catch \n
                \ endtry"
    autocmd QuickFixCmdPost l* exe "
                \ try \n
                \     lwindow \n
                \     if getwininfo(win_getid())[0]['loclist'] \n
                \         exe max([min([line('$'), 10]), 1]) . 'wincmd _' \n
                \     endif \n
                \ catch \n
                \ endtry"
    autocmd QuickFixCmdPost make exe "
                \ try \n
                \     botright cwindow \n
                \     if getwininfo(win_getid())[0]['quickfix'] \n
                \         exe max([min([line('$'), 10]), 1]) . 'wincmd _' \n
                \     endif \n
                \ catch \n
                \ endtry"
    autocmd QuickFixCmdPost lmake exe "
                \ try \n
                \     lwindow \n
                \     if getwininfo(win_getid())[0]['loclist'] \n
                \         exe max([min([line('$'), 10]), 1]) . 'wincmd _' \n
                \     endif \n
                \ catch \n
                \ endtry"
augroup END
function! AdjustWindowHeight(minheight, maxheight)
    exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
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
command! QToggle call QListToggle(10, 1)
command! LToggle call LListToggle(10, 1)
function! LListToggle(height, ...) abort
    let buffer_count_before = BufferCount()
    " Location list can't be closed if there's cursor in it, so we need
    " to call lclose twice to move cursor to the main pane
    silent! lclose
    silent! lclose

    if BufferCount() == buffer_count_before
        execute "silent! lwindow " . a:height
        if a:0 != 0 && a:1 && getwininfo(win_getid())[0]['loclist']
            exe max([min([line("$"), a:height]), 1]) . "wincmd _"
        endif
    endif
endfunction
function! QListToggle(height, ...) abort
    let buffer_count_before = BufferCount()
    silent! cclose

    if BufferCount() == buffer_count_before
        execute "silent! botright cwindow " . a:height
        if a:0 != 0 && a:1 && getwininfo(win_getid())[0]['quickfix']
            exe max([min([line("$"), a:height]), 1]) . "wincmd _"
        endif
    endif
endfunction
function! BufferCount() abort
    return len(filter(range(1, bufnr('$')), 'bufwinnr(v:val) != -1'))
endfunction

augroup setQLEditable
    au!
    autocmd FileType qf nnoremap <buffer> <tab> :RemoveQFItem<cr>
    autocmd FileType qf nnoremap <buffer> <s-tab> :UndoQFRemove<cr>
augroup END
command! RemoveQFItem call RemoveQFItem()
command! UndoQFRemove call UndoQFRemove()
function! RemoveQFItem()
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
function! UndoQFRemove()
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
function! AlternateFile()
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
    set diffopt=filler,internal,algorithm:histogram,indent-heuristic
endif

nnoremap <leader>ct :Ctags<cr>
nnoremap <leader>cT :Ctags<space>
command! -complete=file -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q <args>

nnoremap <leader>cs :Cscope<cr>
nnoremap <leader>cS :Cscope<space>
command! -complete=file -nargs=* Cscope !cscope
            \ -RUbq <args>
nnoremap <C-\>q :set cscopequickfix=<c-r>=&cscopequickfix == '' ? 's-,g-,d-,c-,t-,e-,f-,i-,a-' : ''<cr><cr>
nnoremap <C-\><bs> :set invcst<cr>
nnoremap <C-\><c-h> :set invcst<cr>
nnoremap <C-\>\ :cs add .<cr>
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
nnoremap <C-\><C-\>a :scs find a <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\><C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>;
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

nnoremap <leader>vv :vimgrep //j %<left><left><left><left>
nnoremap <leader>vV :vimgrep //j **/*<left><left><left><left><left><left><left>
nnoremap <leader>vl :lvimgrep //j %<left><left><left><left>
nnoremap <leader>vL :lvimgrep //j **/*<left><left><left><left><left><left><left>
nnoremap <leader>ss :%s//g<left><left>
nnoremap <leader>sc :%s//gc<left><left><left>
xnoremap <leader>ss :s//g<left><left>
xnoremap <leader>sc :s//gc<left><left><left>
nnoremap <leader>qs :cdo s//g<left><left>
nnoremap <leader>qc :cdo s//gc<left><left><left>
nnoremap <leader>ls :ldo s//g<left><left>
nnoremap <leader>lc :ldo s//gc<left><left><left>
nnoremap <leader>bs :bufdo %s//g<left><left>
nnoremap <leader>bc :bufdo %s//gc<left><left><left>

command! W w !sudo tee % > /dev/null

" <TAB>: completion.
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <down> pumvisible() ? "\<C-n>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<C-p>" : "\<up>"

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
xnoremap * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <c-k> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>
nnoremap <c-j> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>
" inoremap <c-k> <Esc><C-w>p5<C-y><C-w>pi
" inoremap <c-j> <Esc><C-w>p5<C-e><C-w>pi

nnoremap <leader><bs> :nohls<cr>
nnoremap <leader><c-h> :nohls<cr>

" Smart way to move between windows
nnoremap <s-j> <c-w>j
nnoremap <s-k> <c-w>k
nnoremap <s-h> <c-w>h
nnoremap <s-l> <c-w>l

nnoremap <leader>= <c-w>=
nnoremap <leader>+ :resize +5<cr>
nnoremap <leader>- :resize -5<cr>
nnoremap <leader>> :vertical resize +10<cr>
nnoremap <leader><lt> :vertical resize -10<cr>

" nnoremap <c-h> :bprevious<cr>

augroup bufReadPost
    au!
    " Return to last edit position when opening files (You want this!)
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

" Close the current buffer
" map <leader>bc :Bclose<cr>:tabclose<cr>gT
nnoremap <leader>bb :Bclose<cr>
" Don't close window, when deleting a buffer
command! Bclose call BufcloseCloseIt()
function! BufcloseCloseIt()
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
        execute 'bdelete '.l:currentBufNum
    endif
endfunction

" Close all the buffers
nnoremap <leader>bd :bufdo bd<cr>
nnoremap <leader>bh :call CloseHiddenBuffers()<cr>
function! CloseHiddenBuffers()
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr('$') + 1)
        if buflisted(num) && index(open_buffers, num) == -1
            exec 'bdelete '.num
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
nnoremap <leader>tc :tcd %:p:h<cr>:pwd<cr>
nnoremap <expr> <leader>tC ':tcd ' . GetVcsRoot() . "\<lt>cr>"
nnoremap <leader>t<leader> :tabnext<cr>
nnoremap <leader>T<leader> :tabprevious<cr>

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
nnoremap <expr> <leader>cD ':cd ' . GetVcsRoot() . "\<lt>cr>"
function! GetVcsRoot()
    let cph = expand('%:p:h', 1)
    if cph =~ '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
        let wd = call('find'.(mkr =~ '/$' ? 'dir' : 'file'), [mkr, cph.';'])
        if wd != '' | let &acd = 0 | brea | en
    endfo
    return fnameescape(wd == '' ? cph : substitute(wd, mkr.'$', '.', ''))
endfunction

nnoremap <leader>sl :set invspell<cr>
