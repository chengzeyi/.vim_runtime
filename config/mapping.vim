" if has('menu')
"     source $VIMRUNTIME/delmenu.vim
"     source $VIMRUNTIME/menu.vim
"     map <silent> <c-z> :emenu <c-z>
" endif

inoremap <silent> <c-b> <home>
cnoremap <silent> <c-b> <home>
if v:version >= 600
    cnoremap <silent> <c-k> <end><c-u>
else
    cnoremap <silent> <c-k> <c-u>
endif

cnoremap <silent> <c-p> <up>
cnoremap <silent> <c-n> <down>

function! MapMotion(from, ...) abort
    let from = a:from
    let to = a:0 == 0 ? a:from : a:1
    exec 'noremap <silent> <expr> ' . from . ' v:count == 0 ? "g' . to . '" : "' . to . '"'
    exec 'noremap <silent> <expr> g' . from . ' v:count == 0 ? ' . '"' . to . '" : "g' . to . '"'
endfunction

call MapMotion('j')
call MapMotion('k')
" call MapMotion('0', '^')
" call MapMotion('^', '0')
" call MapMotion('$')
nnoremap <silent> 0 ^
xnoremap <silent> 0 ^
onoremap <silent> 0 ^
nnoremap <silent> ^ 0
xnoremap <silent> ^ 0
onoremap <silent> ^ 0
nnoremap <silent> Q @q
xnoremap <silent> Q @q
" noremap <silent> M `m
nnoremap <silent> Y y$
xnoremap <silent> Y y$

xnoremap <silent> g> >gv
xnoremap <silent> g< <gv

nnoremap <silent> ]<space> :<c-u>put =repeat(nr2char(10), v:count) <bar> execute "'[-1"<cr>
nnoremap <silent> [<space> :<c-u>put!=repeat(nr2char(10), v:count) <bar> execute "']+1"<cr>

nnoremap <silent> <leader><bslash> :rightbelow sp<cr>
nnoremap <silent> <leader><bar> :rightbelow vs<cr>
nnoremap <silent> <leader><tab> :leftabove sp<cr>
nnoremap <silent> <leader><s-tab> :leftabove vs<cr>
nnoremap <silent> <leader><c-\> :tab sp<cr>

nnoremap <silent> <leader>ee :e<space>
nnoremap <silent> <leader>eE :e <c-r>=fnameescape(expand('%:~:h'))<cr>/
nnoremap <silent> <leader>en :enew<cr>

nnoremap <silent> <leader>oo :set scrolloff=<c-r>=999 - &scrolloff<cr><cr>
nnoremap <silent> <leader>oj :set scrolljump=<c-r>=&scrolljump == 1 ? 5 : 1<cr><cr>
nnoremap <silent> <leader>om :set mouse=<c-r>=&mouse == '' ? 'a' : ''<cr><cr>
if has('nvim-0.4.4')
    nnoremap <silent> <leader>of :set foldcolumn=<c-r>=&foldcolumn ==# '0' ? 'auto:1' : '0'<cr><cr>
else
    nnoremap <silent> <leader>of :set foldcolumn=<c-r>=&foldcolumn == 0 ? 1 : 0<cr><cr>
endif
if has('patch-8.1.1564')
    nnoremap <silent> <leader>os :set signcolumn=<c-r>=&signcolumn ==# 'no' ? 'number' : 'no'<cr><cr>
else
    nnoremap <silent> <leader>os :set signcolumn=<c-r>=&signcolumn ==# 'no' ? 'auto' : 'no'<cr><cr>
endif
if has('patch-7.3.787')
    nnoremap <silent> <leader>or :set invrelativenumber<cr>
endif
nnoremap <silent> <leader>on :set invnumber<cr>
if has('termguicolors')
    nnoremap <silent> <leader>og :set invtermguicolors<cr>
endif
nnoremap <silent> <leader>ow :set textwidth=<c-r>=&textwidth == 0 ? 79 : 0<cr><cr>
nnoremap <silent> <leader>oc :set colorcolumn=<c-r>=empty(&colorcolumn) ? '+1' : ''<cr><cr>
nnoremap <silent> <leader>oz :set foldclose=<c-r>=&foldclose !=# 'all' ? 'all' : ''<cr> foldopen=<c-r>=&foldopen !=# 'all' ? 'all' : ''<cr><cr>
nnoremap <silent> <leader>ob :set background=<c-r>=&background ==# 'dark' ? 'light' : 'dark'<cr><cr>
" nnoremap <silent> <leader>ot :set ttyscroll=<c-r>=999 - &ttyscroll<cr><cr>
nnoremap <silent> <leader>ot :ToggleTransparent<cr>
command! -nargs=0 ToggleTransparent call ToggleTransparent()

function! ToggleTransparent() abort
    if get(s:, 'transparent', 0)
        exe 'hi Normal guibg=' . s:normal_guibg . ' ctermbg=' . s:normal_ctermbg
        let s:transparent = 0
    else
        let s:normal_guibg = ReturnHighlightTerm('Normal', 'guibg')
        let s:normal_ctermbg = ReturnHighlightTerm('Normal', 'ctermbg')
        hi Normal guibg=NONE ctermbg=NONE
        let s:transparent = 1
    endif
endfunction

function! ReturnHighlightTerm(group, term) abort
    " Store output of group to variable
    let output = execute('hi ' . a:group)

    " Find the term we're looking for
    return matchstr(output, a:term . '\V=\zs\S\*')
endfunction

if has('patch-8.1.1880') && has('textprop')
    nnoremap <silent> <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview,popup<cr>
else
    nnoremap <silent> <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
endif

" nnoremap <silent> <c-]> g<c-]>
" nnoremap <silent> g<c-]> <c-]>
" xnoremap <silent> <c-]> g<c-]>
" xnoremap <silent> g<c-]> <c-]>
" nnoremap <silent> <c-w><c-]> <c-w>g<c-]>
" nnoremap <silent> <c-w>g<c-]> <c-w><c-]>
" xnoremap <silent> <c-w><c-]> <c-w>g<c-]>
" xnoremap <silent> <c-w>g<c-]> <c-w><c-]>
" nnoremap <silent> g<LeftMouse> <LeftMouse>g<c-]>
" nnoremap <silent> <C-LeftMouse> <LeftMouse>g<c-]>

if exists(':terminal')
    tnoremap <silent> <F1> <c-\><c-n>
    tnoremap <silent> <c-o> <c-\><c-n>
    if has('nvim')
        nnoremap <silent> <leader>ts :split <bar> terminal<cr>
        nnoremap <silent> <leader>tS :split <bar> terminal<space>
        nnoremap <silent> <leader>tv :vsplit <bar> terminal<cr>
        nnoremap <silent> <leader>tV :vsplit <bar> terminal<space>
        nnoremap <silent> <leader>tt :tabnew <bar> terminal<cr>
        nnoremap <silent> <leader>tT :tabnew <bar> terminal<space>
        nnoremap <silent> <leader>tw :terminal<cr>
        nnoremap <silent> <leader>tW :terminal<space>
    else
        nnoremap <silent> <leader>ts :terminal ++close<cr>
        nnoremap <silent> <leader>tS :terminal ++close<space>
        nnoremap <silent> <leader>tv :vert terminal ++close<cr>
        nnoremap <silent> <leader>tV :vert terminal ++close<space>
        nnoremap <silent> <leader>tt :tab terminal ++close<cr>
        nnoremap <silent> <leader>tT :tab terminal ++close<space>
        nnoremap <silent> <leader>tw :terminal ++curwin ++close<cr>
        nnoremap <silent> <leader>tW :terminal ++curwin ++close<space>
    endif
endif

nnoremap <silent> [I [I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."[\t"<Bar>endif<CR>
nnoremap <silent> ]I ]I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."]\t"<Bar>endif<CR>
nnoremap <silent> [D [D:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."[\<lt>c-d>"<Bar>endif<CR>
nnoremap <silent> ]D ]D:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."]\<lt>c-d>"<Bar>endif<CR>

nnoremap <silent> <leader>mm :make!  <bar> botright cw<left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>mM :make! <bar> botright cw<cr>
nnoremap <silent> <leader>ml :lmake!  <bar> botright cw<left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>mL :lmake! <bar> botright cw<cr>
nnoremap <silent> <leader>jj :call GotoJump()<cr>
nnoremap <silent> <leader>jt :call GotoTag()<cr>
nnoremap <silent> <leader>js :tselect<cr>

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

nnoremap <silent> <leader>? :call LookUpMap(1, '', '')<cr>
nnoremap <silent> <leader>/ :call LookUpMap(1, '', '<lt>leader>')<cr>
nnoremap <silent> <localleader>? :map <lt>localleader><cr>
nnoremap <silent> <localleader>/ :call LookUpMap(1, '', '<lt>localleader>')<cr>

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
nnoremap <silent> <leader>x :q<cr>
nnoremap <silent> <leader>X :qa<cr>

nnoremap <silent> <leader>" :registers<CR>
nnoremap <silent> <leader>@ :registers<CR>
inoremap <silent> <c-r> <c-r>="\<lt>c-r>" . BetterRegister()<cr>
if exists(':terminal')
    if !has('nvim')
        tnoremap <silent> <expr> <c-w>" "\<lt>c-w>\"" . BetterRegister()
    endif
endif
nnoremap <silent> <expr> " '"' . BetterRegister()
nnoremap <silent> <expr> @ '@' . BetterRegister()
xnoremap <silent> <expr> " '"' . BetterRegister()
xnoremap <silent> <expr> @ '@' . BetterRegister()

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
xnoremap <silent> <expr> ' "'" . BetterMark()
xnoremap <silent> <expr> ` '`' . BetterMark()

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

nnoremap <silent> <leader># #``
nnoremap <silent> <leader>* *``
nnoremap <silent> <leader>g# g#``
nnoremap <silent> <leader>g* g*``
nnoremap <silent> c# #``cgn
nnoremap <silent> c* *``cgn

inoremap <silent> <F1> <C-O>za
nnoremap <silent> <F1> za
onoremap <silent> <F1> <C-C>za
vnoremap <silent> <F1> zf
nnoremap <silent> <leader>z0 :set foldlevel=0<cr>
nnoremap <silent> <leader>z1 :set foldlevel=1<cr>
nnoremap <silent> <leader>z2 :set foldlevel=2<cr>
nnoremap <silent> <leader>z3 :set foldlevel=3<cr>
nnoremap <silent> <leader>z4 :set foldlevel=4<cr>
nnoremap <silent> <leader>z5 :set foldlevel=5<cr>
nnoremap <silent> <leader>z6 :set foldlevel=6<cr>
nnoremap <silent> <leader>z7 :set foldlevel=7<cr>
nnoremap <silent> <leader>z8 :set foldlevel=8<cr>
nnoremap <silent> <leader>z9 :set foldlevel=9<cr>
nnoremap <silent> <leader>z- :set foldlevel-=1<cr>
nnoremap <silent> <leader>z+ :set foldlevel+=1<cr>
nnoremap <silent> <leader>z= :set foldlevel=<c-r>=&foldlevel == 99 ? 0 : 99<cr><cr>
" nnoremap <silent> <leader>f/ :setlocal foldexpr=getline(v:lnum)=~@/?0:1 foldmethod=
"             \<c-r>=&foldmethod == 'expr' ? 'indent' : 'expr'<cr> foldlevel=
"             \<c-r>=&foldmethod == 'expr' ? 99 : 0<cr><cr>
xnoremap <silent> <expr> . expand('<lt>cword>') =~# '[(){}\[\]]' ? 'a'.expand('<lt>cword>') : ':<c-u>silent! normal! [zV]z<cr>'

" Changes to allow blank lines in blocks, and
" Top level blocks (zero indent) separated by two or more blank lines.
" Usage: source <thisfile> in pythonmode and
" Press: vai, vii to select outer/inner python blocks by indetation.
" Press: vii, yii, dii, cii to select/yank/delete/change an indented block.
onoremap <silent> ai :<C-u>call IndTxtObj(0)<CR>
onoremap <silent> ii :<C-u>call IndTxtObj(1)<CR>
xnoremap <silent> ai <Esc>:call IndTxtObj(0)<CR><Esc>gv
xnoremap <silent> ii <Esc>:call IndTxtObj(1)<CR><Esc>gv

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

nnoremap <silent> <a-t> :set opfunc=Trans<CR>g@iw
xnoremap <silent> <a-t> :<C-U>call Trans(visualmode(), 1)<CR>
nnoremap <silent> g<c-t> :set opfunc=Trans<CR>g@iw
xnoremap <silent> g<c-t> :<C-U>call Trans(visualmode(), 1)<CR>
command! -nargs=* Trans call DoTrans(<q-args>)

function! Trans(type, ...) abort
    let sel_save = &selection
    let &selection = 'inclusive'
    let reg_save = @@

    if a:0  " Invoked from Visual mode, use gv command.
        noautocmd silent exe 'normal! gvy'
    elseif a:type ==# 'line'
        noautocmd silent exe "normal! '[V']y"
    else
        noautocmd silent exe 'normal! `[v`]y'
    endif

    call DoTrans(@@)

    let &selection = sel_save
    let @@ = reg_save
endfunction

function! DoTrans(text) abort
    let text = empty(a:text) ? expand('<cword>') : a:text
    let text = substitute(text, '\V\n', ' ', 'g')
    if executable('trans')
        let cmd = [
                    \ 'trans',
                    \ '--no-ansi',
                    \ text
                    \ ]
    else
        let cmd = []
        echohl ErrorMsg | echo 'No dict program installed' | echohl None
    endif

    if !empty(cmd)
        call PV(join(map(cmd, 'shellescape(v:val)')))
    endif
endfunction

command! -nargs=+ -complete=shellcmd PV call PV(<q-args>)

function! PV(cmd) abort
    if has('popupwin')
        let out = systemlist(a:cmd)
        call popup_atcursor(out, {
                    \ 'pos': 'botright',
                    \ 'maxheight': 15,
                    \ 'maxwidth': 78,
                    \ 'padding': [0, 1, 0, 1]
                    \ })
    elseif has('nvim-0.4.0')
        let out = systemlist(a:cmd)
        let buf = nvim_create_buf(v:false, v:true)
        call nvim_buf_set_lines(buf, 0, 0, v:false, out)
        let win = nvim_open_win(buf, v:false, {
                    \ 'relative': 'cursor',
                    \ 'height': 15,
                    \ 'width': 78,
                    \ 'row': 0,
                    \ 'col': 0,
                    \ 'style': 'minimal'
                    \ })
        " Must use a delayed autocmd, otherwise the window will be closed as
        " soon as it has been created in visual mode.
        " This might be a bug of NeoVim?
        call timer_start(50,
                    \ {-> execute('au CursorMoved * ++once call nvim_win_close(' . win . ', 0)')})
    else
        execute '!' . a:cmd
    endif
endfunction

nnoremap <silent> <leader>p- :set previewheight-=<c-r>=&previewheight <= 0 ? 0 : 1<cr><cr>
nnoremap <silent> <leader>p+ :set previewheight+=1<cr>
nnoremap <silent> <leader>p= :set previewheight=10<cr>

" if has('win32') && executable('sh')
"     nnoremap <silent> <leader>! :Sh<space>
"     command! -nargs=+ -complete=shellcmd Sh call Sh(<q-args>)
"     function! Sh(cmd) abort
"         let saved = [&shell, &shellcmdflag, &shellxquote]
"         if exists('+shellslash')
"             let saved += [&shellslash]
"         endif
"         set shell=sh
"         set shellcmdflag=-c
"         set shellxquote=
"         set shellslash
"         try
"             exe '!' . a:cmd
"         catch
"             echohl ErrorMsg | echo v:exception | echohl None
"         endtry
"         let &shell = saved[0]
"         let &shellcmdflag = saved[1]
"         let &shellxquote = saved[2]
"         if exists('+shellslash')
"             let &shellslash = saved[3]
"         endif
"     endfunction
" endif

nnoremap <silent> [t :-tabmove<cr>
nnoremap <silent> ]t :+tabmove<cr>
nnoremap <silent> [T :0tabmove<cr>
nnoremap <silent> ]T :$tabmove<cr>
nnoremap <silent> <leader>] <c-w>g}
" nnoremap <silent> <C-LeftMouse> :execute 'ptag ' . expand('<lt>cword>')<cr>
nnoremap <silent> <leader>[ <c-w>z
" nnoremap <silent> <C-RightMouse> :pclose<cr>
nnoremap <silent> [p :ptprevious<cr>
nnoremap <silent> ]p :ptnext<cr>
nnoremap <silent> [P :ptfirst<cr>
nnoremap <silent> ]P :ptlast<cr>
noremap <silent> [[ :call search('\V\^\[^ \t{]\[^{]\*\(\n\[^{]\+\)\*\n\?\zs{\ze\s\*\$', 'b', 1)<cr>
noremap <silent> [] :call search('\V\^}', 'b', 1)<cr>
noremap <silent> ]] :call search('\V\^\[^ \t{]\[^{]\*\(\n\[^{]\+\)\*\n\?\zs{\ze\s\*\$', '', line('$'))<cr>
noremap <silent> ][ :call search('\V\^}', '', line('$'))<cr>

nnoremap <silent> <leader>qw :cfdo w<cr>
nnoremap <silent> <leader>lw :lfdo w<cr>
nnoremap <silent> <leader>qW :cfdo w!<cr>
nnoremap <silent> <leader>lW :lfdo w!<cr>
nnoremap <silent> <leader>qu :cfdo up<cr>
nnoremap <silent> <leader>lu :lfdo up<cr>
nnoremap <silent> <leader>qU :cfdo up!<cr>
nnoremap <silent> <leader>lU :lfdo up!<cr>
nnoremap <silent> <leader>qd :cdo<space>
nnoremap <silent> <leader>qD :cfdo<space>
nnoremap <silent> <leader>ld :ldo<space>
nnoremap <silent> <leader>lD :lfdo<space>
nnoremap <silent> <leader>qr :cdo s/<bslash>C<bslash><lt><c-r>=expand('<lt>cword>')<cr><bslash>>/<c-r>=expand('<lt>cword>')<cr>
nnoremap <silent> <leader>lr :ldo s/<bslash>C<bslash><lt><c-r>=expand('<lt>cword>')<cr><bslash>>/<c-r>=expand('<lt>cword>')<cr>
nnoremap <silent> <leader>qs :cdo s/
nnoremap <silent> <leader>ls :ldo s/
nnoremap <silent> <leader>qS :cfdo %s/
nnoremap <silent> <leader>lS :lfdo %s/

if exists(':packadd')
    nnoremap <silent> <leader>qf :packadd cfilter <bar> Cfilter<space>
    nnoremap <silent> <leader>qF :packadd cfilter <bar> Cfilter!<space>
    nnoremap <silent> <leader>lf :packadd cfilter <bar> Lfilter<space>
    nnoremap <silent> <leader>lF :packadd cfilter <bar> Lfilter!<space>
endif

nnoremap <silent> <leader>qq :QToggle<cr>
nnoremap <silent> <leader>ll :LToggle<cr>
nnoremap <silent> <leader>qe :cexpr [] <bar> :cclose<cr>
nnoremap <silent> <leader>le :lexpr [] <bar> :lclose<cr>
nnoremap <silent> <leader>qb :cbuffer<cr>
nnoremap <silent> <leader>lb :lbuffer<cr>
nnoremap <silent> <leader>qo :colder<cr>
nnoremap <silent> <leader>lo :lolder<cr>
nnoremap <silent> <leader>qn :cnewer<cr>
nnoremap <silent> <leader>ln :lnewer<cr>
nnoremap <silent> <leader>qh :chistory<cr>
nnoremap <silent> <leader>lh :lhistory<cr>
nnoremap <silent> <leader>lt :ltag<cr>
nnoremap <silent> <expr> <leader>lc ':lcd ' . GetVcsRoot() . "\<lt>cr>"
nnoremap <silent> <leader>lC :lcd %:p:h<cr>
nnoremap <silent> <leader>q<space> :cc<cr>
nnoremap <silent> <leader>l<space> :ll<cr>
nnoremap <silent> [q :cprev<cr>
nnoremap <silent> ]q :cnext<cr>
nnoremap <silent> [Q :cfirst<cr>
nnoremap <silent> ]Q :clast<cr>
nnoremap <silent> [l :lprev<cr>
nnoremap <silent> ]l :lnext<cr>
nnoremap <silent> [L :lfirst<cr>
nnoremap <silent> ]L :llast<cr>
command! QToggle call QListToggle(10)
command! LToggle call LListToggle(10)

function! LListToggle(height) abort
    let buffer_count_before = BufferCount()
    " Location list can't be closed if there's cursor in it, so we need
    " to call lclose twice to move cursor to the main pane
    silent! lclose
    silent! lclose

    if BufferCount() == buffer_count_before && !empty(getloclist(0))
        execute 'silent! lopen ' . a:height
    endif
endfunction

function! QListToggle(height) abort
    let buffer_count_before = BufferCount()
    silent! cclose

    if BufferCount() == buffer_count_before && !empty(getqflist())
        execute 'silent! botright copen ' . a:height
    endif
endfunction
function! BufferCount() abort
    return len(filter(range(1, bufnr('$')), 'bufwinnr(v:val) != -1'))
endfunction

nnoremap <silent> <leader>as :args<space>
nnoremap <silent> <leader>aS :args<cr>
nnoremap <silent> <leader>aa :arga<space>
nnoremap <silent> <leader>ae :arge<space>
nnoremap <silent> <leader>ad :argdo<space>
nnoremap <silent> <leader>aD :argdo!<space>
nnoremap <silent> <leader>ar :argd<space>
nnoremap <silent> <leader>aR :%argd<cr>
nnoremap <silent> <leader>au :argu<space>
nnoremap <silent> <leader>aU :argu<cr>
nnoremap <silent> <leader>a<space> :argu<cr>
nnoremap <silent> <leader>al :argl<space>
nnoremap <silent> <leader>aL :argl<cr>
nnoremap <silent> <leader>ag :argg<space>
nnoremap <silent> <leader>aG :argg<cr>
nnoremap <silent> ]a :next<cr>
nnoremap <silent> [a :prev<cr>
nnoremap <silent> ]A :last<cr>
nnoremap <silent> [A :first<cr>

nnoremap <silent> <leader>af :AlternateFile<cr>
command! -nargs=0 AlternateFile call AlternateFile()

function! AlternateFile() abort
    let suffix = expand('%:e')
    if suffix ==# 'cpp' || suffix ==# 'cc'
        let alt_files = [
                    \ '%:t:r.hpp',
                    \ '%:t:r.h'
                    \ ]
    elseif suffix ==# 'c'
        let alt_files = [
                    \ '%:t:r.h'
                    \ ]
    elseif suffix ==# 'hpp'
        let alt_files = [
                    \ '%:t:r.cpp',
                    \ '%:t:r.cc'
                    \ ]
    elseif suffix ==# 'h'
        let alt_files = [
                    \ '%:t:r.cpp',
                    \ '%:t:r.cc',
                    \ '%:t:r.c'
                    \ ]
    elseif suffix ==# 'go'
        if expand('%:t:r') =~# '_test$'
            let alt_files = [
                        \ '%:t:r:s?\V_test\$??.go'
                        \ ]
        else
            let alt_files = [
                        \ '%:t:r_test.go'
                        \ ]
        endif
    endif
    if !exists('alt_files')
        return
    endif
    for file in alt_files
        try
            execute 'find ' . file
        catch
            continue
        endtry
        break
    endfor
endfunction

nnoremap <silent> <leader>ct :Ctags<space>
nnoremap <silent> <leader>cT :Ctags<cr>
command! -complete=file -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q --excmd=number <args>

if has('cscope')
    nnoremap <silent> <leader>cs :Cscope<space>
    nnoremap <silent> <leader>cS :Cscope<cr>
    command! -complete=file -nargs=* Cscope !cscope
                \ -RUbq <args>
    nnoremap <silent> <c-\>q :set cscopequickfix=<c-r>=&cscopequickfix == '' ? 's-,g-,d-,c-,t-,e-,f-,i-,a-' : ''<cr><cr>
    nnoremap <silent> <c-\><bs> :set invcst<cr>
    nnoremap <silent> <c-\><c-h> :set invcst<cr>
    nnoremap <silent> <c-\>\ :cs add .<cr>
    nnoremap <silent> <c-\><bar> :cs add<space>
    nnoremap <silent> <c-\><cr> :cs show<cr>
    nnoremap <silent> <c-\>h :cs help<cr>
    nnoremap <silent> <c-\>r :cs reset<cr>
    nnoremap <silent> <c-\>k :cs kill -1<cr>
    nnoremap <silent> <c-\>a :cs find a <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\>s :cs find s <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\>g :cs find g <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\>c :cs find c <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\>t :cs find t <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\>e :cs find e <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\>f :cs find f <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <silent> <c-\>i :cs find i <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <silent> <c-\>d :cs find d <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\>A :cs find a<space>
    nnoremap <silent> <c-\>S :cs find s<space>
    nnoremap <silent> <c-\>G :cs find g<space>
    nnoremap <silent> <c-\>C :cs find c<space>
    nnoremap <silent> <c-\>T :cs find t<space>
    nnoremap <silent> <c-\>E :cs find e<space>
    nnoremap <silent> <c-\>F :cs find f<space>
    nnoremap <silent> <c-\>I :cs find i<space>
    nnoremap <silent> <c-\>D :cs find d<space>
    nnoremap <silent> <c-\><c-\>a :scs find a <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\><c-\>s :scs find s <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\><c-\>g :scs find g <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\><c-\>c :scs find c <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\><c-\>t :scs find t <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\><c-\>e :scs find e <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\><c-\>f :scs find f <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <silent> <c-\><c-\>i :scs find i <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <silent> <c-\><c-\>d :scs find d <c-r>=expand("<cword>")<cr><cr>
    nnoremap <silent> <c-\><c-\>A :scs find a<space>
    nnoremap <silent> <c-\><c-\>S :scs find s<space>
    nnoremap <silent> <c-\><c-\>G :scs find g<space>
    nnoremap <silent> <c-\><c-\>C :scs find c<space>
    nnoremap <silent> <c-\><c-\>T :scs find t<space>
    nnoremap <silent> <c-\><c-\>E :scs find e<space>
    nnoremap <silent> <c-\><c-\>F :scs find f<space>
    nnoremap <silent> <c-\><c-\>I :scs find i<space>
    nnoremap <silent> <c-\><c-\>D :scs find d<space>
endif

nnoremap <silent> <leader>vv :VCS<space>
command! -nargs=+ -complete=command VCS call VCS(<q-args>)

function! VCS(cmd) abort
    let saved = getcwd()
    exe 'cd ' . GetVcsRoot()
    try
        exe a:cmd
    catch
        echohl ErrorMsg | echo v:exception | echohl None
    endtry
    exe 'cd ' . saved
endfunction

nnoremap <silent> <leader>vg :vim //j % <bar> botright cw
            \<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>vG :vim //j **/* <bar> botright cw
            \<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>va :vima //j % <bar> botright cw
            \<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>vA :vima //j **/* <bar> botright cw
            \<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>vl :lvim //j % <bar> lw<left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>vL :lvim //j **/* <bar> lw<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>vw :vim /<bslash>C<bslash><lt><bslash>>/j % <bar> botright cw
            \<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>vW :vim /<bslash>C<bslash><lt><bslash>>/j **/* <bar> botright cw
            \<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <leader>ss :%s/
xnoremap <silent> <leader>ss :s/
nnoremap <silent> <leader>sS :%argd <bar> arga **/* <bar> argdo %s/
nnoremap <silent> <leader>sr :%s/<bslash>C<bslash><lt><c-r>=expand('<lt>cword>')<cr><bslash>>/<c-r>=expand('<lt>cword>')<cr>
xnoremap <silent> <leader>sr :s/<bslash>C<bslash><lt><bslash>>/<left><left><left>
nnoremap <silent> <leader>sR :%argd <bar> arga **/* <bar> argdo %s/<bslash>C<bslash><lt><c-r>=expand('<lt>cword>')<cr><bslash>>/<c-r>=expand('<lt>cword>')<cr>

if !has('nvim')
    command! -nargs=0 W w !sudo tee % > /dev/null
endif

nnoremap <silent> <leader>ed :e <c-r>=fnameescape(expand('%:~:h'))<cr>/
nnoremap <silent> <leader>eD :e <c-r>=GetVcsRoot()<cr>

if executable('xxd')
    nnoremap <silent> <leader>eh :EditHex<cr>
    nnoremap <silent> <leader>eH :vert EditHex<cr>
    command! -bang -complete=file -nargs=? EditHex call EditHex(<q-args>, <q-mods>)

    function! EditHex(file, mods) abort
        let file = empty(a:file) ? expand('%') : a:file
        if !filereadable(file)
            echohl ErrorMsg | echo 'File is not readable' | echohl None
            return
        endif
        let hex_filepath = 'hex://' . file
        exe a:mods . ' split ' . fnameescape(hex_filepath)
    endfunction

    augroup MyEditHex
        autocmd!
        au BufReadCmd,FileReadCmd hex://* call ReadHex(expand('<amatch>'))
        au BufWriteCmd,FileWriteCmd hex://* call WriteHex(expand('<afile>'))
    augroup END
    
    function ReadHex(file) abort
        let fname = substitute(a:file, '\V\^hex://', '', '')
        if !filereadable(fname)
            echohl ErrorMsg | echo 'File is not readable' | echohl None
            return
        endif
        let repkeep = &report
        set report=10
        set noswapfile
        set buftype=acwrite
        set nowrap
        set bin
        set ft=xxd
        let makeep = &ma
        set ma
        exe 'r !xxd ' . shellescape(fname, 1)
        keepj silent! 0d _
        let &ma = makeep
        set nomod
        let &report = repkeep
    endfunction

    function WriteHex(file) abort
        let fname = substitute(a:file, '\V\^hex://', '', '')
        let v:errmsg = ''
        exe 'w !xxd -r > ' . shellescape(fname)
        if empty(v:errmsg)
            set nomod
        endif
    endfunction
endif

nnoremap <silent> <expr> gV '`[' . strpart(getregtype(), 0, 1) . '`]'

" nnoremap <silent> gh H
" nnoremap <silent> gm M
" nnoremap <silent> gl L

nnoremap <silent> <c-p> :noautocmd exe "normal! \<lt>c-w>p"<cr>:noautocmd exe "normal! \<lt>c-y>"<cr>:noautocmd exe "normal! \<lt>c-w>p"<cr>
nnoremap <silent> <c-n> :noautocmd exe "normal! \<lt>c-w>p"<cr>:noautocmd exe "normal! \<lt>c-e>"<cr>:noautocmd exe "normal! \<lt>c-w>p"<cr>
" inoremap <silent> <a-y> <c-o><c-y>
" inoremap <silent> <a-e> <c-o><c-e>
" inoremap <silent> <a-h> <left>
" inoremap <silent> <a-l> <right>
" inoremap <silent> <a-j> <down>
" inoremap <silent> <a-k> <up>
" if exists(':terminal')
"     tnoremap <silent> <a-k> <c-\><c-n>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>i
"     tnoremap <silent> <a-j> <c-\><c-n>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>i
" endif

nnoremap <silent> <leader><bs> :nohls<cr>
nnoremap <silent> <leader><c-h> :nohls<cr>

" Smart way to move between windows
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-l> <c-w>l

nnoremap <silent> <leader>= <c-w>=
nnoremap <silent> <leader>+ :resize +5<cr>
nnoremap <silent> <leader>- :resize -5<cr>
nnoremap <silent> <leader>> :vertical resize +10<cr>
nnoremap <silent> <leader><lt> :vertical resize -10<cr>

nnoremap <silent> <leader>bb :ls<cr>:b<space>
nnoremap <silent> <leader>bB :ls<cr>:b!<space>
nnoremap <silent> <leader>bf :filter //ls<left><left><left>
nnoremap <silent> <leader>bF :filter //ls!<left><left><left><left>
nnoremap <silent> <leader>bv :filter! //ls<left><left><left>
nnoremap <silent> <leader>bV :filter! //ls!<left><left><left><left>

nnoremap <silent> <leader>bl :buffers<cr>:buffer<space>
nnoremap <silent> <leader>bL :buffers!<cr>:buffer<space>
nnoremap <silent> <leader>bd :bufdo<space>
nnoremap <silent> <leader>bD :bufdo!<space>
nnoremap <silent> <leader>bx :bd<cr>
nnoremap <silent> <leader>bX :bd!<cr>
" Close all the buffers
nnoremap <silent> <leader>bh :CloseHiddenBuffers<cr>
nnoremap <silent> <leader>bH :CloseHiddenBuffers!<cr>

command! -nargs=0 -bang CloseHiddenBuffers call CloseHiddenBuffers(<bang>0)
function! CloseHiddenBuffers(force) abort
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr('$') + 1)
        if bufexists(num) && index(open_buffers, num) == -1
            try | exec 'bunload' . (a:force ? '! ' : ' ') . num | catch | endtry
        endif
    endfor
endfunction

nnoremap <silent> [b :bp<cr>
nnoremap <silent> ]b :bn<cr>
nnoremap <silent> [B :bf<cr>
nnoremap <silent> ]B :bl<cr>
nnoremap <silent> <leader>ba :sba<cr>
nnoremap <silent> <leader>bt :tab ba<cr>
nnoremap <silent> <leader>bm :sbm<cr>
nnoremap <silent> <leader>bu :sun<cr>

" Useful mappings for managing tabs
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>to :tabonly<cr>
nnoremap <silent> <leader>tO :tabonly!<cr>
nnoremap <silent> <leader>tx :tabclose<cr>
nnoremap <silent> <leader>tX :tabclose!<cr>
nnoremap <silent> <expr> <leader>tc ':tcd ' . GetVcsRoot() . "\<lt>cr>"
nnoremap <silent> <leader>tC :tcd %:p:h<cr>

nnoremap <silent> $gt :$tabnext<cr>

" Let 'tl' toggle between this and the last accessed tab
nnoremap <silent> <leader>tl :tablast<cr>
nnoremap <silent> <expr> <leader>tl exists('g:lasttab') ? (':' . g:lasttab . "tabn\<lt>cr>") : ''
augroup MyLastAccessedTab
    autocmd!
    au TabLeave * let g:lasttab = tabpagenr()
augroup END

nnoremap <silent> <leader>te :tabe<space>
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <silent> <leader>tE :tabe <c-r>=fnameescape(expand('%:~:h'))<cr>/

nnoremap <silent> <leader>td :tabdo<space>
nnoremap <silent> <leader>tD :tabdo!<space>

nnoremap <silent> <leader>1 1gt
nnoremap <silent> <leader>2 2gt
nnoremap <silent> <leader>3 3gt
nnoremap <silent> <leader>4 4gt
nnoremap <silent> <leader>5 5gt
nnoremap <silent> <leader>6 6gt
nnoremap <silent> <leader>7 7gt
nnoremap <silent> <leader>8 8gt
nnoremap <silent> <leader>9 9gt
nnoremap <silent> <leader>$ :$tabnext<cr>

nnoremap <silent> <expr> <leader>cd ':cd ' . GetVcsRoot() . "\<lt>cr>"
" Switch CWD to the directory of the open buffer
nnoremap <silent> <leader>cD :cd %:p:h<cr>

function! GetVcsRoot(...) abort
    if empty(a:000)
        let cph = expand('%:p:h', 1)
    else
        let cph = fnamemodify(a:1, ':p:h')
    endif
    if cph =~# '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
        let wd = call('find' . (mkr =~# '/$' ? 'dir' : 'file'), [mkr, cph . ';'])
        if !empty(wd) | let &acd = 0 | brea | en
    endfor
    let result = fnameescape(empty(wd) ? cph : substitute(wd, mkr . '$', '', ''))
    return empty(result) ? './' : result
endfunction

nnoremap <silent> <leader>sp :set invspell<cr>

" inoremap <silent> <c-]> <c-x><c-]>
" inoremap <silent> <c-f> <c-x><c-f>
" inoremap <silent> <c-d> <c-x><c-d>
" inoremap <silent> <c-l> <c-x><c-l>
inoremap <silent> <expr> <tab> pumvisible() ? "\<c-n>" : RefreshPum("\<tab>", "\<c-n>")
inoremap <silent> <expr> <s-tab> pumvisible() ? "\<c-p>" : RefreshPum("\<s-tab>", "\<c-p>")
inoremap <silent> <expr> <down> pumvisible() ? "\<c-n>" : "\<down>"
inoremap <silent> <expr> <up> pumvisible() ? "\<c-p>" : "\<up>"
" inoremap <silent> <expr> <c-e> pumvisible() ? "\<c-e>" : "\<End>"
inoremap <silent> <expr> <c-h> ICH()
inoremap <silent> <expr> <bs> ICH()
if exists('*complete_info')
    inoremap <silent> <expr> <cr> complete_info()['selected'] != '-1' ?
                \ "\<c-y>" : "\<c-g>u" . ICR()
else
    inoremap <silent> <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u" . ICR()
endif

function! RefreshPum(old, new) abort
    if CheckBS()
        return a:old
    endif
    let refresh_pum = get(g:, 'refresh_pum', [])
    if empty(refresh_pum)
        return a:new
    endif
    try
        return call(refresh_pum[0], refresh_pum[1])
    catch
        return a:new
    endtry
endfunction

function! CheckBS() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ICH() abort
    let thisline = getline('.')
    let col = col('.')
    let previous = thisline[col - 2]
    if empty(previous)
        return "\<C-H>"
    endif
    let next = thisline[col - 1]
    if empty(next)
        return "\<C-H>"
    endif
    let idxp = stridx("{[(<'\"`", previous)
    let idxn = stridx("}])>'\"`", next)
    if idxp >= 0 && idxp ==# idxn
        return "\<DEL>\<C-H>"
    endif
    " if previous ==# '>' && next ==# '<'
    "     let left = thisline[: col - 2]
    "     let right = thisline[col - 1:]
    "     let lname = matchstr(left, '\V<\zs\[^>[:blank:]]\+\ze\[^>]\*>\$')
    "     let rname = matchstr(right, '\V\^</\zs\[^>[:blank:]]\+\ze\[[:blank:]]\*>')
    "     echomsg left . '()' . right
    "     if lname ==# rname
    "         return "\<C-O>dat"
    "     endif
    " endif
    return "\<C-H>"
endfunction

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
    if previous !=# '' && idx >= 0 && idx == stridx('}])', next)
        return "\<CR>\<ESC>==O"
    else
        return "\<CR>"
    endif
endfunction

" function! ExpandTag(next)
"     let thisline = getline('.')
"     let name = matchstr(thisline, '\V<\zs\[^>[:blank:]]\+\ze\[^>]\*>\$')
"     if !empty(name)
"         return "\<CR></" . name . ">\<ESC>==O"
"     else
"         return "\<CR>"
"     endif
" endfunction

inoremap <silent> <c-x>( )<c-g>U<left>(
inoremap <silent> <c-x>) )<c-g>U<left>(
inoremap <silent> <c-x>[ ]<c-g>U<left>[
inoremap <silent> <c-x>] ]<c-g>U<left>[
inoremap <silent> <c-x>{ }<c-g>U<left>{
inoremap <silent> <c-x>] }<c-g>U<left>{
inoremap <silent> <c-x><lt> ><c-g>U<left><lt>
inoremap <silent> <c-x>> ><c-g>U<left><lt>
inoremap <silent> <c-x>' '<c-g>U<left>'
inoremap <silent> <c-x>" "<c-g>U<left>"
inoremap <silent> <c-x>` `<c-g>U<left>"

inoremap <silent> ( )<c-g>U<left>(
inoremap <silent> [ ]<c-g>U<left>[
inoremap <silent> { }<c-g>U<left>{
inoremap <silent> <expr> <lt> strpart(getline('.'), col('.') - 2, 1) !~# '\V\s\<bar>\[<lt>]' ? ">\<c-g>U\<left><lt>" : '<lt>'
inoremap <silent> <expr> > strpart(getline('.'), col('.') - 1, 1) ==# '>' && strpart(getline('.'), col('.') - 2, 1) !~# '\V\s' ?
            \ "\<c-g>U\<right>" : '>'
inoremap <silent> <expr> ) strpart(getline('.'), col('.') - 1, 1) ==# ')' ? "\<c-g>U\<right>" : ')'
inoremap <silent> <expr> ] strpart(getline('.'), col('.') - 1, 1) ==# ']' ? "\<c-g>U\<right>" : ']'
inoremap <silent> <expr> } strpart(getline('.'), col('.') - 1, 1) ==# '}' ? "\<c-g>U\<right>" : '}'
inoremap <silent> <expr> ' I_Single_Quote()

function! I_Single_Quote() abort
    let line = getline('.')
    let col = col('.')
    if strpart(line, col - 1, 1) ==# "'"
        return "\<c-g>U\<right>"
    endif
    if strpart(line, col - 3, 2) ==# "''"
                \ || synIDattr(synID(line('.'), col, 1), 'name') =~? '\Vstring\|include'
        return "'"
    endif
    if strpart(line, col - 2, 1) =~# '\V\w'
        return "'"
    endif
    return "''\<c-g>U\<left>"
endfunction

inoremap <silent> <expr> " I_Double_Quote()

function! I_Double_Quote() abort
    let line = getline('.')
    let col = col('.')
    if strpart(line, col - 1, 1) ==# '"'
        return "\<c-g>U\<right>"
    endif
    if strpart(line, col - 3, 2) ==# '""'
                \ || synIDattr(synID(line('.'), col, 1), 'name') =~? '\Vstring\|include'
        return '"'
    endif
    return "\"\"\<c-g>U\<left>"
endfunction

inoremap <silent> <expr> ` I_Back_Tick()

function! I_Back_Tick() abort
    let line = getline('.')
    let col = col('.')
    if strpart(line, col - 1, 1) ==# '`'
        return "\<c-g>U\<right>"
    endif
    if strpart(line, col - 3, 2) ==# '``'
                \ || synIDattr(synID(line('.'), col, 1), 'name') =~? '\Vstring\|include'
        return '`'
    endif
    return "``\<c-g>U\<left>"
endfunction

inoremap <silent> <expr> <c-b> CloseParen()
" inoremap <silent> <expr> <c-space> CloseParen()
" inoremap <silent> <expr> <nul> CloseParen()

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
                    \ 'synIDattr(synID(line("."), col("."), 0), "name") =~? "\\Vstring\\|include"')
    endif

    if (m_lnum != 0) && (m_col != 0)
        let c = getline(m_lnum)[m_col - 1]
        return closepairs[c]
    endif
    return ''
endfun

nnoremap <silent> <leader>cl :let @" = expand('%:p') . ':' . line('.')<cr>

if exists(':terminal')
    nnoremap <silent> <leader>rt :RunTermCmd<space>
    command! -nargs=+ -complete=shellcmd RunTermCmd call RunTermCmd(<q-args>)
    function! RunTermCmd(cmd) abort
        botright split
        if has('nvim')
            execute 'terminal ' . a:cmd
        else
            execute 'terminal ++close ++curwin ' . a:cmd
        endif
    endfunction
endif

nnoremap <silent> g<c-w> :TrimWhiteSpace<cr>
command! -nargs=0 TrimWhiteSpace call TrimWhiteSpace()

function! TrimWhiteSpace() abort
    let l:winview = winsaveview()
    try
        %s/\V\s\+\$//
    catch
    endtry
    call winrestview(l:winview)
endfunction

nnoremap <silent> <leader>sg :SynGroup<cr>
command! -nargs=0 SynGroup call SynGroup()

function! SynGroup() abort
    let s = synID(line('.'), col('.'), 1)
    echo synIDattr(s, 'name') ' -> ' synIDattr(synID(line('.'), col('.'), 0), 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')
endfunction

augroup MyRolodexTab
    autocmd!
    "These two autocmds make Vim change the settings whenever a new tab is selected
    "We have to use TabLeave to always clear them.  If we try and turn them off
    "in TabEnter, it is too late ( I think, since WinEnter has already been called and triggered the display)
    au TabLeave * call ClearRolodexSettings()
    au TabEnter * call SetRolodexSettings()
augroup END

nnoremap <silent> <leader>ox :ToggleRolodexTab<cr>
command! -nargs=0 ToggleRolodexTab call ToggleRolodexTab()

"This function turns Rolodex Vim on or off for the current tab
"If turning off, it sets all windows to equal height
function! ToggleRolodexTab() abort
    if exists('t:rolodex_tab')
        call ClearRolodexSettings()
        execute "normal! \<C-W>="
        unlet t:rolodex_tab
    else
        let t:rolodex_tab = 1
        call SetRolodexSettings()
    endif
endfunction

"This function clears the Rolodex Vim settings and restores the previous values
function! ClearRolodexSettings() abort
    "Assume if one exists they all will
    if exists('t:rolodex_tab')
        let &equalalways = s:remember_ea
        let &winheight = s:remember_wh
        let &winminheight = s:remember_wmh
        let &helpheight = s:remember_hh
    endif
endfunction

"This function set the Rolodex Vim settings and remembers the previous values for later
function! SetRolodexSettings() abort
    if exists("t:rolodex_tab")
        let s:remember_ea = &equalalways
        let s:remember_wh = &winheight
        let s:remember_wmh = &winminheight
        let s:remember_hh = &helpheight
        set noequalalways winminheight=0 winheight=999 helpheight=999

    endif
endfunction
