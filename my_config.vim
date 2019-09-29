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

Plug 'mattn/gist-vim', {'on': 'Gist'}

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
Plug 'junegunn/limelight.vim', {'on': ['<plug>(Limelight)', 'Limelight']}
Plug 'junegunn/vim-easy-align', {'on': '<plug>(EasyAlign)'}

" Plug 'rbong/vim-flog', {'on': ['Flog', 'Flogsplit']}
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dadbod'
" Plug 'tpope/vim-eunuch'

" Plug 'machakann/vim-sandwich'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

" Plug 'jacquesbh/vim-showmarks'
" Plug 'jeetsukumaran/vim-markology'

" Plug 'maxbrunsfeld/vim-yankstack'

Plug 'machakann/vim-highlightedyank'

Plug 'Xuyuanp/nerdtree-git-plugin', {'on': [
            \ 'NERDTreeToggle',
            \ 'NERDTreeFromBookmark',
            \ 'NERDTreeFocus',
            \ 'NERDTreeFind',
            \ 'NERDTreeVCS',
            \ 'NERDTreeCWD',
            \ 'NERDTreeRefreshRoot',
            \ 'NERDTreeMirror',
            \ ]}

Plug 'scrooloose/nerdtree', {'on': [
            \ 'NERDTreeToggle',
            \ 'NERDTreeFromBookmark',
            \ 'NERDTreeFocus',
            \ 'NERDTreeFind',
            \ 'NERDTreeVCS',
            \ 'NERDTreeCWD',
            \ 'NERDTreeRefreshRoot',
            \ 'NERDTreeMirror',
            \ ]}

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
" Plug 'Shougo/neopairs.vim'
Plug 'ujihisa/neco-look'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/echodoc.vim'
" Plug 'Shougo/deol.nvim'

Plug 'majutsushi/tagbar', {'on': ['TagbarToggle', 'TagbarOpenAutoClose']}

Plug 'sbdchd/neoformat', {'on': 'Neoformat'}

" Plug 'skywind3000/vim-preview'
Plug 'skywind3000/asyncrun.vim', {'on': ['AsyncRun', 'AsyncStop']}

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

Plug 'metakirby5/codi.vim'

Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'

if has('python') || has('python3')
    Plug 'voldikss/vim-translate-me'
endif

Plug 'liuchengxu/space-vim-dark'
Plug 'chriskempson/base16-vim'
Plug 'cocopon/iceberg.vim'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
" Plug 'arcticicestudio/nord-vim'

call plug#end()

let mapleader = ' '
let maplocalleader = '\'
set pastetoggle=<F2>

inoremap <silent> <c-a> <home>
inoremap <silent> <c-e> <end>
function! MapMotion(from, ...)
    let from = a:from
    let to = a:0 == 0 ? a:from : a:1
    exec 'noremap <silent> ' . from . ' g' . to
    exec 'noremap <silent> g' . from . ' ' . to
endfunction
call MapMotion('j')
call MapMotion('k')
call MapMotion('0', '^')
call MapMotion('^', '0')
call MapMotion('$')
nnoremap <silent> Q @q
nnoremap <silent> M `m
nnoremap <silent> Y y$
" nnoremap <silent> <leader>mm :match Question /<bslash><lt><c-r>=expand('<lt>cword>')<cr><bslash>>/<cr>
" nnoremap <silent> <leader>mM :match<cr>
nnoremap <silent> <leader>ff :let @/='\<lt><c-r>=expand('<lt>cword>')<cr>\>' <bar> set hls<cr>
nnoremap <silent> <leader>jj :call GotoJump()<cr>
nnoremap <silent> <leader>jt :call GotoTag()<cr>
nnoremap <silent> <leader>jm :tselect<cr>
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
nnoremap <silent> <leader>? :call LookUpMap(1, '', '')<cr>
nnoremap <silent> <leader>/ :call LookUpMap(1, '', '<lt>leader>')<cr>
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

nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>W :wa<cr>
nnoremap <silent> <leader>cb :cbuffer<cr>
nnoremap <silent> <leader>" :registers<CR>
nnoremap <silent> <leader>@ :registers<CR>
inoremap <silent> <c-r> <c-r>="\<lt>c-r>" . BetterRegister()<cr>
if exists(':terminal')
    if has('nvim')
        tnoremap <silent> <expr> <c-r> "\<lt>c-\>\<lt>c-n>\"" . BetterRegister() . 'pi'
    else
        tnoremap <silent> <expr> <c-w>" "\<lt>c-w>\"" . BetterRegister()
    endif
endif
nnoremap <silent> <expr> " '"' . BetterRegister()
nnoremap <silent> <expr> @ '@' . BetterRegister()
vnoremap <silent> <expr> " '"' . BetterRegister()
vnoremap <silent> <expr> @ '@' . BetterRegister()
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
nnoremap <silent> <leader>' :marks<CR>
nnoremap <silent> <leader>` :marks<CR>
nnoremap <silent> <expr> ' "'" . BetterMark()
nnoremap <silent> <expr> ` '`' . BetterMark()
vnoremap <silent> <expr> ' "'" . BetterMark()
vnoremap <silent> <expr> ` '`' . BetterMark()
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
" nnoremap <silent> <leader>ms :match Folded /<bslash>v^.*(%'a<bar>%'b<bar>%'c<bar>%'d).*/<cr>
nnoremap <silent> <leader>mh :call MatchMarkLines()<cr>
nnoremap <silent> <leader>mH :match<cr>
nnoremap <silent> <leader>md :delmarks a-z<cr>
nnoremap <silent> <leader>mD :delmarks a-zA-Z<cr>
function! HighlightMarkLines()
    let cmd = 'matc
    echo range(char2nr('a'), char2nr('z'))
    let marks = map(range(char2nr('a'), char2nr('z')) + range(char2nr('A'), char2nr('Z')), "'%''' . nr2char(v:val)")
    let cmd .= join(marks, '|')
    let cmd .= ').*$/'
    execute cmd
endfunction

nnoremap <silent> <leader>f0 :set foldlevel=0<cr>
nnoremap <silent> <leader>f1 :set foldlevel=1<cr>
nnoremap <silent> <leader>f2 :set foldlevel=2<cr>
nnoremap <silent> <leader>f3 :set foldlevel=3<cr>
nnoremap <silent> <leader>f4 :set foldlevel=4<cr>
nnoremap <silent> <leader>f5 :set foldlevel=5<cr>
nnoremap <silent> <leader>f6 :set foldlevel=6<cr>
nnoremap <silent> <leader>f7 :set foldlevel=7<cr>
nnoremap <silent> <leader>f8 :set foldlevel=8<cr>
nnoremap <silent> <leader>f9 :set foldlevel=9<cr>
nnoremap <silent> <leader>f- :set foldlevel-=1<cr>
nnoremap <silent> <leader>f+ :set foldlevel+=1<cr>
nnoremap <silent> <leader>f= :set foldlevel=<c-r>=&foldlevel ? '0' : '99'<cr><cr>
nnoremap <silent> <leader>fs :setlocal foldexpr=getline(v:lnum)=~@/?0:1 foldmethod=
    \<c-r>=&foldmethod == 'expr' ? 'indent' : 'expr'<cr> foldlevel=
    \<c-r>=&foldmethod == 'expr' ? '99' : '0'<cr><cr>
nnoremap <silent> <leader>of :set foldcolumn=<c-r>=&foldcolumn == 0 ? '1' : '0'<cr><cr>
if has('patch-8.1.1564')
    nnoremap <silent> <leader>os :set signcolumn=<c-r>=&signcolumn == 'no' ? 'number' : 'no'<cr><cr>
else
    nnoremap <silent> <leader>os :set signcolumn=<c-r>=&signcolumn == 'no' ? 'auto' : 'no'<cr><cr>
endif
vnoremap <silent> <expr> . expand('<lt>cword>') =~# '[(){}\[\]]' ? 'a'.expand('<lt>cword>') : '.'
if has('patch-8.1.1880') && has('textprop')
    " if (v:version > 801 || (v:version == 801 && has('patch1880'))) &&
    "             \ has('textprop')
    " set completeopt+=popup
    set previewpopup=height:20,width:80
endif
set previewheight=6
" augroup setPreviewBufferNotHidden
"     autocmd!
"     autocmd bufenter * if &previewwindow | set bufhidden=delete | endif
" augroup END

nmap <silent> gt :set opfunc=Fanyi<CR>g@
vmap <silent> gt :<C-U>call Fanyi(visualmode(), 1)<CR>
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

    if executable('fanyi')
        let cmd = 'fanyi --nocolor ' . @@ . ' | head -n 16'
    else
        let cmd = ''
        echoerr 'No dict program installed'
    endif

    let &selection = sel_save
    let @@ = reg_save

    if cmd != ''
        call P(cmd)
    endif
endfunction

command! -nargs=+ -complete=file P call P(<q-args>)
function! P(cmd)
    let cmd = substitute(a:cmd, '\v\s', '\\ ', 'g')
    silent exe 'noautocmd pedit +set\ bufhidden=wipe\ buftype=nofile\ |\ %d\ |\ read\ !' . cmd . ' [P]'
endfunction

nnoremap <silent> <leader>p- :set previewheight-=<c-r>=&previewheight <= 0 ? '0' : '1'<cr><cr>
nnoremap <silent> <leader>p+ :set previewheight+=1<cr>
nnoremap <silent> <leader>p= :set previewheight=6<cr>
if executable('zsh')
    set shell=zsh
elseif executable('fish')
    set shell=fish
endif
if exists(':terminal')
    if has('nvim')
        tnoremap <silent> <F1> <c-\><c-n>
    else
        tnoremap <silent> <F1> <c-w>N
    endif
endif
if exists(':packadd')
    nnoremap <silent> <leader>dd :packadd termdebug <bar> Termdebug<space>
    nnoremap <silent> <leader>dD :packadd termdebug <bar> TermdebugCommand<space>
    " nnoremap <silent> <leader>dr :Run<cr>
    " nnoremap <silent> <leader>dR :Run<space>
    " nnoremap <silent> <leader>da :Arguments<space>
    " nnoremap <silent> <leader>de :Evaluate<cr>
    " nnoremap <silent> <leader>dE :Evaluate<space>
    " nnoremap <silent> <leader>db :Break<cr>
    " nnoremap <silent> <leader>ds :Step<cr>
    " nnoremap <silent> <leader>dS :Stop<cr>
    " nnoremap <silent> <leader>do :Over<cr>
    " nnoremap <silent> <leader>df :Finish<cr>
    " nnoremap <silent> <leader>dc :Continue<cr>
    " nnoremap <silent> <leader>dC :Clear<cr>
    " nnoremap <silent> <leader>d[ :Gdb<cr>
    " nnoremap <silent> <leader>d] :Program<cr>
    " nnoremap <silent> <leader>d\ :Source<cr>

    nnoremap <silent> <leader>qf :packadd cfilter <bar> Cfilter<space>
    nnoremap <silent> <leader>qv :packadd cfilter <bar> Cfilter!<space>
    nnoremap <silent> <leader>lf :packadd cfilter <bar> Lfilter<space>
    nnoremap <silent> <leader>lv :packadd cfilter <bar> Lfilter!<space>
endif
nnoremap <silent> [t :tprevious<cr>
nnoremap <silent> ]t :tnext<cr>
nnoremap <silent> [T :tfirst<cr>
nnoremap <silent> ]T :tlast<cr>
nnoremap <silent> <leader>] :execute 'ptag ' . expand('<lt>cword>')<cr>
nnoremap <silent> <C-LeftMouse> :execute 'ptag ' . expand('<lt>cword>')<cr>
nnoremap <silent> <leader>[ :pclose<cr>
nnoremap <silent> <C-RightMouse> :pclose<cr>
nnoremap <silent> [p :ptprevious<cr>
nnoremap <silent> ]p :ptnext<cr>
nnoremap <silent> [P :pfirst<cr>
nnoremap <silent> ]P :plast<cr>
augroup skipBuffer
    au!
    au Filetype qf set nobuflisted
augroup END

" Changes to allow blank lines in blocks, and
" Top level blocks (zero indent) separated by two or more blank lines.
" Usage: source <thisfile> in pythonmode and
" Press: vai, vii to select outer/inner python blocks by indetation.
" Press: vii, yii, dii, cii to select/yank/delete/change an indented block.
onoremap <silent> ai :<C-u>call IndTxtObj(0)<CR>
onoremap <silent> ii :<C-u>call IndTxtObj(1)<CR>
vnoremap <silent> ai <Esc>:call IndTxtObj(0)<CR><Esc>gv
vnoremap <silent> ii <Esc>:call IndTxtObj(1)<CR><Esc>gv
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

" augroup setQuickfixWindowHeight
"     au!
"     au FileType qf call AdjustWindowHeight(1, 10)
" augroup END
augroup autoOpenQuickfixWindow
    autocmd!
    autocmd QuickFixCmdPost vimgrep,grep,cscope exe "
                \ try \n
                \     botright cwindow \n
                \     if getwininfo(win_getid())[0]['quickfix'] \n
                \         exe max([min([line('$'), 10]), 1]) . 'wincmd _' \n
                \     endif \n
                \ catch \n
                \ endtry"
    autocmd QuickFixCmdPost lvimgrep,lgrep,lcscope exe "
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
nnoremap <silent> <leader>qq :QToggle<cr>
nnoremap <silent> <leader>ll :LToggle<cr>
nnoremap <silent> <leader>qe :cexpr [] <bar> :cclose<cr>
nnoremap <silent> <leader>le :lexpr [] <bar> :lclose<cr>
nnoremap <silent> [q :cprev<cr>
nnoremap <silent> ]q :cnext<cr>
nnoremap <silent> [Q :cfirst<cr>
nnoremap <silent> ]Q :clast<cr>
nnoremap <silent> [l :lprev<cr>
nnoremap <silent> ]l :lnext<cr>
nnoremap <silent> [L :lfirst<cr>
nnoremap <silent> ]L :llast<cr>
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
    autocmd FileType qf nnoremap <silent> <buffer> <tab> :RemoveQFItem<cr>
    autocmd FileType qf nnoremap <silent> <buffer> <s-tab> :UndoQFRemove<cr>
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


augroup compileAndRun
    au!
    if executable('python3')
        au filetype python nnoremap <silent> <buffer> <localleader>r :w <bar> !python3 %<cr>
        au filetype python nnoremap <silent> <buffer> <localleader>R :w <bar> !python3 %<space>
    else
        au filetype python nnoremap <silent> <buffer> <localleader>r :w <bar> !python %<cr>
        au filetype python nnoremap <silent> <buffer> <localleader>R :w <bar> !python %<space>
    endif
    au filetype c nnoremap <silent> <buffer> <localleader>r :w <bar>
                \ !gcc % -o %:r && ./%:r<cr>
    au filetype c nnoremap <silent> <buffer> <localleader>R :w <bar>
                \ !gcc % -o %:r && ./%:r<space>
    au filetype cpp nnoremap <silent> <buffer> <localleader>r :w <bar>
                \ !g++ % -o %:r && ./%:r<cr>
    au filetype cpp nnoremap <silent> <buffer> <localleader>R :w <bar>
                \ !g++ % -o %:r && ./%:r<space>
augroup END

nnoremap <silent> <leader>aa :call AlternateFile()<cr>
function! AlternateFile()
    let suffix = expand('%:e')
    if suffix ==# 'cpp'
        silent! find %:t:r.h
        silent! find %:t:r.hpp
    elseif suffix ==# 'c'
        silent! find %:t:r.h
    elseif suffix ==# 'hpp'
        silent! find %:t:r.cpp
    elseif suffix ==# 'h'
        silent! find %:t:r.c
        silent! find %:t:r.cpp
    elseif suffix ==# 'go'
        if expand('%:t:r') =~# '_test$'
            silent! find %:t:r:s?\V_test\$??.go
        else
            silent! find %:t:r_test.go
        endif
    endif
endfunction

if has('patch-8.1.0360') || has('nvim-0.3.2')
    set diffopt=filler,internal,algorithm:histogram,indent-heuristic
endif

nnoremap <silent> <leader>ct :Ctags<cr>
nnoremap <silent> <leader>cT :Ctags<space>
command! -complete=file -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q <args>

set csverb
" set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-,a-
nnoremap <silent> <leader>cs :Cscope<cr>
nnoremap <silent> <leader>cS :Cscope<space>
command! -complete=file -nargs=* Cscope !cscope -Rbqk <args>
nnoremap <silent> <C-\>q :set cscopequickfix=<c-r>=&cscopequickfix == '' ? 's-,g-,d-,c-,t-,e-,f-,i-,a-' : ''<cr><cr>
nnoremap <silent> <C-\><bs> :set invcst<cr>
nnoremap <silent> <C-\><c-h> :set invcst<cr>
nnoremap <silent> <C-\>\ :cs add .<cr>
nnoremap <silent> <C-\><bar> :cs add<space>
nnoremap <silent> <C-\><cr> :cs show<cr>
nnoremap <silent> <C-\>h :cs help<cr>
nnoremap <silent> <C-\>r :cs reset<cr>
nnoremap <silent> <C-\>k :cs kill -1<cr>
nnoremap <silent> <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <silent> <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nnoremap <silent> <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\>A :cs find a<space>
nnoremap <silent> <C-\>S :cs find s<space>
nnoremap <silent> <C-\>G :cs find g<space>
nnoremap <silent> <C-\>C :cs find c<space>
nnoremap <silent> <C-\>T :cs find t<space>
nnoremap <silent> <C-\>E :cs find e<space>
nnoremap <silent> <C-\>F :cs find f<space>
nnoremap <silent> <C-\>I :cs find i<space>
nnoremap <silent> <C-\>D :cs find d<space>
nnoremap <silent> <C-\><C-\>a :scs find a <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\><C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\><C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\><C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\><C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\><C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\><C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <silent> <C-\><C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nnoremap <silent> <C-\><C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-\><C-\>A :scs find a<space>
nnoremap <silent> <C-\><C-\>S :scs find s<space>
nnoremap <silent> <C-\><C-\>G :scs find g<space>
nnoremap <silent> <C-\><C-\>C :scs find c<space>
nnoremap <silent> <C-\><C-\>T :scs find t<space>
nnoremap <silent> <C-\><C-\>E :scs find e<space>
nnoremap <silent> <C-\><C-\>F :scs find f<space>
nnoremap <silent> <C-\><C-\>I :scs find i<space>
nnoremap <silent> <C-\><C-\>D :scs find d<space>

nnoremap <silent> <leader>vv :vimgrep //j %<left><left><left><left>
nnoremap <silent> <leader>vV :vimgrep //j **/*<left><left><left><left><left><left><left>
nnoremap <silent> <leader>vl :lvimgrep //j %<left><left><left><left>
nnoremap <silent> <leader>vL :lvimgrep //j **/*<left><left><left><left><left><left><left>
nnoremap <silent> <leader>ss :%s//g<left><left>
nnoremap <silent> <leader>sc :%s//gc<left><left><left>
xnoremap <silent> <leader>ss :s//g<left><left>
xnoremap <silent> <leader>sc :s//gc<left><left><left>
nnoremap <silent> <leader>qs :cdo s//g<left><left>
nnoremap <silent> <leader>qc :cdo s//gc<left><left><left>
nnoremap <silent> <leader>ls :ldo s//g<left><left>
nnoremap <silent> <leader>lc :ldo s//gc<left><left><left>
nnoremap <silent> <leader>bs :bufdo %s//g<left><left>
nnoremap <silent> <leader>bc :bufdo %s//gc<left><left><left>

augroup readNonTextFile
    au!
    autocmd BufReadPre *.docx,*.rtf,*.odp,*.odt silent set ro
    autocmd BufReadPost *.docx,*.rtf,*.odp,*.odt silent %!pandoc "%" -t markdown -o /dev/stdout
    " Read-only .doc through antiword
    " autocmd BufReadPre *.doc silent set ro
    " autocmd BufReadPost *.doc silent %!antiword "%"
    " Read-only odt/odp through odt2txt
    " autocmd BufReadPre *.odt,*.odp silent set ro
    " autocmd BufReadPost *.odt,*.odp silent %!odt2txt "%"
    " Read-only pdf through pdftotext
    autocmd BufReadPre *.pdf silent set ro
    autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78
    " Read-only rtf through unrtf
    " autocmd BufReadPre *.rtf silent set ro
    " autocmd BufReadPost *.rtf silent %!unrtf --text"
augroup END

command! W w !sudo tee % > /dev/null

set notimeout
" set timeoutlen=2000
set ttimeout
set ttimeoutlen=10

" set shortmess=a

set mouse=a
if exists('+ttymouse')
    if has('mouse_sgr')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif
set mousemodel=popup
nnoremap <silent> <leader>om :set mouse=<c-r>=&mouse == '' ? 'a' : ''<cr><cr>

nnoremap <silent> <c-]> g<c-]>
nnoremap <silent> g<c-]> <c-]>
xnoremap <silent> <c-]> g<c-]>
xnoremap <silent> g<c-]> <c-]>
nnoremap <silent> <c-w><c-]> <c-w>g<c-]>
nnoremap <silent> <c-w>g<c-]> <c-w><c-]>
xnoremap <silent> <c-w><c-]> <c-w>g<c-]>
xnoremap <silent> <c-w>g<c-]> <c-w><c-]>

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

if has('patch-8.1.1564')
    set signcolumn=number
endif
set number
" if has('patch-7.3.787')
"     set relativenumber
" endif
nnoremap <silent> <leader>or :set invrelativenumber<cr>
nnoremap <silent> <leader>on :set invnumber<cr>

set exrc
set secure

" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
" set noexpandtab

set cursorline
" set cursorcolumn

set splitbelow
set splitright
nnoremap <silent> <leader><bslash> :vs<cr>
nnoremap <silent> <leader><bar> :sp<cr>

set history=500

filetype plugin on
filetype indent on

set autoread

set foldmethod=indent
set foldlevelstart=99
set foldnestmax=3
" set nofoldenable
set foldcolumn=0

set display+=lastline

set re=1

set scrolloff=1
nnoremap <silent> <leader>oj :set scrolljump=<c-r>=&scrolljump == 1 ? '5' : '1'<cr><cr>

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
"     map <silent> <F12> :emenu <c-z>
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

set showbreak=↪\
" set listchars=tab:>-,trail:~,extends:>,precedes:<
" set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
" set list

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
" if $COLORTERM == 'gnome-terminal'
" set t_Co=256
" endif
" if has('cursorshape')
"     if &term =~? "xterm"
"         let &t_SI = "\<Esc>[6 q"
"         let &t_SR = "\<Esc>[4 q"
"         let &t_EI = "\<Esc>[2 q"
"     endif
" endif

set t_Co=256
if has('termguicolors')
    nnoremap <silent> <leader>ot :set invtermguicolors<cr>
endif

" let g:space_vim_dark_background = 235

augroup myColors
    autocmd!
    autocmd ColorScheme space-vim-dark hi LineNr     ctermbg=NONE guibg=NONE
    autocmd ColorScheme space-vim-dark hi SignColumn ctermbg=NONE guibg=NONE
    " autocmd ColorScheme space-vim-dark hi link SignColumn LineNr
    autocmd ColorScheme space-vim-dark hi Comment    ctermfg=59 guifg=#5C6370
    " autocmd ColorScheme space-vim-dark hi CursorLine ctermbg=0 guibg=#000000
    " autocmd ColorScheme space-vim-dark hi CursorColumn ctermbg=0 guibg=#000000
    " autocmd ColorScheme space-vim-dark hi CursorLineNr ctermbg=0 guibg=#000000
    autocmd ColorScheme space-vim-dark hi EndOfBuffer ctermfg=bg ctermbg=NONE guifg=bg guibg=NONE
augroup END

try
    colorscheme space-vim-dark

    " hi Comment cterm=italic
    " hi Normal     ctermbg=NONE guibg=NONE
    hi LineNr     ctermbg=NONE guibg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    " hi link SignColumn LineNr
    hi Comment    ctermfg=59 guifg=#5C6370
    " hi CursorLine ctermbg=0 guibg=#000000
    " hi CursorColumn ctermbg=0 guibg=#000000
    " hi CursorLineNr ctermbg=0 guibg=#000000
    hi EndOfBuffer ctermfg=bg ctermbg=NONE guifg=bg guibg=NONE
catch
endtry

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
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <silent> <c-k> <C-w>p5<C-y><C-w>p
nnoremap <silent> <c-j> <C-w>p5<C-e><C-w>p
" inoremap <silent> <c-k> <Esc><C-w>p5<C-y><C-w>pi
" inoremap <silent> <c-j> <Esc><C-w>p5<C-e><C-w>pi

nnoremap <silent> <leader><bs> :nohls<cr>
nnoremap <silent> <leader><c-h> :nohls<cr>

" Smart way to move between windows
nnoremap <silent> <s-j> <c-w>j
nnoremap <silent> <s-k> <c-w>k
nnoremap <silent> <s-h> <c-w>h
nnoremap <silent> <s-l> <c-w>l

nnoremap <silent> <leader>= <c-w>=
nnoremap <silent> <leader>+ :exe "resize +5"<cr>
nnoremap <silent> <leader>- :exe "resize -5"<cr>

" nnoremap <silent> <c-h> :bprevious<cr>
" nnoremap <silent> <c-l> :bnext<cr>
nnoremap <silent> <F3> :tabp<cr>
nnoremap <silent> <F4> :tabn<cr>

" Close the current buffer
" map <silent> <leader>bc :Bclose<cr>:tabclose<cr>gT
nnoremap <silent> <leader>bb :Bclose<cr>
" Don't close window, when deleting a buffer
command! Bclose call s:BufcloseCloseIt()
function! s:BufcloseCloseIt()
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
nnoremap <silent> <leader>bd :bufdo bd<cr>
nnoremap <silent> <leader>bh :call CloseHiddenBuffers()<cr>
function! CloseHiddenBuffers()
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

nnoremap <silent> <leader><tab> :bnext<cr>
nnoremap <silent> <leader><s-tab> :bprevious<cr>

" Useful mappings for managing tabs
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>to :tabonly<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
nnoremap <silent> <leader>tm :tabmove<cr>
nnoremap <silent> <leader>t<leader> :tabnext<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nnoremap <silent> <leader>tl :exe "tabn ".g:lasttab<cr>
augroup tabLeave
    au!
    au TabLeave * let g:lasttab = tabpagenr()
augroup END

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <silent> <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nnoremap <silent> <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <silent> <leader>cD :call SetCwd()<cr>
function! SetCwd()
    let cph = expand('%:p:h', 1)
    if cph =~ '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
        let wd = call('find'.(mkr =~ '/$' ? 'dir' : 'file'), [mkr, cph.';'])
        if wd != '' | let &acd = 0 | brea | en
    endfo
    exe 'lc!' fnameescape(wd == '' ? cph : substitute(wd, mkr.'$', '.', ''))
endfunction

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
" nnoremap <silent> <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" nnoremap <silent> <leader>sn ]s
" nnoremap <silent> <leader>sp [s
" nnoremap <silent> <leader>sa zg
" nnoremap <silent> <leader>s? z=

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
nnoremap <silent> <leader>e :e! ~/.vim_runtime/my_config.vim<cr>
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
cnoremap <silent> <C-A> <Home>
cnoremap <silent> <C-E> <End>
cnoremap <silent> <C-K> <C-U>

cnoremap <silent> <C-P> <Up>
cnoremap <silent> <C-N> <Down>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

let g:OmniCpp_AddLeftParen = 0
let g:OmniCpp_NamespaceSearch = 1
let g:OmniCpp_GlobalScopeSearch = 1
let g:OmniCpp_ShowAccess = 1
let g:OmniCpp_MayCompleteDot = 1
let g:OmniCpp_MayCompleteArrow = 1
let g:OmniCpp_MayCompleteScope = 1
let g:OmniCpp_ShowPrototypeInAbbr = 1
let g:OmniCpp_DefaultNamespaces = ['std', '_GLIBCXX_STD']

imap <silent> <C-\> <Plug>(neosnippet_expand_or_jump)
smap <silent> <C-\> <Plug>(neosnippet_expand_or_jump)
xmap <silent> <C-\> <Plug>(neosnippet_expand_target)
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
    nnoremap <silent> <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview <bar>
                \ if exists('b:neocomplete') <bar> unlet b:neocomplete <bar> endif <cr>
    inoremap <silent> <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>"<cr>
                \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>"<cr>
    inoremap <silent> <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n>
else
    set completeopt=menuone
    nnoremap <silent> <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
    inoremap <silent> <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>\<lt>c-p>"<cr>
                \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>\<lt>c-p>"<cr>
    inoremap <silent> <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n><c-p>
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
" let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
" let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.python = '[^. \t]\.\w*'
" let g:neocomplete#force_omni_input_patterns.java = '\%(\h\w*\|)\)\.\w*'

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
" let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'
" let g:neocomplete#sources#omni#input_patterns.python = '[^. \t]\.\w*'

nmap <silent> <leader><cr><cr> <Plug>(lsp-status)
nmap <silent> <leader><cr>a <Plug>(lsp-code-action)
nmap <silent> <leader><cr>f <Plug>(lsp-document-range-format)
nmap <silent> <leader><cr>F <Plug>(lsp-document-format)
nmap <silent> <leader><cr>d <Plug>(lsp-document-diagnostics)
nmap <silent> <leader><cr>1 <Plug>(lsp-peek-declaration)
nmap <silent> <leader><cr>3 <Plug>(lsp-declaration)
nmap <silent> <leader><cr>2 <Plug>(lsp-peek-definition)
nmap <silent> <leader><cr>4 <Plug>(lsp-definition)
nmap <silent> <leader><cr>i <Plug>(lsp-peek-implementation)
nmap <silent> <leader><cr>L <Plug>(lsp-implementation)
nmap <silent> <leader><cr>h <Plug>(lsp-hover)
nmap <silent> <leader><cr>r <Plug>(lsp-references)
nmap <silent> <leader><cr>R <Plug>(lsp-rename)
nmap <silent> <leader><cr>t <Plug>(lsp-peek-type-definition)
nmap <silent> <leader><cr>T <Plug>(lsp-type-definition)
nmap <silent> <leader><cr>s <Plug>(lsp-document-symbol)
nmap <silent> <leader><cr>S <Plug>(lsp-workspace-symbol)
nmap <silent> ]e <Plug>(lsp-next-error)
nmap <silent> ]r <Plug>(lsp-next-reference)
nmap <silent> [e <Plug>(lsp-previous-error)
nmap <silent> [r <Plug>(lsp-previous-reference)
nmap <silent> <leader><cr>] <Plug>(lsp-preview-focus)
nmap <silent> <leader><cr>[ <Plug>(lsp-preview-close)
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
        let g:neocomplete#force_omni_input_patterns.go = '[^.[:digit:] *\t]\.\w*'
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

if has('lua')
    let g:necosyntax#max_syntax_lines = 3000
    let g:neocomplete#enable_auto_close_preview = 0
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
    inoremap <silent> <expr> <C-g> neocomplete#undo_completion()
    inoremap <silent> <expr> <C-l> neocomplete#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? "\<C-y>" : "\<CR>"
    endfunction
    " <TAB>: completion.
    inoremap <silent> <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <silent> <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
    inoremap <silent> <expr> <down> pumvisible() ? "\<C-n>" : "\<down>"
    inoremap <silent> <expr> <up> pumvisible() ? "\<C-p>" : "\<up>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <silent> <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <silent> <expr> <BS> neocomplete#smart_close_popup()."\<BS>"
    " Enable heavy omni completion.

    try
        call neocomplete#custom#source('_', 'converters',
                    \ ['converter_remove_overlap', 'converter_remove_last_paren',
                    \  'converter_abbr'])
        " call neocomplete#custom#source('_', 'converters',
        "             \ ['converter_remove_overlap', 'converter_add_paren',
        "             \  'converter_abbr'])
        call neocomplete#custom#source('buffer', 'rank', 100)
    catch
    endtry
else
    let g:neocomplcache_enable_auto_close_preview = 0
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_smart_case = 1
    let g:neocomplcache_enable_underbar_completion = 0
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_tags_caching_limit_file_size = 10 * 1024 * 1024
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    " let g:neocomplcache_enable_auto_select = 1
    " let g:neocomplcache_disable_auto_complete = 1

    inoremap <silent> <expr> <C-g> neocomplcache#undo_completion()
    inoremap <silent> <expr> <C-l> neocomplcache#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        " return neocomplcache#smart_close_popup() . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
    endfunction

    inoremap <silent> <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <silent> <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
    inoremap <silent> <expr> <down> pumvisible() ? "\<C-n>" : "\<down>"
    inoremap <silent> <expr> <up> pumvisible() ? "\<C-p>" : "\<up>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <silent> <expr> <C-h> neocomplcache#smart_close_popup()."\<C-h>"
    inoremap <silent> <expr> <BS> neocomplcache#smart_close_popup()."\<BS>"
    " inoremap <silent> <expr> <C-y> neocomplcache#close_popup()
    " inoremap <silent> <expr> <C-e> neocomplcache#cancel_popup()
    " Close popup by <Space>.
    " inoremap <silent> <expr> <Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
    " inoremap <silent> <expr> <C-j> neocomplcache#start_manual_complete()
    " inoremap <silent> <expr> <C-k> neocomplcache#cancel_popup()

    " Enable heavy omni completion.
    if !exists('g:neocomplcache_force_omni_patterns')
        let g:neocomplcache_force_omni_patterns = g:neocomplete#force_omni_input_patterns
    endif

    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = g:neocomplete#sources#omni#input_patterns
    endif
endif

" let g:echodoc_enable_at_startup = 1
if has('nvim') && exists('*nvim_open_win')
    let g:echodoc_enable_at_startup = 1
    let g:echodoc#type = 'floating'
endif

" autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 30
nnoremap <silent> <leader>nn :NERDTreeToggle<cr>
nnoremap <silent> <leader>nb :NERDTreeFromBookmark<space>
nnoremap <silent> <leader>nf :NERDTreeFocus<cr>
nnoremap <silent> <leader>nF :NERDTreeFind<cr>
nnoremap <silent> <leader>nv :NERDTreeVCS<cr>
nnoremap <silent> <leader>nc :NERDTreeCWD<cr>
nnoremap <silent> <leader>nr :NERDTreeRefreshRoot<cr>
nnoremap <silent> <leader>nm :NERDTreeMirror<cr>
augroup closeNERDTreeBuffer
    autocmd!
    autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
augroup END

let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_map = '<c-p>'
nnoremap <silent> <leader>pp :CtrlP<cr>
nnoremap <silent> <leader>pw :CtrlPCurFile<cr>
nnoremap <silent> <leader>pW :CtrlPCurWD<cr>
nnoremap <silent> <leader>pb :CtrlPBuffer<cr>
nnoremap <silent> <leader>pt :CtrlPTag<cr>
nnoremap <silent> <leader>pl :CtrlPLine<cr>
nnoremap <silent> <leader>pL :CtrlPLastMode<cr>
nnoremap <silent> <leader>pq :CtrlPQuickfix<cr>
nnoremap <silent> <leader>pr :CtrlPRTS<cr>
nnoremap <silent> <leader>pm :CtrlPMRU<cr>
nnoremap <silent> <leader>pM :CtrlPMixed<cr>
nnoremap <silent> <leader>pu :CtrlPUndo<cr>
nnoremap <silent> <leader>pC :CtrlPChange<cr>
nnoremap <silent> <leader>pd :CtrlPDir<cr>

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

nnoremap <silent> <leader>pf :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <silent> <leader>pF :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_multi_buffers = 1

if has('python') || has('python3')
    nnoremap <silent> <leader>pc :CtrlPCmdPalette<cr>
    " nnoremap <silent> <c-n> :CtrlPCmdPalette<cr>
endif
" nnoremap <silent> <leader>pc :CtrlPCommandPalette<cr>
" nnoremap <silent> <c-p> :CtrlPCommandPalette<cr>

let g:gitgutter_enabled=1
let g:gitgutter_map_keys = 0
omap <silent> ih <Plug>(GitGutterTextObjectInnerPending)
omap <silent> ah <Plug>(GitGutterTextObjectOuterPending)
xmap <silent> ih <Plug>(GitGutterTextObjectInnerVisual)
xmap <silent> ah <Plug>(GitGutterTextObjectOuterVisual)
nmap <silent> ]h <Plug>(GitGutterNextHunk)
nmap <silent> [h <Plug>(GitGutterPrevHunk)
nmap <silent> <leader>hs <Plug>(GitGutterStageHunk)
nmap <silent> <leader>hu <Plug>(GitGutterUndoHunk)
nmap <silent> <leader>hp <Plug>(GitGutterPreviewHunk)
nnoremap <silent> <leader>hh :GitGutterToggle<cr>

" nnoremap <silent> <leader>fl :Flog<cr>
" nnoremap <silent> <leader>fL :Flog<space>

nnoremap <silent> <leader>gv :GV<cr>
nnoremap <silent> <leader>gV :GV!<cr>
vnoremap <silent> <leader>gv :GV<cr>
vnoremap <silent> <leader>gV :GV?<cr>

nnoremap <silent> <leader>gb :Gblame<cr>
nnoremap <silent> <leader>gB :Gbrowse<cr>
nnoremap <silent> <leader>gc :Gcommit<cr>
nnoremap <silent> <leader>gC :Git checkout<space>
nnoremap <silent> <leader>gd :Gdiff<cr>
nnoremap <silent> <leader>gD :Gdelete<cr>
nnoremap <silent> <leader>gg :Ggrep<space>
nnoremap <silent> <leader>gm :Gmerge<space>
nnoremap <silent> <leader>gM :Gmove<space>
nnoremap <silent> <leader>gl :Glog<cr>
nnoremap <silent> <leader>gL :Glog!<cr>
nnoremap <silent> <leader>gh :0Glog<cr>
nnoremap <silent> <leader>gH :0Glog!<cr>
nnoremap <silent> <leader>gf :Gfetch<cr>
nnoremap <silent> <leader>gp :Gpush<cr>
nnoremap <silent> <leader>gP :Gpull<cr>
nnoremap <silent> <leader>gs :Gstatus<cr>
nnoremap <silent> <leader>gS :Git stash<cr>
nnoremap <silent> <leader>gr :Gread<cr>
nnoremap <silent> <leader>gR :Gremove<cr>
nnoremap <silent> <leader>ge :Gedit<cr>
nnoremap <silent> <leader>gw :Gwrite<cr>
nnoremap <silent> <leader>gi :Gist<cr>

" nnoremap <silent> <leader>ms :DoShowMarks<cr>
" nnoremap <silent> <leader>mS :NoShowMarks<cr>
" nnoremap <silent> <leader>mp :PreviewMarks<cr>

" let g:yankstack_yank_keys = ['y', 'd']
nmap <silent> <F9> <Plug>yankstack_substitute_older_paste
nmap <silent> <F10> <Plug>yankstack_substitute_newer_paste
imap <silent> <F9> <Plug>yankstack_substitute_older_paste
imap <silent> <F10> <Plug>yankstack_substitute_newer_paste

let g:tagbar_width = 30
let g:tagbar_compact = 1
nnoremap <silent> <leader>tt :TagbarToggle<cr>
nnoremap <silent> <leader>ta :TagbarOpenAutoClose<cr>

nnoremap <silent> <leader>rr :AsyncRun<space>
nnoremap <silent> <leader>rs :AsyncStop<cr>
" let g:asyncrun_bell = 1
" map <silent> <leader>q :call asyncrun#quickfix_toggle(8)<cr>
" let g:asyncrun_open = 10
" let g:asyncrun_save = 2
let g:asyncrun_auto = "make"

let g:fzf_command_prefix = 'FZF'
" Mapping selecting mappings
" nmap <silent> <c-b> <plug>(fzf-maps-n)
" xmap <silent> <c-b> <plug>(fzf-maps-x)
" omap <silent> <c-b> <plug>(fzf-maps-o)
" nnoremap <silent> <c-c> :FzfCommand<cr>
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" nnoremap <silent> <c-n> :FZFCommands<cr>
nnoremap <silent> <leader>zz :FZFFiles<cr>
nnoremap <silent> <leader>zZ :FZFFiletypes<cr>
nnoremap <silent> <leader>zf :FZFGFiles<cr>
nnoremap <silent> <leader>zF :FZFGFiles?<cr>
nnoremap <silent> <leader>zb :FZFBuffers<cr>
nnoremap <silent> <leader>zc :FZFCommands<cr>
nnoremap <silent> <leader>zC :FZFColors<cr>
nnoremap <silent> <leader>zC :FZFColors<cr>
nnoremap <silent> <leader>za :FZFAg<cr>
nnoremap <silent> <leader>zr :FZFRg<cr>
nnoremap <silent> <leader>zl :FZFLines<cr>
nnoremap <silent> <leader>zL :FZFBLines<cr>
nnoremap <silent> <leader>zt :FZFTags<cr>
nnoremap <silent> <leader>zT :FZFBTags<cr>
nnoremap <silent> <leader>zm :FZFMarks<cr>
nnoremap <silent> <leader>zw :FZFWindows<cr>
nnoremap <silent> <leader>zh :FZFHistory<cr>
nnoremap <silent> <leader>zH :FZFHelptags<cr>
nnoremap <silent> <leader>zs :FZFSnippets<cr>
nnoremap <silent> <leader>zg :FZFGGrep<cr>
nnoremap <silent> <leader>zG :FZFGrep<cr>

nnoremap <silent> <leader>Zz :FZFFiles!<cr>
nnoremap <silent> <leader>ZZ :FZFFiletypes!<cr>
nnoremap <silent> <leader>Zf :FZFGFiles!<cr>
nnoremap <silent> <leader>ZF :FZFGFiles!?<cr>
nnoremap <silent> <leader>Zb :FZFBuffers!<cr>
nnoremap <silent> <leader>Zc :FZFCommands!<cr>
nnoremap <silent> <leader>ZC :FZFColors!<cr>
nnoremap <silent> <leader>ZC :FZFColors!<cr>
nnoremap <silent> <leader>Za :FZFAg!<cr>
nnoremap <silent> <leader>Zr :FZFRg!<cr>
nnoremap <silent> <leader>Zl :FZFLines!<cr>
nnoremap <silent> <leader>ZL :FZFBLines!<cr>
nnoremap <silent> <leader>Zt :FZFTags!<cr>
nnoremap <silent> <leader>ZT :FZFBTags!<cr>
nnoremap <silent> <leader>Zm :FZFMarks!<cr>
nnoremap <silent> <leader>Zw :FZFWindows!<cr>
nnoremap <silent> <leader>Zh :FZFHistory!<cr>
nnoremap <silent> <leader>ZH :FZFHelptags!<cr>
nnoremap <silent> <leader>Zs :FZFSnippets!<cr>
nnoremap <silent> <leader>Zg :FZFGGrep!<cr>
nnoremap <silent> <leader>ZG :FZFGrep!<cr>

command! -bang -nargs=* FZFGGrep
            \ call fzf#vim#grep(
            \    'git grep --line-number '.shellescape(<q-args>),
            \     0,
            \     <bang>0 ? fzf#vim#with_preview(
            \             { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, 'up:60%') :
            \         fzf#vim#with_preview(
            \             { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, 'right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=* FZFGrep
            \ call fzf#vim#grep(
            \    'grep --line-number -r '.shellescape(<q-args>).' .',
            \     0,
            \     <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=* FZFAg
            \ call fzf#vim#ag(<q-args>,
            \                 <bang>0 ? fzf#vim#with_preview('up:60%')
            \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
            \                 <bang>0)
command! -bang -nargs=* FZFRg
            \ call fzf#vim#grep(
            \    'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
            \     <bang>0 ? fzf#vim#with_preview('up:60%')
            \            : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0
            \)
command! -bang -nargs=* FZFHistory
            \ call fzf#vim#history(
            \     <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=? -complete=dir FZFFiles
            \ call fzf#vim#files(<q-args>,
            \     <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0)
command! -bar -bang -nargs=0 FZFFiletypes
            \ call fzf#vim#filetypes({'left': '15%', 'options': '--reverse --margin 5%,0'}, <bang>0)
command! -bar -bang -nargs=0 FZFColors
            \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 5%,0'}, <bang>0)
command! -bang -nargs=* FZFBTags
            \ call fzf#vim#buffer_tags(<q-args>, {
            \     'down': '40%',
            \     'options': '--preview-window=' . (<bang>0 ? 'right:50%' : '60%:hidden') .
            \                ' --preview "
            \                     tail -n +0\$(echo {3} | sed -nr \"s/([0-9]+);\\\"/\1/p\") {2} |
            \                     head -n ' . (<bang>0 ? '48"' : '16"') .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m'
            \ }, <bang>0)
command! -bang -nargs=* FZFTags
            \ call fzf#vim#tags(<q-args>, {
            \     'down': '40%',
            \     'options': '--preview-window=' . (<bang>0 ? 'up:60%' : '50%:hidden') .
            \                ' --preview "
            \                     tail -n +0\$(echo {3} | sed -nr \"s/([0-9]+);\\\"/\1/p\") {2} |
            \                     head -n ' . (<bang>0 ? '48"' : '16"') .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m'
            \ }, <bang>0)
command! -bang -nargs=* FZFBLines
            \ call fzf#vim#buffer_lines(<q-args>, {
            \     'down': '40%',
            \     'options': '--preview-window=' . (<bang>0 ? 'up:60%' : '50%:hidden') .
            \                ' --preview "
            \                     tail -n +{1} ' . expand('%') . ' |
            \                     head -n ' . (<bang>0 ? '48"' : '16"') .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m'
            \ }, <bang>0)

nmap <silent> <c-_> <Plug>CommentaryLine
vmap <silent> <c-_> <Plug>Commentary
augroup commentStr
    autocmd!
    autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
augroup END

nnoremap <silent> <leader>db :DB<space>
nnoremap <silent> <leader>dB :%DB<space>
vnoremap <silent> <leader>db :DB<space>

let g:gutentags_modules = []
if executable('ctags')
    call add(g:gutentags_modules, 'ctags')
endif
if executable('gtags-cscope')
    call add(g:gutentags_modules, 'gtags_cscope')
elseif executable('cscope')
    call add(g:gutentags_modules, 'cscope')
endif
let g:gutentags_define_advanced_commands = 1
let g:gutentags_ctags_extra_args = ['--sort=yes', '--c++-kinds=+p', '--fields=+mnialS', '--extra=+q']
let g:gutentags_cache_dir = '~/.vim_gutentags'

" let g:easytags_include_members = 1
" let g:easytags_async = 1
" let g:easytags_opts = ['--sort=yes', '--c++-kinds=+p', '--fields=+iaS', '--extra=+q']

let g:airline_theme = 'violet'
" let g:airline#themes#dracula#palette.tabline = {}
" let g:airline#themes#dracula#palette.tabline.airline_tabhid = ['#f8f8f2', '#f8f8f2', '15', '59', '']
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
" let g:airline#extensions#tabline#show_buffers = 1
" let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''
nmap <silent> <leader>1 <Plug>AirlineSelectTab1
nmap <silent> <leader>2 <Plug>AirlineSelectTab2
nmap <silent> <leader>3 <Plug>AirlineSelectTab3
nmap <silent> <leader>4 <Plug>AirlineSelectTab4
nmap <silent> <leader>5 <Plug>AirlineSelectTab5
nmap <silent> <leader>6 <Plug>AirlineSelectTab6
nmap <silent> <leader>7 <Plug>AirlineSelectTab7
nmap <silent> <leader>8 <Plug>AirlineSelectTab8
nmap <silent> <leader>9 <Plug>AirlineSelectTab9

let g:asyncrun_status = ''
try
    let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
catch
endtry

let g:goyo_width = '80%'
let g:goyo_height = '95%'
nnoremap <silent> <leader>go :Goyo<cr>

" augroup changeLimelight
"     autocmd!
"     autocmd User GoyoEnter Limelight
"     autocmd User GoyoLeave Limelight!
" augroup END
" nmap <silent> <Leader>lM <Plug>(Limelight)
" xmap <silent> <Leader>lM <Plug>(Limelight)
nnoremap <silent> <leader>lm :Limelight<cr>
nnoremap <silent> <leader>lM :Limelight!<cr>

xmap <silent> ga <Plug>(EasyAlign)
nmap <silent> ga <Plug>(EasyAlign)

nnoremap <silent> <c-g> :Grepper<cr>
if !exists('g:grepper')
    let g:grepper = {}
endif
let g:grepper.prompt_mapping_tool = '<c-g>'

nnoremap <silent> <leader>fg :FlyGrep<cr>

" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
" nnoremap <silent> <leader>i :IndentGuidesToggle<cr>

let g:better_whitespace_ctermcolor = '8'
let g:better_whitespace_guicolor = '#808080'
let g:better_whitespace_operator = 'gs'
nnoremap <silent> <leader>sp :ToggleWhitespace<cr>

nnoremap <silent> <leader>x :Sayonara<cr>
nnoremap <silent> <leader>X :Sayonara!<cr>

let g:EasyMotion_do_mapping = 1

let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle
nnoremap <silent> <leader>rb :RainbowToggle<cr>

nnoremap <silent> <leader>uu :UndotreeToggle<cr>
nnoremap <silent> <leader>uf :UndotreeFocus<cr>
nnoremap <silent> <leader>us :UndotreeShow<cr>
nnoremap <silent> <leader>uh :UndotreeHide<cr>
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

nnoremap <silent> <leader>mm :MarkifyToggle<cr>
nnoremap <silent> <leader>mk :Markify<cr>
nnoremap <silent> <leader>mc :MarkifyClear<cr>
" let g:markify_echo_current_message = 1

nnoremap <silent> <leader>aw :ArgWrap<cr>
augroup setArgWrap
    au!
    au FileType go let b:argwrap_tail_comma = 1
    au FileType vim let b:argwrap_line_prefix = '\'
augroup END

" ctrl-b is unused in insert mode
imap <silent> <c-b> <c-o><Plug>(cosco-commaOrSemiColon)
nmap <silent> <c-b> <Plug>(cosco-commaOrSemiColon)
" nmap <silent> <c-space> <Plug>(cosco-commaOrSemiColon)o
" imap <silent> <c-space> <esc><Plug>(cosco-commaOrSemiColon)o

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap <silent> <leader>fm :Neoformat<cr>
vnoremap <silent> <leader>fm :Neoformat<cr>
nnoremap <silent> <leader>fM :Neoformat<space>
vnoremap <silent> <leader>fM :Neoformat<space>

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
nnoremap <silent> <leader>st :Startify<cr>

if exists(':terminal')
    nnoremap <silent> <c-n> :Nuake<cr>
    if has('nvim')
        tnoremap <silent> <c-n> <c-\><c-n>:Nuake<cr>
    else
        tnoremap <silent> <c-n> <c-w>:Nuake<cr>
    endif
endif

nnoremap <silent> <leader>co :Codi!!<cr>
nnoremap <silent> <leader>cO :Codi!!<space>

try
    " call textobj#user#plugin('datetime', {
    "             \   'date': {
    "             \     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
    "             \     'select': ['ad', 'id'],
    "             \   },
    "             \ })
    call textobj#user#plugin('line', {
                \   'line-a': {
                \     'pattern': '\v^.*$',
                \     'select': 'al',
                \     'scan': 'line',
                \   },
                \   'line-i': {
                \     'pattern': '\v^\s*\zs.{-}\ze\s*$',
                \     'select': 'il',
                \     'scan': 'line',
                \   },
                \ })
    call textobj#user#plugin('underscore', {
                \   'underscore-a': {
                \     'pattern': '\v_*[a-zA-Z0-9]*',
                \     'select': ['a_', 'au'],
                \     'scan': 'line',
                \   },
                \   'underscore-i': {
                \     'pattern': '\v_*\zs[a-zA-Z0-9]*\ze',
                \     'select': ['i_', 'iu'],
                \     'scan': 'line',
                \   },
                \ })
    " call textobj#user#plugin('comma', {
    "             \   'comma-a': {
    "             \     'pattern': '\v(,[^,]+)|((\(|\[|\{)\zs[^,([{]*,\s*\ze)|(\zs,[^,]{-}\ze(\)|\]|\}))',
    "             \     'select': 'a,',
    "             \     'scan': 'line',
    "             \   },
    "             \   'comma-i': {
    "             \     'pattern': '\v(,\zs[^,)\]}]*\ze)|((\(|\[\{)\zs[^,([{]*\ze,)|(,\zs[^,]{-}\ze(\)\]\}))',
    "             \     'select': 'i,',
    "             \     'scan': 'line',
    "             \   },
    "             \ })
    call textobj#user#plugin('semicolon', {
                \   'semicolon-a': {
                \     'pattern': '\v(^\s*)=\zs[^;]*;\ze',
                \     'select': 'a;',
                \     'scan': 'cursor',
                \   },
                \   'semicolon-i': {
                \     'pattern': '\v(^\s*)=\zs[^;]*\ze;',
                \     'select': 'i;',
                \     'scan': 'cursor',
                \   },
                \ })
    call textobj#user#plugin('camel', {
                \   'camel-a': {
                \     'pattern': '\v([A-Z]+[a-z]*)|[0-9]+|[a-z]+',
                \     'select': ['ac', 'a~'],
                \     'scan': 'cursor',
                \   },
                \   'camel-i': {
                \     'pattern': '\v([A-Z][a-z]*)|[0-9]+|[a-z]+',
                \     'select': ['ic', 'i~'],
                \     'scan': 'cursor',
                \   },
                \ })
catch
endtry

if has('python') || has('python3')
    let g:vtm_default_mapping = 0
    let g:vtm_default_engines = ['ciba', 'google']
    nmap <silent> <leader>ts <plug>Translate
    vmap <silent> <leader>tS <plug>TranslateV
    nmap <silent> <leader>tw <Plug>TranslateW
    vmap <silent> <leader>tW <Plug>TranslateWV
    " nmap <silent> <Leader>ts :Translate -w<space>
    " nmap <silent> <Leader>tw :TranslateW -w<space>
    nmap <silent> <Leader>th :TranslateH<cr>
endif

