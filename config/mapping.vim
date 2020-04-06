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
    exec 'noremap <expr> g' . from . ' v:count == 0 ? ' . '"' . to . '" : "g' . to . '"'
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

nnoremap <leader>oo :set scrolloff=<c-r>=&scrolloff == 999 ? 1 : 999<cr><cr>
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
nnoremap [[ m':call search('{', 'bW')<CR>
vnoremap [[ m':<C-U>exe 'normal! gv'<Bar>call search('{', 'bW')<CR>
nnoremap ]] m':call search('{', 'W')<CR>
vnoremap ]] m':<C-U>exe 'normal! gv'<Bar>call search('{', 'W')<CR>
nnoremap [] m':call search('}', 'bW')<CR>
vnoremap [] m':<C-U>exe 'normal! gv'<Bar>call search('}', 'bW')<CR>
nnoremap ][ m':call search('}', 'W')<CR>
vnoremap ][ m':<C-U>exe 'normal! gv'<Bar>call search('}', 'W')<CR>

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
            \ -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q --excmd=number <args>

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

nnoremap <leader>ew :e <C-R>=expand("%:.:h")<CR>/

if executable('xxd')
    nnoremap <leader>eb :Bin<cr>
    command! Bin call InvBinMode()
    function! InvBinMode() abort abort
        set invbin
        let modified = &modified
        if &bin
            %!xxd
            set ft=xxd
            augroup MyBinaryMode
                autocmd!
                au BufWritePre * exe '%!xxd -r'
                au BufWritePost * exe '%!xxd'
            augroup END
        else
            %!xxd -r
            filetype detect
        endif
        let &modified = modified
    endfunction
endif

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
xnoremap * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" nnoremap gh H
" nnoremap gm M
" nnoremap gl L

nnoremap <a-y> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>
nnoremap <a-e> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>
inoremap <a-y> <c-o><c-y>
inoremap <a-e> <c-o><c-e>
inoremap <a-h> <c-o>h
inoremap <a-j> <c-o>j
inoremap <a-k> <c-o>k
inoremap <a-l> <c-o>l
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
nnoremap <leader>cd :cd %:p:h<cr>
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

inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<c-p>" : "\<c-h>"
inoremap <expr> <down> pumvisible() ? "\<c-n>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<c-p>" : "\<up>"
inoremap <expr> <c-e> pumvisible() ? "\<c-e>" : "\<End>"
inoremap <expr> <c-h> ICH()
inoremap <expr> <bs> ICH()
function! ICH() abort
    let previous = getline('.')[col('.') - 2]
    let next = getline('.')[col('.') - 1]
    let idxp = stridx("{[('\"`", previous)
    let idxn = stridx("}])'\"`", next)
    if previous !=# '' && idxp >= 0 && idxp ==# idxn
        return "\<DEL>\<C-H>"
    else
        return "\<C-H>"
    endif
endfunction
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()['selected'] != '-1' ?
                \ "\<C-y>" : "\<C-g>u" . ICR()
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u" . ICR()
endif
" tries to make <CR> a little smarter in insert mode:
" - expands [{()}] 'correctly'
" - expands <tag>|</tag> 'correctly'
function! ICR()
    " specific case: beware of the cmdline window
    if &buftype ==# 'quickfix' || &buftype ==# 'nofile'
        return "\<CR>"
    endif
    " generic case
    let previous = getline('.')[col('.') - 2]
    let next = getline('.')[col('.') - 1]
    let idx = stridx('{[(', previous)
    if previous !=# '' && idx >= 0
        return ExpandPair(previous, '}])'[idx], next)
    elseif previous ==# '>'
        return ExpandTag(next)
    else
        return "\<CR>"
    endif
endfunction
function! ExpandPair(left, right, next)
    let pair_position = []
    let pair_position = searchpairpos('\V' . a:left, '', '\V' . a:right, 'Wn')
    if a:next ==# a:right
        return "\<CR>\<ESC>==O"
    endif
    if (pair_position[0] == 0 || indent(pair_position[0]) != indent('.'))
        return "\<CR>" . a:right . "\<ESC>==O"
    else
        return "\<CR>"
    endif
endfunction
function! ExpandTag(next)
    let thisline = getline('.')
    if a:next ==# '<' && thisline[col('.')] ==# '/'
        let tagname0 = thisline[searchpos('<', 'bnw')[1]]
        if tagname0 ==# '/' || tagname0 !=# thisline[col('.') + 1]
            return "\<CR>"
        else
            return "\<CR>\<ESC>==O"
        endif
    else
        return "\<CR>"
    endif
endfunction

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

inoremap ( )<c-g>U<left>(
inoremap [ ]<c-g>U<left>[
inoremap { }<c-g>U<left>{
inoremap <expr> ) strpart(getline('.'), col('.') -1, 1) == ')' ? "\<c-g>U\<right>" : ')'
inoremap <expr> ] strpart(getline('.'), col('.') -1, 1) == ']' ? "\<c-g>U<right>" : ']'
inoremap <expr> } strpart(getline('.'), col('.') -1, 1) == '}' ? "\<c-g>U<right>" : '}'
inoremap <expr> ' strpart(getline('.'), col('.') -1, 1) == "'" ? "\<c-g>U<right>" : "''\<c-g>U\<left>"
inoremap <expr> " strpart(getline('.'), col('.') -1, 1) == "\"" ? "\<c-g>U<right>" : "\"\"\<c-g>U\<Left>"
inoremap <expr> ` strpart(getline('.'), col('.') -1, 1) == "`" ? "\<c-g>U<right>" : "``\<c-g>U\<left>"

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
    nnoremap <localleader>b :let @" = 'break ' . expand('%:p') . ':' . line('.')<cr>
    nnoremap <localleader>B :let @" = 'tbreak ' . expand('%:p') . ':' . line('.')<cr>
    nnoremap <localleader>c :let @" = 'clear ' . expand('%:p') . ':' . line('.')<cr>
endif

nnoremap <leader>sp :TrimWhiteSpace<cr>
command! -nargs=0 TrimWhiteSpace call TrimWhiteSpace()
function! TrimWhiteSpace()
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction
