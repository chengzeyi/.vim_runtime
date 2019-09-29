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

inoremap <c-a> <home>
inoremap <c-e> <end>
function! MapMotion(from, ...)
    let from = a:from
    let to = a:0 == 0 ? a:from : a:1
    exec 'noremap ' . from . ' g' . to
    exec 'noremap g' . from . ' ' . to
endfunction
call MapMotion('j')
call MapMotion('k')
call MapMotion('0', '^')
call MapMotion('^', '0')
call MapMotion('$')
nnoremap Q @q
nnoremap M `m
nnoremap Y y$
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
nnoremap <leader>cb :cbuffer<cr>
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
vnoremap <expr> " '"' . BetterRegister()
vnoremap <expr> @ '@' . BetterRegister()
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
vnoremap <expr> ' "'" . BetterMark()
vnoremap <expr> ` '`' . BetterMark()
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
nnoremap <leader>f= :set foldlevel=<c-r>=&foldlevel ? '0' : '99'<cr><cr>
nnoremap <leader>fs :setlocal foldexpr=getline(v:lnum)=~@/?0:1 foldmethod=
    \<c-r>=&foldmethod == 'expr' ? 'indent' : 'expr'<cr> foldlevel=
    \<c-r>=&foldmethod == 'expr' ? '99' : '0'<cr><cr>
nnoremap <leader>of :set foldcolumn=<c-r>=&foldcolumn == 0 ? '1' : '0'<cr><cr>
if has('patch-8.1.1564')
    nnoremap <leader>os :set signcolumn=<c-r>=&signcolumn == 'no' ? 'number' : 'no'<cr><cr>
else
    nnoremap <leader>os :set signcolumn=<c-r>=&signcolumn == 'no' ? 'auto' : 'no'<cr><cr>
endif
vnoremap <expr> . expand('<lt>cword>') =~# '[(){}\[\]]' ? 'a'.expand('<lt>cword>') : '.'
if has('patch-8.1.1880') && has('textprop')
    " if (v:version > 801 || (v:version == 801 && has('patch1880'))) &&
    "             \ has('textprop')
    " set completeopt+=popup
    set previewpopup=height:15,width:60
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
        let cmd = 'fanyi --nocolor ' . @@
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

command! -nargs=+ P call P(<q-args>)
function! P(cmd)
    if exists('*popup_atcursor')
        let out = system(a:cmd)
        let out = split(out, "\n")
        call popup_atcursor(out, #{
            \ pos: 'botright',
            \ maxheight: 15,
            \ maxwidth: 60,
            \ padding: [0, 1, 0, 1],
            \ highlight: 'CursorColumn',
            \ })
    else
        let cmd = substitute(a:cmd, '\v[ \t]', '\\ ', 'g')
        let cmd = substitute(cmd, '\v\n', ';\\ ', 'g')
        let cmd = substitute(cmd, '\v\|', '\\|', 'g')
        exe 'noautocmd pedit +exe\ "set\ bufhidden=wipe\ buftype=nofile\\n%d\\nread\ !' . cmd . '\\n1" [Popup Cmd]'
    endif
endfunction

nnoremap <leader>p- :set previewheight-=<c-r>=&previewheight <= 0 ? '0' : '1'<cr><cr>
nnoremap <leader>p+ :set previewheight+=1<cr>
nnoremap <leader>p= :set previewheight=6<cr>
if executable('zsh')
    set shell=zsh
elseif executable('fish')
    set shell=fish
endif
if exists(':terminal')
    if has('nvim')
        tnoremap <F1> <c-\><c-n>
    else
        tnoremap <F1> <c-w>N
    endif
endif
if exists(':packadd')
    nnoremap <leader>dd :packadd termdebug <bar> Termdebug<space>
    nnoremap <leader>dD :packadd termdebug <bar> TermdebugCommand<space>
    " nnoremap <leader>dr :Run<cr>
    " nnoremap <leader>dR :Run<space>
    " nnoremap <leader>da :Arguments<space>
    " nnoremap <leader>de :Evaluate<cr>
    " nnoremap <leader>dE :Evaluate<space>
    " nnoremap <leader>db :Break<cr>
    " nnoremap <leader>ds :Step<cr>
    " nnoremap <leader>dS :Stop<cr>
    " nnoremap <leader>do :Over<cr>
    " nnoremap <leader>df :Finish<cr>
    " nnoremap <leader>dc :Continue<cr>
    " nnoremap <leader>dC :Clear<cr>
    " nnoremap <leader>d[ :Gdb<cr>
    " nnoremap <leader>d] :Program<cr>
    " nnoremap <leader>d\ :Source<cr>

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

" Changes to allow blank lines in blocks, and
" Top level blocks (zero indent) separated by two or more blank lines.
" Usage: source <thisfile> in pythonmode and
" Press: vai, vii to select outer/inner python blocks by indetation.
" Press: vii, yii, dii, cii to select/yank/delete/change an indented block.
onoremap ai :<C-u>call IndTxtObj(0)<CR>
onoremap ii :<C-u>call IndTxtObj(1)<CR>
vnoremap ai <Esc>:call IndTxtObj(0)<CR><Esc>gv
vnoremap ii <Esc>:call IndTxtObj(1)<CR><Esc>gv
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
nnoremap <leader>qq :QToggle<cr>
nnoremap <leader>ll :LToggle<cr>
nnoremap <leader>qe :cexpr [] <bar> :cclose<cr>
nnoremap <leader>le :lexpr [] <bar> :lclose<cr>
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


augroup compileAndRun
    au!
    if executable('python3')
        au filetype python nnoremap <buffer> <localleader>r :w <bar> !python3 %<cr>
        au filetype python nnoremap <buffer> <localleader>R :w <bar> !python3 %<space>
    else
        au filetype python nnoremap <buffer> <localleader>r :w <bar> !python %<cr>
        au filetype python nnoremap <buffer> <localleader>R :w <bar> !python %<space>
    endif
    au filetype c nnoremap <buffer> <localleader>r :w <bar>
                \ !gcc % -o %:r && ./%:r<cr>
    au filetype c nnoremap <buffer> <localleader>R :w <bar>
                \ !gcc % -o %:r && ./%:r<space>
    au filetype cpp nnoremap <buffer> <localleader>r :w <bar>
                \ !g++ % -o %:r && ./%:r<cr>
    au filetype cpp nnoremap <buffer> <localleader>R :w <bar>
                \ !g++ % -o %:r && ./%:r<space>
augroup END

nnoremap <leader>aa :call AlternateFile()<cr>
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

nnoremap <leader>ct :Ctags<cr>
nnoremap <leader>cT :Ctags<space>
command! -complete=file -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q <args>

set csverb
" set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-,a-
nnoremap <leader>cs :Cscope<cr>
nnoremap <leader>cS :Cscope<space>
command! -complete=file -nargs=* Cscope !cscope -Rbqk <args>
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
nnoremap <leader>om :set mouse=<c-r>=&mouse == '' ? 'a' : ''<cr><cr>

nnoremap <c-]> g<c-]>
nnoremap g<c-]> <c-]>
xnoremap <c-]> g<c-]>
xnoremap g<c-]> <c-]>
nnoremap <c-w><c-]> <c-w>g<c-]>
nnoremap <c-w>g<c-]> <c-w><c-]>
xnoremap <c-w><c-]> <c-w>g<c-]>
xnoremap <c-w>g<c-]> <c-w><c-]>

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
nnoremap <leader>or :set invrelativenumber<cr>
nnoremap <leader>on :set invnumber<cr>

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
nnoremap <leader><bslash> :vs<cr>
nnoremap <leader><bar> :sp<cr>

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
nnoremap <leader>oj :set scrolljump=<c-r>=&scrolljump == 1 ? '5' : '1'<cr><cr>

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
    nnoremap <leader>ot :set invtermguicolors<cr>
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
vnoremap * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <c-k> <C-w>p5<C-y><C-w>p
nnoremap <c-j> <C-w>p5<C-e><C-w>p
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
nnoremap <leader>bd :bufdo bd<cr>
nnoremap <leader>bh :call CloseHiddenBuffers()<cr>
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
nnoremap <leader>cD :call SetCwd()<cr>
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
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview <bar>
                \ if exists('b:neocomplete') <bar> unlet b:neocomplete <bar> endif <cr>
    inoremap <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>"<cr>
                \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>"<cr>
    inoremap <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n>
else
    set completeopt=menuone
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
    inoremap <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>\<lt>c-p>"<cr>
                \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>\<lt>c-p>"<cr>
    inoremap <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n><c-p>
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

nmap <leader><cr><cr> <Plug>(lsp-status)
nmap <leader><cr>a <Plug>(lsp-code-action)
nmap <leader><cr>f <Plug>(lsp-document-range-format)
nmap <leader><cr>F <Plug>(lsp-document-format)
nmap <leader><cr>d <Plug>(lsp-document-diagnostics)
nmap <leader><cr>1 <Plug>(lsp-peek-declaration)
nmap <leader><cr>3 <Plug>(lsp-declaration)
nmap <leader><cr>2 <Plug>(lsp-peek-definition)
nmap <leader><cr>4 <Plug>(lsp-definition)
nmap <leader><cr>i <Plug>(lsp-peek-implementation)
nmap <leader><cr>L <Plug>(lsp-implementation)
nmap <leader><cr>h <Plug>(lsp-hover)
nmap <leader><cr>r <Plug>(lsp-references)
nmap <leader><cr>R <Plug>(lsp-rename)
nmap <leader><cr>t <Plug>(lsp-peek-type-definition)
nmap <leader><cr>T <Plug>(lsp-type-definition)
nmap <leader><cr>s <Plug>(lsp-document-symbol)
nmap <leader><cr>S <Plug>(lsp-workspace-symbol)
nmap ]e <Plug>(lsp-next-error)
nmap ]r <Plug>(lsp-next-reference)
nmap [e <Plug>(lsp-previous-error)
nmap [r <Plug>(lsp-previous-reference)
nmap <leader><cr>] <Plug>(lsp-preview-focus)
nmap <leader><cr>[ <Plug>(lsp-preview-close)
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
    inoremap <expr> <C-g> neocomplete#undo_completion()
    inoremap <expr> <C-l> neocomplete#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? "\<C-y>" : "\<CR>"
    endfunction
    " <TAB>: completion.
    inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
    inoremap <expr> <down> pumvisible() ? "\<C-n>" : "\<down>"
    inoremap <expr> <up> pumvisible() ? "\<C-p>" : "\<up>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr> <BS> neocomplete#smart_close_popup()."\<BS>"
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

    inoremap <expr> <C-g> neocomplcache#undo_completion()
    inoremap <expr> <C-l> neocomplcache#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        " return neocomplcache#smart_close_popup() . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
    endfunction

    inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
    inoremap <expr> <down> pumvisible() ? "\<C-n>" : "\<down>"
    inoremap <expr> <up> pumvisible() ? "\<C-p>" : "\<up>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr> <C-h> neocomplcache#smart_close_popup()."\<C-h>"
    inoremap <expr> <BS> neocomplcache#smart_close_popup()."\<BS>"
    " inoremap <expr> <C-y> neocomplcache#close_popup()
    " inoremap <expr> <C-e> neocomplcache#cancel_popup()
    " Close popup by <Space>.
    " inoremap <expr> <Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
    " inoremap <expr> <C-j> neocomplcache#start_manual_complete()
    " inoremap <expr> <C-k> neocomplcache#cancel_popup()

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
" let g:ctrlp_map = '<c-p>'
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
    " nnoremap <c-n> :CtrlPCmdPalette<cr>
endif
" nnoremap <leader>pc :CtrlPCommandPalette<cr>
" nnoremap <c-p> :CtrlPCommandPalette<cr>

let g:gitgutter_enabled=1
let g:gitgutter_map_keys = 0
omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)
nmap <leader>hp <Plug>(GitGutterPreviewHunk)
nnoremap <leader>hh :GitGutterToggle<cr>

" nnoremap <leader>fl :Flog<cr>
" nnoremap <leader>fL :Flog<space>

nnoremap <leader>gv :GV<cr>
nnoremap <leader>gV :GV!<cr>
vnoremap <leader>gv :GV<cr>
vnoremap <leader>gV :GV?<cr>

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

" nnoremap <leader>ms :DoShowMarks<cr>
" nnoremap <leader>mS :NoShowMarks<cr>
" nnoremap <leader>mp :PreviewMarks<cr>

" let g:yankstack_yank_keys = ['y', 'd']
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
" let g:asyncrun_open = 10
" let g:asyncrun_save = 2
let g:asyncrun_auto = "make"

let g:fzf_command_prefix = 'FZF'
" Mapping selecting mappings
" nmap <c-b> <plug>(fzf-maps-n)
" xmap <c-b> <plug>(fzf-maps-x)
" omap <c-b> <plug>(fzf-maps-o)
" nnoremap <c-c> :FzfCommand<cr>
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" nnoremap <c-n> :FZFCommands<cr>
nnoremap <leader>zz :FZFFiles<cr>
nnoremap <leader>zZ :FZFFiletypes<cr>
nnoremap <leader>zf :FZFGFiles<cr>
nnoremap <leader>zF :FZFGFiles?<cr>
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
nnoremap <leader>zg :FZFGGrep<cr>
nnoremap <leader>zG :FZFGrep<cr>

nnoremap <leader>Zz :FZFFiles!<cr>
nnoremap <leader>ZZ :FZFFiletypes!<cr>
nnoremap <leader>Zf :FZFGFiles!<cr>
nnoremap <leader>ZF :FZFGFiles!?<cr>
nnoremap <leader>Zb :FZFBuffers!<cr>
nnoremap <leader>Zc :FZFCommands!<cr>
nnoremap <leader>ZC :FZFColors!<cr>
nnoremap <leader>ZC :FZFColors!<cr>
nnoremap <leader>Za :FZFAg!<cr>
nnoremap <leader>Zr :FZFRg!<cr>
nnoremap <leader>Zl :FZFLines!<cr>
nnoremap <leader>ZL :FZFBLines!<cr>
nnoremap <leader>Zt :FZFTags!<cr>
nnoremap <leader>ZT :FZFBTags!<cr>
nnoremap <leader>Zm :FZFMarks!<cr>
nnoremap <leader>Zw :FZFWindows!<cr>
nnoremap <leader>Zh :FZFHistory!<cr>
nnoremap <leader>ZH :FZFHelptags!<cr>
nnoremap <leader>Zs :FZFSnippets!<cr>
nnoremap <leader>Zg :FZFGGrep!<cr>
nnoremap <leader>ZG :FZFGrep!<cr>

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

nmap <c-_> <Plug>CommentaryLine
vmap <c-_> <Plug>Commentary
augroup commentStr
    autocmd!
    autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
augroup END

nnoremap <leader>db :DB<space>
nnoremap <leader>dB :%DB<space>
vnoremap <leader>db :DB<space>

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
try
    let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
catch
endtry

let g:goyo_width = '80%'
let g:goyo_height = '95%'
nnoremap <leader>go :Goyo<cr>

" augroup changeLimelight
"     autocmd!
"     autocmd User GoyoEnter Limelight
"     autocmd User GoyoLeave Limelight!
" augroup END
" nmap <Leader>lM <Plug>(Limelight)
" xmap <Leader>lM <Plug>(Limelight)
nnoremap <leader>lm :Limelight<cr>
nnoremap <leader>lM :Limelight!<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <c-g> :Grepper<cr>
if !exists('g:grepper')
    let g:grepper = {}
endif
let g:grepper.prompt_mapping_tool = '<c-g>'

nnoremap <leader>fg :FlyGrep<cr>

" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
" nnoremap <leader>i :IndentGuidesToggle<cr>

let g:better_whitespace_ctermcolor = '8'
let g:better_whitespace_guicolor = '#808080'
let g:better_whitespace_operator = 'gs'
nnoremap <leader>sp :ToggleWhitespace<cr>

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
    au FileType vim let b:argwrap_line_prefix = '\'
augroup END

" ctrl-b is unused in insert mode
imap <c-b> <c-o><Plug>(cosco-commaOrSemiColon)
nmap <c-b> <Plug>(cosco-commaOrSemiColon)
" nmap <c-space> <Plug>(cosco-commaOrSemiColon)o
" imap <c-space> <esc><Plug>(cosco-commaOrSemiColon)o

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap <leader>fm :Neoformat<cr>
vnoremap <leader>fm :Neoformat<cr>
nnoremap <leader>fM :Neoformat<space>
vnoremap <leader>fM :Neoformat<space>

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
    nnoremap <c-n> :Nuake<cr>
    if has('nvim')
        tnoremap <c-n> <c-\><c-n>:Nuake<cr>
    else
        tnoremap <c-n> <c-w>:Nuake<cr>
    endif
endif

nnoremap <leader>co :Codi!!<cr>
nnoremap <leader>cO :Codi!!<space>

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
    nmap <leader>ts <plug>Translate
    vmap <leader>tS <plug>TranslateV
    nmap <leader>tw <Plug>TranslateW
    vmap <leader>tW <Plug>TranslateWV
    " nmap <Leader>ts :Translate -w<space>
    " nmap <Leader>tw :TranslateW -w<space>
    " nmap <Leader>th :TranslateH<cr>
endif


