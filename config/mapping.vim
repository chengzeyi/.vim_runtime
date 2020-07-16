" inoremap <c-a> <home>
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
nnoremap <leader><c-\> :tab sp<cr>

nnoremap <leader>en :enew<cr>
nnoremap <leader>eN :enew<cr>:set buftype=nofile<cr>

nnoremap <leader>oo :set scrolloff=<c-r>=999 - &scrolloff<cr><cr>
nnoremap <leader>oj :set scrolljump=<c-r>=&scrolljump == 1 ? 5 : 1<cr><cr>
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
nnoremap <leader>oc :set colorcolumn=<c-r>=empty(&colorcolumn) ? '+1' : ''<cr><cr>
nnoremap <leader>oz :set foldclose=<c-r>=&foldclose !=# 'all' ? 'all' : ''<cr> foldopen=<c-r>=&foldopen !=# 'all' ? 'all' : ''<cr><cr>
nnoremap <leader>ob :set background=<c-r>=&background ==# 'dark' ? 'light' : 'dark'<cr><cr>
" nnoremap <leader>ot :set ttyscroll=<c-r>=999 - &ttyscroll<cr><cr>
nnoremap <leader>ot :ToggleTransparent<cr>
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
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview,popup<cr>
else
    nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
endif

" nnoremap <c-]> g<c-]>
" nnoremap g<c-]> <c-]>
" xnoremap <c-]> g<c-]>
" xnoremap g<c-]> <c-]>
" nnoremap <c-w><c-]> <c-w>g<c-]>
" nnoremap <c-w>g<c-]> <c-w><c-]>
" xnoremap <c-w><c-]> <c-w>g<c-]>
" xnoremap <c-w>g<c-]> <c-w><c-]>
" nnoremap g<LeftMouse> <LeftMouse>g<c-]>
" nnoremap <C-LeftMouse> <LeftMouse>g<c-]>

" if exists(':terminal')
"     if has('nvim-0.4.0') || has('patch-8.2.191')
"         command! -nargs=* -complete=shellcmd -bang FloatTerm call FloatTerm(<bang>0, 0, <q-args>)
"         nnoremap <F12> :call FloatTerm(0, 0)<cr>
"         if has('nvim')
"             tnoremap <F12> <c-\><c-n>:call FloatTerm(0, 1)<cr>
"         else
"             tnoremap <F12> <c-w>:call FloatTerm(0, 0)<cr>
"         endif

"         let s:term_opts = {
"                     \ 'height': 'float2nr(&lines * 0.8)',
"                     \ 'width': 'float2nr(&columns * 0.8)',
"                     \ 'row': '(&lines - height) / 2',
"                     \ 'col': '(&columns - width) / 2',
"                     \ 'border_hl': 'Comment',
"                     \ 'border_chars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
"                     \ 'term_hl': 'Normal'
"                     \ }

"         if has('nvim')
"             function! FloatTerm(no_close, tmode, ...) abort
"                 let height = eval(s:term_opts.height)
"                 let width = eval(s:term_opts.width)
"                 let row = eval(s:term_opts.row)
"                 let col = eval(s:term_opts.col)
"                 let opts = {'relative': 'editor', 'row': row, 'col': col, 'width': width, 'height': height, 'style': 'minimal'}
"                 if !exists('s:term_win') || !nvim_win_is_valid(s:term_win)
"                     let border_buf = CreateFloatBorder(opts)
"                     if !exists('s:term_buf') || !bufexists(s:term_buf)
"                         let s:term_buf = nvim_create_buf(v:false, v:false)
"                         let need_termopen = 1
"                     else
"                         let need_termopen = 0
"                     endif
"                     let s:term_win = nvim_open_win(s:term_buf, v:true, opts)
"                     call setwinvar(s:term_win, '&winhighlight', 'NormalFloat:' . s:term_opts.term_hl)
"                     augroup MyFloatTermBuffer
"                         autocmd!
"                         exe 'au BufWipeout <buffer> if bufexists(' . border_buf . ') | bwipeout ' . border_buf . ' | endif'
"                         exe 'au BufWinLeave <buffer> if bufexists(' . border_buf . ') | bwipeout ' . border_buf . ' | endif'
"                         exe 'au BufWipeout <buffer> if win_id2tabwin(' . s:term_win . ') != [0, 0] | call nvim_win_close(' . s:term_win . ', v:false) | endif'
"                     augroup END
"                     if need_termopen
"                         call termopen(a:0 == 0 || empty(a:1) ? &shell : a:1, {'on_exit': function(a:no_close ? 'FloatTermOnExitNoClose' : 'FloatTermOnExit')})
"                     elseif get(s:, 'term_tmode', 0) && mode() !=# 't'
"                         startinsert
"                     endif
"                 else
"                     call nvim_win_close(s:term_win, v:false)
"                     let s:term_tmode = a:tmode
"                 endif
"             endfunction

"             function! CreateFloatBorder(opts) abort
"                 let opts = copy(a:opts)
"                 let opts.row -= 1
"                 let opts.col -= 1
"                 let opts.height += 2
"                 let opts.width += 2
"                 let bcs = s:term_opts.border_chars
"                 let top = bcs[4] . repeat(bcs[0], opts.width - 2) . bcs[5]
"                 let mid = bcs[3] . repeat(' ', opts.width - 2) . bcs[1]
"                 let bot = bcs[7] . repeat(bcs[2], opts.width - 2) . bcs[6]
"                 let lines = [top] + repeat([mid], opts.height - 2) + [bot]
"                 let border_buf = nvim_create_buf(v:false, v:true)
"                 call nvim_buf_set_lines(border_buf, 0, -1, v:true, lines)
"                 let win = nvim_open_win(border_buf, v:true, opts)
"                 call setwinvar(win, '&winhighlight', 'NormalFloat:' . s:term_opts.border_hl)
"                 return border_buf
"             endfunction

"             function! FloatTermOnExit(job_id, code, event) abort dict
"                 if a:code == 0
"                     bwipeout!
"                 endif
"             endfunction

"             function! FloatTermOnExitNoClose(job_id, code, event) abort dict
"                 return
"             endfunction
"     else
"         function! FloatTerm(no_close, tmode, ...) abort
"             if !exists('s:term_buf') || !bufexists(s:term_buf)
"                 let s:term_buf = term_start(a:0 == 0 || empty(a:1) ? &shell : a:1, extend({
"                             \ 'hidden': 1,
"                             \ 'norestore': 1,
"                             \ 'term_highlight': s:term_opts.term_hl
"                             \ }, a:no_close ? {} : {'term_finish': 'close'}))
"                 " exe 'autocmd BufWipeout <buffer=' . s:term_buf . '> ++once call term_sendkeys(' . s:term_buf . ', "exit\<cr>")'
"                 call setbufvar(s:term_buf, '&buflisted', 0)
"             endif
"             if !exists('s:term_win') || empty(popup_getoptions(s:term_win))
"                 let height = eval(s:term_opts.height)
"                 let width = eval(s:term_opts.width)
"                 let row = eval(s:term_opts.row)
"                 let col = eval(s:term_opts.col)
"                 let s:term_win = popup_create(s:term_buf, {
"                             \ 'maxheight': height,
"                             \ 'minheight': height,
"                             \ 'maxwidth': width,
"                             \ 'minwidth': width,
"                             \ 'line': row,
"                             \ 'col': col,
"                             \ 'zindex': 50,
"                             \ 'border': [1],
"                             \ 'borderhighlight': [s:term_opts.border_hl],
"                             \ 'borderchars': s:term_opts.border_chars
"                             \ })
"                 if get(s:, 'term_tmode', 0) && mode() !=# 't'
"                     startinsert
"                 endif
"             else 
"                 call popup_close(s:term_win)
"                 let s:term_tmode = a:tmode
"             endif
"         endfunction
"     endif

"     endif
" endif

if exists(':terminal')
    tnoremap <F1> <c-\><c-n>
    tnoremap <c-o> <c-\><c-n>
    if has('nvim')
        nnoremap <leader>ts :split <bar> terminal<cr>
        nnoremap <leader>tS :split <bar> terminal<space>
        nnoremap <leader>tv :vsplit <bar> terminal<cr>
        nnoremap <leader>tV :vsplit <bar> terminal<space>
        nnoremap <leader>tt :tabnew <bar> terminal<cr>
        nnoremap <leader>tT :tabnew <bar> terminal<space>
        nnoremap <leader>tw :terminal<cr>
        nnoremap <leader>tW :terminal<space>
    else
        nnoremap <leader>ts :terminal ++close<cr>
        nnoremap <leader>tS :terminal ++close<space>
        nnoremap <leader>tv :vert terminal ++close<cr>
        nnoremap <leader>tV :vert terminal ++close<space>
        nnoremap <leader>tt :tab terminal ++close<cr>
        nnoremap <leader>tT :tab terminal ++close<space>
        nnoremap <leader>tw :terminal ++curwin ++close<cr>
        nnoremap <leader>tW :terminal ++curwin ++close<space>
    endif
endif

nnoremap [I [I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."[\t"<Bar>endif<CR>
nnoremap ]I ]I:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."]\t"<Bar>endif<CR>
nnoremap [D [D:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."[\<lt>c-d>"<Bar>endif<CR>
nnoremap ]D ]D:let nr = input("Which one: ")<Bar>if nr =~# '\v[0-9]+'<Bar>exe "normal " . nr ."]\<lt>c-d>"<Bar>endif<CR>

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

nnoremap <leader>sw :let @/='\<lt><c-r>=expand('<lt>cword>')<cr>\>' <bar> set hls<cr>
nnoremap <leader>sW :let @/='\<lt><c-r>=expand('<lt>cWORD>')<cr>\>' <bar> set hls<cr>

inoremap <F1> <C-O>za
nnoremap <F1> za
onoremap <F1> <C-C>za
vnoremap <F1> zf
nnoremap <leader>z0 :set foldlevel=0<cr>
nnoremap <leader>z1 :set foldlevel=1<cr>
nnoremap <leader>z2 :set foldlevel=2<cr>
nnoremap <leader>z3 :set foldlevel=3<cr>
nnoremap <leader>z4 :set foldlevel=4<cr>
nnoremap <leader>z5 :set foldlevel=5<cr>
nnoremap <leader>z6 :set foldlevel=6<cr>
nnoremap <leader>z7 :set foldlevel=7<cr>
nnoremap <leader>z8 :set foldlevel=8<cr>
nnoremap <leader>z9 :set foldlevel=9<cr>
nnoremap <leader>z- :set foldlevel-=1<cr>
nnoremap <leader>z+ :set foldlevel+=1<cr>
nnoremap <leader>z= :set foldlevel=<c-r>=&foldlevel == 99 ? 0 : 99<cr><cr>
" nnoremap <leader>f/ :setlocal foldexpr=getline(v:lnum)=~@/?0:1 foldmethod=
"             \<c-r>=&foldmethod == 'expr' ? 'indent' : 'expr'<cr> foldlevel=
"             \<c-r>=&foldmethod == 'expr' ? 99 : 0<cr><cr>
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

nnoremap <a-t> :set opfunc=Trans<CR>g@iw
xnoremap <a-t> :<C-U>call Trans(visualmode(), 1)<CR>
nnoremap g<c-t> :set opfunc=Trans<CR>g@iw
xnoremap g<c-t> :<C-U>call Trans(visualmode(), 1)<CR>
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
    let text = shellescape(text)
    if executable('trans')
        let cmd = 'trans --no-ansi :zh ' . text
    elseif executable('fanyi')
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
        let out = systemlist(a:cmd)
        call popup_atcursor(out, {
                    \ 'pos': 'botright',
                    \ 'maxheight': 15,
                    \ 'maxwidth': 78,
                    \ 'padding': [0, 1, 0, 1],
                    \ 'highlight': 'Pmenu',
                    \ })
    elseif has('nvim-0.0.4')
        let out = systemlist(a:cmd)
        let buf = nvim_create_buf(v:false, v:true)
        call nvim_buf_set_lines(buf, 0, 0, v:false, out)
        let win = nvim_open_win(buf, v:false, {
                    \ 'relative': 'cursor',
                    \ 'height': 15,
                    \ 'width': 78,
                    \ 'row': 0,
                    \ 'col': 0,
                    \ 'style': 'minimal'})
        " Must use a delayed autocmd, otherwise the window will be closed as
        " soon as it has been created in visual mode.
        " This might be a bug of NeoVim?
        call timer_start(50,
                    \ {-> execute('au CursorMoved * ++once call nvim_win_close(' . win . ', 0)')})
    else
        execute '!' . a:cmd
    endif
endfunction

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
nnoremap <leader>] <c-w>g}
" nnoremap <C-LeftMouse> :execute 'ptag ' . expand('<lt>cword>')<cr>
nnoremap <leader>[ <c-w>z
" nnoremap <C-RightMouse> :pclose<cr>
nnoremap [p :ptprevious<cr>
nnoremap ]p :ptnext<cr>
nnoremap [P :pfirst<cr>
nnoremap ]P :plast<cr>
map [[ ?{<CR>w99[{:noh<CR>
map ][ /}<CR>b99]}:noh<CR>
map ]] j0[[%/{<CR>:noh<CR>
map [] k$][%?}<CR>:noh<CR>

nnoremap <leader>qq :QToggle<cr>
nnoremap <leader>ll :LToggle<cr>
nnoremap <leader>qe :cexpr [] <bar> :cclose<cr>
nnoremap <leader>le :lexpr [] <bar> :lclose<cr>
nnoremap <leader>qb :cbuffer<cr>
nnoremap <leader>lb :lbuffer<cr>
nnoremap <leader>qo :colder<cr>
nnoremap <leader>lo :lolder<cr>
nnoremap <leader>qn :cnewer<cr>
nnoremap <leader>ln :lnewer<cr>
nnoremap <leader>qh :chistory<cr>
nnoremap <leader>lh :lhistory<cr>
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

    if BufferCount() == buffer_count_before && !empty(getloclist(0))
        execute 'silent! botright lopen ' . a:height
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

nnoremap <leader>ct :Ctags<cr>
nnoremap <leader>cT :Ctags<space>
command! -complete=file -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q --excmd=number <args>

if has('cscope')
    nnoremap <leader>cs :Cscope<cr>
    nnoremap <leader>cS :Cscope<space>
    command! -complete=file -nargs=* Cscope !cscope
                \ -RUbq <args>
    nnoremap <c-\>q :set cscopequickfix=<c-r>=&cscopequickfix == '' ? 's-,g-,d-,c-,t-,e-,f-,i-,a-' : ''<cr><cr>
    nnoremap <c-\><bs> :set invcst<cr>
    nnoremap <c-\><c-h> :set invcst<cr>
    nnoremap <c-\>\ :cs add .<cr>
    nnoremap <c-\><bar> :cs add<space>
    nnoremap <c-\><cr> :cs show<cr>
    nnoremap <c-\>h :cs help<cr>
    nnoremap <c-\>r :cs reset<cr>
    nnoremap <c-\>k :cs kill -1<cr>
    nnoremap <c-\>a :cs find a <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\>s :cs find s <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\>g :cs find g <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\>c :cs find c <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\>t :cs find t <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\>e :cs find e <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\>f :cs find f <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <c-\>i :cs find i <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <c-\>d :cs find d <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\>A :cs find a<space>
    nnoremap <c-\>S :cs find s<space>
    nnoremap <c-\>G :cs find g<space>
    nnoremap <c-\>C :cs find c<space>
    nnoremap <c-\>T :cs find t<space>
    nnoremap <c-\>E :cs find e<space>
    nnoremap <c-\>F :cs find f<space>
    nnoremap <c-\>I :cs find i<space>
    nnoremap <c-\>D :cs find d<space>
    nnoremap <c-\><c-\>a :scs find a <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\><c-\>s :scs find s <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\><c-\>g :scs find g <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\><c-\>c :scs find c <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\><c-\>t :scs find t <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\><c-\>e :scs find e <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\><c-\>f :scs find f <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <c-\><c-\>i :scs find i <c-r>=expand("<cfile>")<cr><cr>
    nnoremap <c-\><c-\>d :scs find d <c-r>=expand("<cword>")<cr><cr>
    nnoremap <c-\><c-\>A :scs find a<space>
    nnoremap <c-\><c-\>S :scs find s<space>
    nnoremap <c-\><c-\>G :scs find g<space>
    nnoremap <c-\><c-\>C :scs find c<space>
    nnoremap <c-\><c-\>T :scs find t<space>
    nnoremap <c-\><c-\>E :scs find e<space>
    nnoremap <c-\><c-\>F :scs find f<space>
    nnoremap <c-\><c-\>I :scs find i<space>
    nnoremap <c-\><c-\>D :scs find d<space>
endif

nnoremap <leader>vv :VCS<space>
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

nnoremap <leader>vg :vimgrep //j % <bar> cw<left><left><left><left><left><left><left><left><left>
nnoremap <leader>vG :vimgrep //j **/* <bar> cw<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>vl :lvimgrep //j % <bar> lw<left><left><left><left><left><left><left><left><left>
nnoremap <leader>vL :lvimgrep //j **/* <bar> lw<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>ss :%s/
nnoremap <leader>sc :%s//c<left><left>
xnoremap <leader>ss :s/
xnoremap <leader>sc :s//c<left><left>
nnoremap <leader>qd :cdo<space>
xnoremap <leader>qd :cdo<space>
nnoremap <leader>qD :cfdo<space>
nnoremap <leader>ld :ldo<space>
xnoremap <leader>ld :ldo<space>
nnoremap <leader>lD :lfdo<space>
nnoremap <leader>bs :bufdo %s/
nnoremap <leader>bc :bufdo %s//c<left><left>

if !has('nvim') 
    command! -nargs=0 W w !sudo tee % > /dev/null
endif

nnoremap <leader>ed :e <c-r>=fnameescape(expand('%:~:h'))<cr>/
nnoremap <leader>eD :e <c-r>=GetVcsRoot()<cr>

if executable('xxd')
    nnoremap <leader>eb :Bin<cr>
    command! Bin call InvBinMode()

    function! InvBinMode() abort
        setl invbin
        let modified = &l:modified
        let modifiable = &l:modifiable
        setl modifiable
        if &bin
            %!xxd
            set ft=xxd
            augroup MyBinaryMode
                autocmd!
                au BufWritePre <buffer> silent exe '%!xxd -r'
                au BufWritePost <buffer> silent exe '%!xxd'
            augroup END
        else
            %!xxd -r
            filetype detect
            augroup MyBinaryMode
                autocmd!
            augroup END
        endif
        let &l:modifiable = modifiable
        let &l:modified = modified
    endfunction
endif

nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" nnoremap gh H
" nnoremap gm M
" nnoremap gl L

nnoremap <a-y> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>
nnoremap <a-e> :noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>
" inoremap <a-y> <c-o><c-y>
" inoremap <a-e> <c-o><c-e>
" inoremap <a-h> <left>
" inoremap <a-l> <right>
" inoremap <a-j> <down>
" inoremap <a-k> <up>
" if exists(':terminal')
"     tnoremap <a-k> <c-\><c-n>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-y>\<lt>C-w>p"<cr>i
"     tnoremap <a-j> <c-\><c-n>:noautocmd exe "normal! \<lt>C-w>p\<lt>C-e>\<lt>C-w>p"<cr>i
" endif

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
nnoremap <leader>bb :BufClose<cr>
nnoremap <leader>bB :BufClose!<cr>

" Don't close window, when deleting a buffer
command! -nargs=0 -bang BufClose call BufClose(<bang>0)
function! BufClose(force) abort
    if &modified && !a:force
        echohl ErrorMsg | echo 'Cannot close modified buffer without force' | echohl None
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

nnoremap <leader>bl :buffers<cr>:buffer<space>
nnoremap <leader>bL :buffers!<cr>:buffer<space>
nnoremap <leader>bd :try <bar> %bd <bar> catch <bar> endtry<cr>
nnoremap <leader>bD :try <bar> %bd! <bar> catch <bar> endtry<cr>
" Close all the buffers
nnoremap <leader>bh :CloseHiddenBuffers<cr>
nnoremap <leader>bH :CloseHiddenBuffers!<cr>

command! -nargs=0 -bang CloseHiddenBuffers call CloseHiddenBuffers(<bang>0)
function! CloseHiddenBuffers(force) abort
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr('$') + 1)
        if bufexists(num) && index(open_buffers, num) == -1
            try | exec 'bdelete' . (a:force ? '! ' : ' ') . num | catch | endtry
        endif
    endfor
endfunction

nnoremap <leader><tab> :bn<cr>
nnoremap <leader><s-tab> :bp<cr>
nnoremap <leader>bs :sba<cr>
nnoremap <leader>bt :tab ba<cr>
nnoremap <leader>bm :sbm<cr>
nnoremap <leader>bu :sun<cr>

" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tx :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <expr> <leader>tc ':tcd ' . GetVcsRoot() . "\<lt>cr>"
nnoremap <leader>tC :tcd %:p:h<cr>

" Let 'tl' toggle between this and the last accessed tab
nnoremap <leader>tl :tablast<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>te :tabe <c-r>=fnameescape(expand('%:~:h'))<cr>/
nnoremap <leader>tE :tabe <c-r>=GetVcsRoot()<cr>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>$ :$tabnext<cr>

nnoremap <expr> <leader>cd ':cd ' . GetVcsRoot() . "\<lt>cr>"
" Switch CWD to the directory of the open buffer
nnoremap <leader>cD :cd %:p:h<cr>

function! GetVcsRoot() abort
    let cph = expand('%:p:h', 1)
    if cph =~# '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
        let wd = call('find' . (mkr =~# '/$' ? 'dir' : 'file'), [mkr, cph . ';'])
        if !empty(wd) | let &acd = 0 | brea | en
    endfor
    return fnameescape(empty(wd) ? cph : substitute(wd, mkr . '$', '', ''))
endfunction

nnoremap <leader>sl :set invspell<cr>

" inoremap <c-]> <c-x><c-]>
" inoremap <c-f> <c-x><c-f>
" inoremap <c-d> <c-x><c-d>
" inoremap <c-l> <c-x><c-l>
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : RefreshPum("\<TAB>", "\<c-n>")
inoremap <expr> <S-TAB> pumvisible() ? "\<c-p>" : RefreshPum("\<S-TAB>", "\<c-p>")
inoremap <expr> <down> pumvisible() ? "\<c-n>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<c-p>" : "\<up>"
" inoremap <expr> <c-e> pumvisible() ? "\<c-e>" : "\<End>"
inoremap <expr> <c-h> ICH()
inoremap <expr> <bs> ICH()
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()['selected'] != '-1' ?
                \ "\<c-y>" : "\<c-g>u" . ICR()
else
    inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u" . ICR()
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
    if previous !=# '' && idx >= 0
        return ExpandPair(previous, '}])'[idx], next)
        " elseif previous ==# '>' && next ==# '<'
        "     return ExpandTag(next)
    else
        return "\<CR>"
    endif
endfunction

function! ExpandPair(left, right, next)
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

" function! ExpandTag(next)
"     let thisline = getline('.')
"     let name = matchstr(thisline, '\V<\zs\[^>[:blank:]]\+\ze\[^>]\*>\$')
"     if !empty(name)
"         return "\<CR></" . name . ">\<ESC>==O"
"     else
"         return "\<CR>"
"     endif
" endfunction

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
inoremap <expr> <lt> strpart(getline('.'), col('.') - 2, 1) !~# '\V\s\<bar>\[<lt>]' ? ">\<c-g>U\<left><lt>" : '<lt>'
inoremap <expr> > strpart(getline('.'), col('.') - 1, 1) ==# '>' && strpart(getline('.'), col('.') - 2, 1) !~# '\V\s' ?
            \ "\<c-g>U\<right>" : '>'
inoremap <expr> ) strpart(getline('.'), col('.') - 1, 1) ==# ')' ? "\<c-g>U\<right>" : ')'
inoremap <expr> ] strpart(getline('.'), col('.') - 1, 1) ==# ']' ? "\<c-g>U\<right>" : ']'
inoremap <expr> } strpart(getline('.'), col('.') - 1, 1) ==# '}' ? "\<c-g>U\<right>" : '}'
inoremap <expr> ' I_Single_Quote()

function! I_Single_Quote() abort
    let line = getline('.')
    let col = col('.')
    if strpart(line, col - 3, 2) ==# "''"
        return "'"
    endif
    if strpart(line, col - 1, 1) ==# "'"
        return "\<c-g>U\<right>"
    endif
    if strpart(line, col - 2, 1) =~# '\V\w'
        return "'"
    endif
    return "''\<c-g>U\<left>"
endfunction

inoremap <expr> " I_Double_Quote()

function! I_Double_Quote() abort
    let line = getline('.')
    let col = col('.')
    if strpart(line, col - 3, 2) ==# '""'
        return '"'
    endif
    if strpart(line, col - 1, 1) ==# '"'
        return "\<c-g>U\<right>"
    endif
    return "\"\"\<c-g>U\<left>"
endfunction

inoremap <expr> ` I_Back_Tick()

function! I_Back_Tick() abort
    let line = getline('.')
    let col = col('.')
    if strpart(line, col - 3, 2) ==# '``'
        return '`'
    endif
    if strpart(line, col - 1, 1) ==# '`'
        return "\<c-g>U\<right>"
    endif
    return "``\<c-g>U\<left>"
endfunction

inoremap <expr> <c-b> CloseParen()
" inoremap <expr> <c-space> CloseParen()
" inoremap <expr> <nul> CloseParen()

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
    nnoremap <localleader>bb :let @" = 'break ' . expand('%:p') . ':' . line('.')<cr>
    nnoremap <localleader>bt :let @" = 'tbreak ' . expand('%:p') . ':' . line('.')<cr>
    nnoremap <localleader>bc :let @" = 'clear ' . expand('%:p') . ':' . line('.')<cr>
endif

nnoremap <leader>sp :TrimWhiteSpace<cr>
command! -nargs=0 TrimWhiteSpace call TrimWhiteSpace()

function! TrimWhiteSpace()
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction

nnoremap <leader>sg :SynGroup<cr>
command! -nargs=0 SynGroup call SynGroup()

function! SynGroup()
    let s = synID(line('.'), col('.'), 1)
    echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')
endfunction

"This function turns Rolodex Vim on or off for the current tab
"If turning off, it sets all windows to equal height
function! ToggleRolodexTab()
    if exists('t:rolodex_tab')
        unlet t:rolodex_tab
        call ClearRolodexSettings()
        execute "normal! \<C-W>="
    else
        let t:rolodex_tab = 1
        call SetRolodexSettings()
    endif
endfunction
 
"This function clears the Rolodex Vim settings and restores the previous values
function! ClearRolodexSettings()
    "Assume if one exists they all will
    if exists('g:remember_ea') > 0
        let &equalalways = g:remember_ea
        let &winheight = g:remember_wh
        let &winminheight = g:remember_wmh
        let &helpheight = g:remember_hh
    endif
endfunction
 
"This function set the Rolodex Vim settings and remembers the previous values for later
function! SetRolodexSettings()
    if exists("t:rolodex_tab") > 0
        let g:remember_ea = &equalalways
        let g:remember_wh = &winheight
        let g:remember_wmh = &winminheight
        let g:remember_hh = &helpheight
        set noequalalways winminheight=0 winheight=999 helpheight=999
    endif
endfunction
 
"These two autocmds make Vim change the settings whenever a new tab is selected
"We have to use TabLeave to always clear them.  If we try and turn them off
"in TabEnter, it is too late ( I think, since WinEnter has already been called and triggered the display)
au TabLeave * call ClearRolodexSettings()
au TabEnter * call SetRolodexSettings()
 
"With this mapping, F2 toggles a tab to be Rolodex style
nnoremap <F2> :call ToggleRolodexTab()<cr>
