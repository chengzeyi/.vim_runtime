call plug#begin('~/.vim_runtime/plugged')

" Plug 'ajh17/VimCompletesMe'

" Plug 'lifepillar/vim-mucomplete'

" Plug 'hecal3/vim-leader-guide'

" Plug 'powerman/vim-plugin-viewdoc'

Plug 'easymotion/vim-easymotion'

Plug 'stefandtw/quickfix-reflector.vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'Valloric/ListToggle'

Plug 'chengzeyi/a.vim'

" Plug 'vim-scripts/a.vim'

Plug 'mhinz/vim-startify'

" Plug 'liuchengxu/vim-which-key'

Plug 'mhinz/vim-grepper'

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/goyo.vim'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'jlanzarotta/bufexplorer'

Plug 'maxbrunsfeld/vim-yankstack'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'scrooloose/nerdtree'

Plug 'tacahiroy/ctrlp-funky'

Plug 'kien/ctrlp.vim'

Plug 'Shougo/neocomplcache.vim'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

" Plug 'vim-scripts/OmniCppComplete'

" Plug 'vim-syntastic/syntastic'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'majutsushi/tagbar'

Plug 'drmingdrmer/xptemplate'

" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

Plug 'skywind3000/vim-preview'
Plug 'skywind3000/asyncrun.vim'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

" Plug 'chengzeyi/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'chengzeyi/fzf.vim'

" Plug 'asins/vim-dict'

" Plug 'w0rp/ale'

" Plug 'nathanaelkane/vim-indent-guides'

Plug 'Yggdroot/indentLine'

Plug 'sheerun/vim-polyglot'

Plug 'dense-analysis/ale'

" Plug 'flazz/vim-colorschemes'

Plug 'liuchengxu/space-vim-dark'

Plug 'chriskempson/base16-vim'

Plug 'cocopon/iceberg.vim'

" Plug 'chengzeyi/iceberg.vim'

Plug 'sickill/vim-monokai'

Plug 'joshdick/onedark.vim'

" Plug 'cseelus/vim-colors-lucid'

" Plug 'NLKNguyen/papercolor-theme'

" Plug 'arcticicestudio/nord-vim'

call plug#end() 

set mouse=a

nnoremap <c-]> g<c-]>
nnoremap g<c-]> <c-]>

set tags+=./tags
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags
set tags+=~/.vimtags
set tags+=~/.vim_runtime/systags
set updatetime=1500

set number
set exrc
set secure

" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
" set noexpandtab

set cursorcolumn
set cursorline

highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Amir Salihefendic — @amix3k
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

runtime ftplugin/man.vim

set showmode

set splitbelow

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "

map <leader>p :set invpaste paste?<cr>

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set display+=lastline

set re=1
set lazyredraw

" Set 5 lines to the cursor - when moving vertically using j/k
set so=5

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
" set visualbell
set novisualbell
set t_vb=
" set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
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

let g:space_vim_dark_background = 234

try
    colorscheme space-vim-dark
catch
endtry

" hi Comment cterm=italic
" hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59 cterm=italic

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Courier\ New\ 10
    elseif has("gui_gtk3")
        set guifont=Courier\ New\ 10
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h10
    elseif has("gui_win32")
        set guifont=Consolas\ 10
    endif
endif

" set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guioptions-=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions-=r  "scrollbar
    set guioptions-=R  "scrollbar
    set guioptions-=l  "scrollbar
    set guioptions-=L  "scrollbar
    set guioptions-=b  "scrollbar
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /
" map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
nnoremap J <c-w>j
nnoremap K <c-w>k
nnoremap H <c-w>h
nnoremap L <c-w>l

nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

if exists(':terminal')
    tnoremap <c-n> <c-w>N
endif

nnoremap <c-h> :bprevious<cr>
nnoremap <c-l> :bnext<cr>
nnoremap <c-j> :tabp<cr>
nnoremap <c-k> :tabn<cr>

" Close the current buffer
" map <leader>bc :Bclose<cr>:tabclose<cr>gT
" map <leader>x :Bclose<cr>:tabclose<cr>gT
map <leader>bc :Bclose<cr>
map <leader>x :Bclose<cr>

" Close all the buffers
map <leader>bd :bufdo bd<cr>

map <leader><tab> :bnext<cr>
map <leader><s-tab> :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  " set switchbuf=useopen,usetab,newtab
  set switchbuf=useopen
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
" map 0 ^

" Delete trailing white space on save, useful for some filetypes ;)
" fun! CleanExtraSpaces()
"     let save_cursor = getpos(".")
"     let old_query = getreg('/')
"     silent! %s/\s\+$//e
"     call setpos('.', save_cursor)
"     call setreg('/', old_query)
" endfun

" if has("autocmd")
"     autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

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
map <leader>e :e! ~/.vim_runtime/my_config.vim<cr>
autocmd! bufwritepost ~/.vim_runtime/my_config.vim source ~/.vim_runtime/my_config.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $q is super useful when browsing on the command line
" it deletes everything until the last slash
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Map ½ to something useful
map ½ $
cmap ½ $
imap ½ $

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! DeleteTillSlash()
    let g:cmd = getcmdline()

    if has("win16") || has("win32")
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
    else
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
    endif

    if g:cmd == g:cmd_edited
        if has("win16") || has("win32")
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
        else
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
        endif
    endif   

    return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
    return a:cmd . " " . expand("%:p:h") . "/"
endfunc

" ---

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

" autocmd FileType vim let b:vcm_tab_complete = 'vim'
" set completeopt+=menuone
if v:version > 704 || (v:version == 704 && has('patch775'))
    " set completeopt+=noselect
    " set completeopt+=noinsert
endif
" set shortmess+=c   " Shut off completion messages
" set belloff+=ctrlg " If Vim beeps during completion
" let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#completion_delay = 1
" let g:mucomplete#always_use_completeopt = 1
" let g:mucomplete#chains = {'default': ['path', 'keyn', 'dict', 'uspl']}

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
" if has('conceal')
  " set conceallevel=2 concealcursor=niv
" endif

" let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 0
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_tags_caching_limit_file_size = 10000000
" let g:neocomplcache_disable_auto_complete = 1

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    " return neocomplcache#smart_close_popup() . "\<CR>"
    " For no inserting <CR> key.
    return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
" inoremap <expr><TAB>  pumvisible() ? "\<cr>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" set omnifunc=ale#completion#OmniFunc
set omnifunc=syntaxcomplete#Complete
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" autocmd FileType c setlocal omnifunc=ccomplete#Complete
" autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" if !exists('g:neocomplcache_omni_patterns')
  " let g:neocomplcache_omni_patterns = {}
" endif
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" autocmd FileType cpp let OmniCpp_NamespaceSearch = 1
" autocmd FileType cpp let OmniCpp_GlobalScopeSearch = 1
" autocmd FileType cpp let OmniCpp_ShowAccess = 1
" autocmd FileType cpp let OmniCpp_MayCompleteDot = 1
" autocmd FileType cpp let OmniCpp_MayCompleteArrow = 1
" autocmd FileType cpp let OmniCpp_MayCompleteScope = 1
" autocmd FileType cpp let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1
let NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 30
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
" map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

let g:gitgutter_enabled=1
nnoremap <silent> <leader>d :GitGutterToggle<cr>

let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

" let MRU_Max_Entries = 400
" map <leader>f :MRU<CR>

let g:yankstack_yank_keys = ['y', 'd']

map <leader>[ <Plug>yankstack_substitute_older_paste
map <leader>] <Plug>yankstack_substitute_newer_paste

" let Tlist_Ctags_Cmd = '/usr/bin/ctags'
" let Tlist_Show_One_File = 1
" let Tlist_Exit_OnlyWindow = 1
" let Tlist_Use_Right_Window = 1
" map <leader>tt :TlistToggle<cr>

nmap <leader>tt :TagbarToggle<cr>

let g:xptemplate_fallback = ''
let g:xptemplate_always_show_pum = 1
let g:xptemplate_vars = "SParg=&BRloop= &BRif= &BRel= &BRstc= &BRfun= "
let g:xptemplate_nav_next = '<c-]>'
let g:xptemplate_nav_prev = '<c-[>'

" let g:UltiSnipsListSnippets = "<s-tab>"
" let g:UltiSnipsExpandTrigger = "<c-]>"
" let g:UltiSnipsJumpForwardTrigger = "<c-]>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-[>"

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" let g:syntastic_aggregate_errors = 1
" let g:syntastic_c_check_header = 1
" let g:syntastic_cpp_check_header = 1

" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" let g:syntastic_c_include_dirs = ['./include', './headers',
"     \ './_external/usr/include', './_external/usr/local/include',
"     \ '../_external/usr/include', '../_external/usr/local/include']
" let g:syntastic_cpp_include_dirs = ['./include', './headers',
"     \ './_external/usr/include', './_external/usr/local/include',
"     \ '../_external/usr/include', '../_external/usr/local/include']
" let g:syntastic_c_checkers = ['cppcheck']
" let g:syntastic_cpp_checkers = ['cppcheck']
" let g:syntastic_c_cppcheck_args = ['--enable=warning,style,information']
" let g:syntastic_cpp_cppcheck_args = ['--enable=warning,style,information', '--std']
" nnoremap <c-x><c-x> :SyntasticCheck<CR>
" nnoremap <c-x><c-r> :SyntasticReset<CR>

let g:preview#preview_position = 'top'
let g:preview#preview_size = 8
noremap <m-k> :PreviewScroll -1<cr>
noremap <m-j> :PreviewScroll +1<cr>
inoremap <m-k> <c-\><c-o>:PreviewScroll -1<cr>
inoremap <m-j> <c-\><c-o>:PreviewScroll +1<cr>
noremap <F12> :PreviewSignature!<cr>
inoremap <F12> <c-\><c-o>:PreviewSignature!<cr>
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

map <leader>r :AsyncRun<space>
" let g:asyncrun_bell = 1

" map <leader>q :call asyncrun#quickfix_toggle(8)<cr>
" let g:asyncrun_open = 8

" let g:fzf_command_prefix = 'Fzf'
" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)
" nnoremap <c-c> :FzfCommand<cr>
" [Commands] --expect expression for directly executing the command
" let g:fzf_commands_expect = 'alt-enter'

nmap <c-_> <Plug>CommentaryLine
vmap <c-_> <Plug>Commentary
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

" let g:easytags_dynamic_files = 1
let g:easytags_include_members = 1
let g:easytags_async = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='jellybeans'
let g:asyncrun_status = "stopped"
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

let g:goyo_width = '80%'
let g:goyo_height = '95%'
nnoremap <leader>z :Goyo<cr>

map <leader>g :Grepper<cr>
runtime plugin/grepper.vim
let g:grepper.prompt_mapping_tool = '<leader>g'

" set timeoutlen=500
" nnoremap <silent> <leader> :<c-u>WhichKey '<space>'<cr>
" vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<space>'<cr>

" call leaderGuide#register_prefix_descriptions("<space>", "g:lmap")
" nnoremap <silent> <leader> :<c-u>LeaderGuide '<space>'<cr>
" vnoremap <silent> <leader> :C-Space<c-u>LeaderGuideVisual '<space>'<cr>

" inoremap <silent> <c-x><space> <C-\><C-O>:ALEComplete<CR>
map <leader>aa :ALEToggle<cr>
map <leader>al :ALELint<cr>
map <leader>ag :ALEGoToDefinitionInVSplit<cr>
map <leader>af :ALEFindReferences<cr>
map <leader>ah :ALEHover<cr>
let g:ale_enabled = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_highlights = 0
let g:ale_echo_cursor = 0
" map <leader>ag :ALEGoToDefinition<cr>
" map <leader>af :ALEFindReferences<cr>
" map <leader>ah :ALEHover<cr>
" map <leader>as :ALESymbolSearch<space>

nnoremap <leader>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <leader>F :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_multi_buffers = 1

" let g:indent_guides_enable_on_vim_startup = 1

" let  g:no_viewdoc_maps = 1
" let  g:viewdoc_open = "belowright vnew"
" let  g:viewdoc_openempty = 0

let g:better_whitespace_ctermcolor = '63'
let g:better_whitespace_guicolor = '#5f5fff'

let g:EasyMotion_do_mapping = 1

