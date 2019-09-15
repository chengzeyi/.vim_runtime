set nocompatible

call plug#begin('~/.vim_runtime/plugged')

Plug 'chengzeyi/vim-markify'
" Plug 'chengzeyi/a.vim', {'on': 'A'}
Plug 'chengzeyi/OmniCppComplete', {'for': ['cpp', 'c']}

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
" Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'c']}
" Plug 'fatih/vim-go', {'for': 'go', 'on': ['GoUpdateBinaries', 'GoInstallBinaries']}

Plug 'lfilho/cosco.vim'

Plug 'vim-utils/vim-man'

Plug 'mattn/gist-vim'

Plug 'FooSoft/vim-argwrap', {'on': 'ArgWrap'}

Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}

Plug 'terryma/vim-expand-region'

Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}

Plug 'luochen1990/rainbow'

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

Plug 'stefandtw/quickfix-reflector.vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'Valloric/ListToggle'

Plug 'mhinz/vim-startify'

Plug 'mhinz/vim-grepper'

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'maxbrunsfeld/vim-yankstack'

Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky', {'on': 'CtrlPFunky'}
Plug 'fisadev/vim-ctrlp-cmdpalette', {'on': 'CtrlPCmdPalette'}
" Plug 'dbeecham/ctrlp-commandpalette.vim', {'on': 'CtrlPCommandPalette'}

Plug 'Shougo/neocomplcache.vim'
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
Plug 'junegunn/fzf.vim'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'sheerun/vim-polyglot'

" Plug 'dense-analysis/ale'

Plug 'Lenovsky/nuake'

Plug 'liuchengxu/space-vim-dark'
Plug 'chriskempson/base16-vim'
Plug 'cocopon/iceberg.vim'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

let mapleader = ' '
set pastetoggle=<F2>

inoremap <c-a> <home>
inoremap <c-e> <end>
nnoremap Q @q
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
nnoremap <silent> <leader>? :nmap <lt>leader><cr>
nnoremap <silent> <leader>/ :execute 'nmap <lt>leader>' . nr2char(getchar())<cr>
nnoremap <silent> <leader>w :w!<cr>
nnoremap <silent> <F7> :cprev<cr>
nnoremap <silent> <F8> :cnext<cr>
nnoremap <silent> <F5> :lprev<cr>
nnoremap <silent> <F6> :lnext<cr>
nnoremap <silent> <leader>" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>
nnoremap <silent> <leader>' :marks<CR>
nnoremap <silent> <leader>` :marks<CR>
if exists(':terminal')
    tnoremap <c-n> <c-w>N
endif
if exists(':packadd')
    nnoremap         <leader>dd :packadd termdebug <bar> Termdebug<space>
    nnoremap         <leader>dD :packadd termdebug <bar> TermdebugCommand<space>
    nnoremap <silent><leader>dr :Run<cr>
    nnoremap         <leader>dR :Run<space>
    nnoremap         <leader>da :Arguments<space>
    nnoremap <silent><leader>de :Evaluate<cr>
    nnoremap         <leader>dE :Evaluate<space>
    nnoremap <silent><leader>db :Break<cr>
    nnoremap <silent><leader>ds :Step<cr>
    nnoremap <silent><leader>dS :Stop<cr>
    nnoremap <silent><leader>do :Over<cr>
    nnoremap <silent><leader>df :Finish<cr>
    nnoremap <silent><leader>dc :Continue<cr>
    nnoremap <silent><leader>dC :Clear<cr>
    nnoremap <silent><leader>d[ :Gdb<cr>
    nnoremap <silent><leader>d] :Program<cr>
    nnoremap <silent><leader>d\ :Source<cr>
endif
nnoremap <silent> <F9> :execute 'ptag ' . expand('<cword>')<cr>
nnoremap <silent> <F10> :pclose<cr>

augroup compileAndRun
    au!
    if executable('python3')
        au filetype python nnoremap <silent><leader>cr :w <bar> exec '!python3 '.shellescape('%')<CR>
    else
        au filetype python nnoremap <silent><leader>cr :w <bar> exec '!python '.shellescape('%')<CR>
    endif
    au filetype c nnoremap <silent><leader>cr :w <bar>
        \ exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
    au filetype cpp nnoremap <silent><leader>cr :w <bar>
        \ exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
augroup END

nnoremap <silent> <leader>aa :call SwitchSourceHeader()<cr>
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

nnoremap <leader>ct :Ctags<space>
command! -nargs=* Ctags !ctags
            \ -R --sort=yes --c++-kinds=+p --fields=+ialS --extra=+q -f .tags <args> > /dev/null

nnoremap <leader>ff :vimgrep // % <bar> cw<left><left><left><left><left><left><left><left>
nnoremap <leader>ss :%s//g<left><left>
nnoremap <leader>sq :cdo s//g<left><left>
nnoremap <leader>sl :ldo s//g<left><left>
nnoremap <leader>sb :bufdo %s//g<left><left>
nnoremap <leader>scs :%s//gc<left><left><left>
nnoremap <leader>scq :cdo s//gc<left><left><left>
nnoremap <leader>scl :ldo s//gc<left><left><left>
nnoremap <leader>scb :bufdo %s//gc<left><left><left>

command! W w !sudo tee % > /dev/null

set notimeout
" set timeoutlen=2000
set ttimeout
set ttimeoutlen=10

" set shortmess=a

set mouse=a

nnoremap <c-]> g<c-]>
nnoremap g<c-]> <c-]>

set tags=./.tags;,./.TAGS;,./tags;,./TAGS
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
set foldnestmax=3
set nofoldenable

set display+=lastline

set re=1

set scrolloff=5

let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set wildmenu
" set wildmode=longest,full
set wildignorecase

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
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
set foldcolumn=0

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
" if $COLORTERM == 'gnome-terminal'
" set t_Co=256
" endif

set t_Co=256
if has('termguicolors')
    set termguicolors
endif

" let g:space_vim_dark_background = 234

augroup myColors
    autocmd!
    autocmd ColorScheme * hi LineNr     ctermbg=NONE guibg=NONE
    autocmd ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE
    autocmd ColorScheme * hi Comment    guifg=#5C6370 ctermfg=59 cterm=italic
augroup END

try
    colorscheme space-vim-dark
catch
endtry

nnoremap <leader>uc :colorscheme desert<cr>

" hi Comment cterm=italic
" hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59 cterm=italic

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
    set t_Co=256
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
xnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
xnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <c-k> <C-w>p5<C-y><C-w>p
nnoremap <c-j> <C-w>p5<C-e><C-w>p
" inoremap <c-k> <Esc><C-w>p5<C-y><C-w>pi
" inoremap <c-j> <Esc><C-w>p5<C-e><C-w>pi

" Disable highlight when <leader>\ is pressed
nnoremap <silent> <leader>\ :noh<cr>

" Smart way to move between windows
nnoremap <s-j> <c-w>j
nnoremap <s-k> <c-w>k
nnoremap <s-h> <c-w>h
nnoremap <s-l> <c-w>l

nnoremap <silent> <leader>= <c-w>=
nnoremap <silent> <leader>+ :exe "resize +5"<cr>
nnoremap <silent> <leader>- :exe "resize -5"<cr>

" nnoremap <silent> <c-h> :bprevious<cr>
" nnoremap <silent> <c-l> :bnext<cr>
nnoremap <silent> <F3> :tabp<cr>
nnoremap <silent> <F4> :tabn<cr>

" Close the current buffer
" map <leader>bc :Bclose<cr>:tabclose<cr>gT
nnoremap <silent> <leader>bb :Bclose<cr>
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
nnoremap <silent> <leader>bd :bufdo bd<cr>
nnoremap <silent> <leader>bh :CloseHiddenBuffers<cr>
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
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <silent> <leader><cr><cr> <Plug>(lsp-status)
nmap <silent> <leader><cr>a <Plug>(lsp-code-action)
nmap <silent> <leader><cr>f <Plug>(lsp-document-range-format)
nmap <silent> <leader><cr>F <Plug>(lsp-document-format)
nmap <silent> <leader><cr>d <Plug>(lsp-document-diagnostics)
nmap <silent> <leader><cr>g <Plug>(lsp-declaration)
nmap <silent> <leader><cr>G <Plug>(lsp-definition)
nmap <silent> <leader><cr>p <Plug>(lsp-peek-declaration)
nmap <silent> <leader><cr>P <Plug>(lsp-peek-definition)
nmap <silent> <leader><cr>i <Plug>(lsp-peek-implementation)
nmap <silent> <leader><cr>I <Plug>(lsp-implementation)
nmap <silent> <leader><cr>h <Plug>(lsp-hover)
nmap <silent> <leader><cr>r <Plug>(lsp-references)
nmap <silent> <leader><cr>R <Plug>(lsp-rename)
nmap <silent> <leader><cr>t <Plug>(lsp-peek-type-definition)
nmap <silent> <leader><cr>T <Plug>(lsp-type-definition)
nmap <silent> <leader><cr>s <Plug>(lsp-document-symbol)
nmap <silent> <leader><cr>S <Plug>(lsp-workspace-symbol)
nmap <silent> <leader><cr>] <Plug>(lsp-next-error)
nmap <silent> <leader><cr>} <Plug>(lsp-next-reference)
nmap <silent> <leader><cr>[ <Plug>(lsp-previous-error)
nmap <silent> <leader><cr>{ <Plug>(lsp-previous-reference)
nmap <silent> <leader><cr>\ <Plug>(lsp-preview-focus)
nmap <silent> <leader><cr><bar> <Plug>(lsp-preview-close)
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
    if executable('clangd')
        au User lsp_setup call lsp#register_server({
            \ 'name': 'clangd',
            \ 'cmd': {server_info->['clangd', '-background-index']},
            \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
            \ })
    endif
    if executable('bash-language-server')
        au User lsp_setup call lsp#register_server({
            \ 'name': 'bash-language-server',
            \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
            \ 'whitelist': ['sh'],
            \ })
        autocmd FileType sh setlocal omnifunc=lsp#complete
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

imap <C-\>     <Plug>(neosnippet_expand_or_jump)
smap <C-\>     <Plug>(neosnippet_expand_or_jump)
xmap <C-\>     <Plug>(neosnippet_expand_target)
" For conceal markers.
" if has('conceal')
" set conceallevel=2 concealcursor=niv
" endif

if v:version > 801 || (v:version == 801 && has("patch188"))
    set completeopt+=popup
    set previewpopup=height:10,width:60
else
    set completeopt-=preview
endif
set pumheight=12
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 0
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_tags_caching_limit_file_size = 20000000
" let g:neocomplcache_disable_auto_complete = 1

inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplcache#smart_close_popup() . "\<CR>"
    " For no inserting <CR> key.
    " return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y> neocomplcache#close_popup()
" inoremap <expr><C-e> neocomplcache#cancel_popup()
" Close popup by <Space>.
" inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
inoremap <expr><C-j> neocomplcache#start_manual_complete()
inoremap <expr><C-k> neocomplcache#cancel_popup()
inoremap <expr><C-l> neocomplcache#complete_common_string()
" inoremap <expr><C-Up>
"     \ neocomplcache#start_manual_complete(['omni_complete'])

" set omnifunc=ale#completion#OmniFunc
" set omnifunc=syntaxcomplete#Complete

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.css = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:neocomplcache_force_omni_patterns.html = '<[^>]*'
let g:neocomplcache_force_omni_patterns.markdown = '<[^>]*'
let g:neocomplcache_force_omni_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
let g:neocomplcache_force_omni_patterns.xml = '<[^>]*'
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_force_omni_patterns.go = '[^.[:digit:] *\t]\.\w*'
let g:neocomplcache_force_omni_patterns.python = '[^. \t]\.\w*'

if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
" let g:neocomplcache_omni_patterns.go = '[^.[:digit:] *\t]\.\w*'
nnoremap <silent> <leader>nC :NeoComplCacheClean<cr>

" let g:echodoc_enable_at_startup = 1
" if has('nvim')
"     let g:echodoc#type = 'virtual'
" else
"     set noshowmode
" endif

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_DefaultNamespaces = ['std', '_GLIBCXX_STD']

" autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 30
nnoremap <silent> <leader>nn :NERDTreeToggle<cr>
nnoremap          <leader>nb :NERDTreeFromBookmark<space>
nnoremap <silent> <leader>nf :NERDTreeFind<cr>
nnoremap <silent> <leader>nF :NERDTreeFocus<cr>
nnoremap <silent> <leader>nv :NERDTreeVCS<cr>
nnoremap <silent> <leader>nc :NERDTreeCWD<cr>
nnoremap <silent> <leader>nr :NERDTreeRefreshRoot<cr>
nnoremap <silent> <leader>nm :NERDTreeMirror<cr>
augroup closeNERDTreeBuffer
    autocmd!
    autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
augroup END

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-f>'
nnoremap <silent> <leader>pp :CtrlP<cr>
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

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:50'
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

nnoremap <silent> <leader>pf :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <silent> <leader>pF :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_multi_buffers = 1

if has('python') || has('python3')
    nnoremap <silent> <leader>pc :CtrlPCmdPalette<cr>
    nnoremap <silent> <c-p> :CtrlPCmdPalette<cr>
endif
" nnoremap <silent> <leader>pc :CtrlPCommandPalette<cr>
" nnoremap <silent> <c-p> :CtrlPCommandPalette<cr>

let g:gitgutter_enabled=1
nnoremap <silent> <leader>hh :GitGutterToggle<cr>

nnoremap <silent> <leader>gb :Gblame<cr>
nnoremap <silent> <leader>gB :Gbrowse<cr>
nnoremap <silent> <leader>gc :Gcommit<cr>
nnoremap          <leader>gC :Git checkout<space>
nnoremap <silent> <leader>gd :Gdiff<cr>
nnoremap <silent> <leader>gD :Gdelete<cr>
nnoremap          <leader>gg :Ggrep<space>
nnoremap          <leader>gm :Gmerge<space>
nnoremap          <leader>gM :Gmove<space>
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

let g:yankstack_yank_keys = ['y', 'd']
nmap <silent> <leader>[ <Plug>yankstack_substitute_older_paste
nmap <silent> <leader>] <Plug>yankstack_substitute_newer_paste

let g:tagbar_width = 30
let g:tagbar_compact = 1
nnoremap <silent> <leader>tt :TagbarToggle<cr>
nnoremap <silent> <leader>ta :TagbarOpenAutoClose<cr>

" let g:preview#preview_position = 'bottom'
" let g:preview#preview_size = 10
" nnoremap <silent> <F7> :PreviewScroll -1<cr>
" nnoremap <silent> <F8> :PreviewScroll +1<cr>
" inoremap <silent> <F7> <c-\><c-o>:PreviewScroll -1<cr>
" inoremap <silent> <F8> <c-\><c-o>:PreviewScroll +1<cr>
" nnoremap <silent> <F9> :PreviewTag<cr>
" nnoremap <silent> <C-LeftMouse> :PreviewTag<cr>
" nnoremap <silent> <C-RightMouse> g<c-]>
" inoremap <silent> <F9> <c-\><c-o>:PreviewTag<cr>
" nnoremap <silent> <F10> :PreviewClose<cr>
" inoremap <silent> <F10> <c-\><c-o>:PreviewClose<cr>
" nnoremap <silent> <F12> :PreviewSignature<cr>
" inoremap <silent> <F12> <c-\><c-o>:PreviewSignature<cr>
" augroup qfPreview
"     autocmd!
"     autocmd FileType qf nnoremap <silent><buffer> <F9> :PreviewQuickfix<cr>
"     autocmd FileType qf nnoremap <silent><buffer> <F10> :PreviewClose<cr>
" augroup END

nnoremap <leader>rr :AsyncRun<space>
nnoremap <silent> <leader>rs :AsyncStop<cr>
" let g:asyncrun_bell = 1
" map <leader>q :call asyncrun#quickfix_toggle(8)<cr>
let g:asyncrun_open = 10
let g:asyncrun_save = 2
let g:asyncrun_auto = "make"

" nnoremap <silent> <F5> :SCCompile<cr>
" nnoremap <silent> <F6> :SCCompileRun<cr>

let g:fzf_command_prefix = 'FZF'
" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)
" nnoremap <c-c> :FzfCommand<cr>
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter'

nmap <c-_> <Plug>CommentaryLine
vmap <c-_> <Plug>Commentary
augroup commentStr
    autocmd!
    autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
augroup END

let g:gutentags_define_advanced_commands = 1
let g:gutentags_ctags_extra_args = ['--sort=yes', '--c++-kinds=+p', '--fields=+iaS', '--extra=+q']
let g:gutentags_cache_dir = '~/.vim_gutentags'

" let g:easytags_include_members = 1
" let g:easytags_async = 1
" let g:easytags_opts = ['--sort=yes', '--c++-kinds=+p', '--fields=+iaS', '--extra=+q']

let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

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
nnoremap <silent> <leader>z :Goyo<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <silent> <c-g> :Grepper<cr>
runtime plugin/grepper.vim
let g:grepper.prompt_mapping_tool = '<c-g>'

" inoremap <silent> <c-x><space> <C-\><C-O>:ALEComplete<CR>
" nnoremap <silent> <leader>aa :ALEToggle<cr>
" nnoremap <silent> <leader>al :ALELint<cr>
" nnoremap <silent> <leader>ag :ALEGoToDefinition<cr>
" nnoremap <silent> <leader>af :ALEFindReferences<cr>
" nnoremap <silent> <leader>ah :ALEHover<cr>
" let g:ale_enabled = 0
" let g:ale_lint_on_enter = 1
" let g:ale_lint_on_save = 1
" let g:ale_lint_on_insert_leave = 0
" let g:ale_lint_on_filetype_changed = 1
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_set_highlights = 0
" let g:ale_echo_cursor = 0

" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
" nnoremap <silent> <leader>i :IndentGuidesToggle<cr>

let g:better_whitespace_ctermcolor = '63'
let g:better_whitespace_guicolor = '#5f5fff'

let g:EasyMotion_do_mapping = 1

let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle
nnoremap <silent> <leader>rb :RainbowToggle<cr>

nnoremap <silent> <leader>uu :UndotreeToggle<cr>
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

nnoremap <silent> <leader>m :MarkifyToggle<cr>
" let g:markify_echo_current_message = 1

let g:better_whitespace_operator = '<leader>sw'

nnoremap <silent> <leader>x :Sayonara<cr>
nnoremap <silent> <leader>X :Sayonara!<cr>

nnoremap <silent> <leader>aw :ArgWrap<cr>

nmap <silent> <c-right> <Plug>(cosco-commaOrSemiColon)
imap <silent> <c-right> <esc><Plug>(cosco-commaOrSemiColon)
nmap <silent> <c-down> <Plug>(cosco-commaOrSemiColon)o
imap <silent> <c-down> <esc><Plug>(cosco-commaOrSemiColon)o
" nmap <silent> <c-space> <Plug>(cosco-commaOrSemiColon)o
" imap <silent> <c-space> <esc><Plug>(cosco-commaOrSemiColon)o

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap <silent> <leader>fm :Neoformat<cr>

let g:startify_change_to_vcs_root = 1
let g:startify_custom_header = [
        \ '            __',
        \ '    __  __ /\_\    ___ ___',
        \ '   /\ \/\ \\/\ \ /'' __` __`\',
        \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \',
        \ '    \ \___/  \ \_\ \_\ \_\ \_\',
        \ '     \/__/    \/_/\/_/\/_/\/_/',
\ ]

nnoremap <silent> <F12> :Nuake<CR>
tnoremap <silent> <F12> <C-w>:Nuake<CR>

