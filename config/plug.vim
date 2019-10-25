call plug#begin('~/.vim_runtime/plugged')

Plug 'chengzeyi/vim-markify'
" Plug 'chengzeyi/a.vim'
if !executable('clangd')
    Plug 'chengzeyi/OmniCppComplete'
endif

" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'fatih/vim-go'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'lfilho/cosco.vim'

Plug 'vim-utils/vim-man'

Plug 'mattn/gist-vim'

Plug 'FooSoft/vim-argwrap'

Plug 'mhinz/vim-sayonara'

" Plug 'terryma/vim-expand-region'

Plug 'mbbill/undotree'

Plug 'luochen1990/rainbow'

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

" Plug 'stefandtw/quickfix-reflector.vim'

Plug 'ntpeters/vim-better-whitespace'

" Plug 'Valloric/ListToggle'

Plug 'mhinz/vim-startify'

Plug 'mhinz/vim-grepper'

Plug 'wsdjeg/FlyGrep.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'

" Plug 'rbong/vim-flog'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-eunuch'

" Plug 'machakann/vim-sandwich'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

" Plug 'jacquesbh/vim-showmarks'
" Plug 'jeetsukumaran/vim-markology'

" Plug 'maxbrunsfeld/vim-yankstack'

Plug 'machakann/vim-highlightedyank'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
if has('python') || has('python3')
    Plug 'fisadev/vim-ctrlp-cmdpalette'
endif
" Plug 'dbeecham/ctrlp-commandpalette.vim'

if has('lua')
    if has('unix')
        Plug 'Shougo/vimproc.vim', {'dir': '~/.vimproc'}
    endif
    Plug 'Shougo/neocomplete'
    Plug 'Shougo/neco-vim'
    Plug 'Shougo/neco-syntax'
else
    Plug 'Shougo/neocomplcache.vim'
endif
" Plug 'Shougo/neopairs.vim'
if has('unix')
    Plug 'ujihisa/neco-look'
endif

Plug 'Shougo/echodoc.vim'
" Plug 'Shougo/deol.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'chengzeyi/neosnippet-snippets'

" if has('python') || has('python3')
"     Plug 'SirVer/ultisnips'
"     Plug 'honza/vim-snippets'
" endif

Plug 'majutsushi/tagbar'

Plug 'sbdchd/neoformat'

" Plug 'skywind3000/vim-preview'
Plug 'skywind3000/asyncrun.vim'

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
    Plug 'Lenovsky/nuake'
endif

Plug 'metakirby5/codi.vim'

Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'

" if has('python') || has('python3')
"     Plug 'voldikss/vim-translate-me'
" endif

Plug 'liuchengxu/space-vim-dark'
Plug 'cocopon/iceberg.vim'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'logico-software/typewriter'
Plug 'chriskempson/base16-vim'
" Plug 'arcticicestudio/nord-vim'

call plug#end()

nnoremap <leader>ep :e ~/.vim_runtime/config/plug.vim<cr>
augroup configPlug
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/plug.vim source ~/.vim_runtime/config/plug.vim
augroup END

" let g:space_vim_dark_background = 235
try
    colorscheme space-vim-dark

    " hi Comment cterm=italic
    " hi Normal ctermbg=NONE guibg=NONE
    hi LineNr ctermbg=NONE guibg=NONE
    hi! link SignColumn LineNr
    " hi SignColumn ctermbg=NONE guibg=NONE
    " hi link SignColumn LineNr
    hi Comment ctermfg=59 guifg=#5C6370
    " hi CursorLine ctermbg=0 guibg=#000000
    " hi CursorColumn ctermbg=0 guibg=#000000
    " hi CursorLineNr ctermbg=0 guibg=#000000
    hi! link SpecialKey NonText
    hi EndOfBuffer ctermfg=bg ctermbg=NONE guifg=bg guibg=NONE

    augroup myColors
        autocmd!
        autocmd ColorScheme * hi LineNr ctermbg=NONE guibg=NONE
        autocmd ColorScheme * hi link SignColumn LineNr
        " autocmd ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE
        " autocmd ColorScheme * hi link SignColumn LineNr
        autocmd ColorScheme * hi! Comment ctermfg=59 guifg=#5C6370
        " autocmd ColorScheme * hi CursorLine ctermbg=0 guibg=#000000
        " autocmd ColorScheme * hi CursorColumn ctermbg=0 guibg=#000000
        " autocmd ColorScheme * hi CursorLineNr ctermbg=0 guibg=#000000
        autocmd ColorScheme * hi! link SpecialKey NonText
        autocmd ColorScheme * hi EndOfBuffer ctermfg=bg ctermbg=NONE guifg=bg guibg=NONE
    augroup END
catch
endtry

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

if !executable('clangd')
    let g:OmniCpp_AddLeftParen = 0
    let g:OmniCpp_NamespaceSearch = 1
    let g:OmniCpp_GlobalScopeSearch = 1
    let g:OmniCpp_ShowAccess = 1
    let g:OmniCpp_MayCompleteDot = 1
    let g:OmniCpp_MayCompleteArrow = 1
    let g:OmniCpp_MayCompleteScope = 1
    let g:OmniCpp_ShowPrototypeInAbbr = 1
    let g:OmniCpp_DefaultNamespaces = ['std', '_GLIBCXX_STD']
endif

let g:force_omni_patterns = {
            \ 'css': '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]',
            \ 'html': '<[^>]*',
            \ 'xml': '<[^>]*',
            \ 'markdown': '<[^>]*',
            \ 'javascript': '[^. \t]\.\%(\h\w*\)\?',
            \ 'php': '[^. \t]->\h\w*\|\h\w*::\w*'}
            " \ 'java': '\%(\h\w*\|)\)\.\w*'}

let g:omni_patterns = {}

nmap <leader><cr><cr> <Plug>(lsp-status)
nmap <leader><cr>a <Plug>(lsp-code-action)
nmap <leader><cr>f <Plug>(lsp-document-range-format)
nmap <leader><cr>F <Plug>(lsp-document-format)
nmap <leader><cr>d <Plug>(lsp-document-diagnostics)
nmap <leader><cr>P <Plug>(lsp-peek-declaration)
nmap <leader><cr>G <Plug>(lsp-declaration)
nmap <leader><cr>p <Plug>(lsp-peek-definition)
nmap <leader><cr>g <Plug>(lsp-definition)
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
let g:lsp_preview_autoclose = 0
let g:lsp_text_edit_enabled = 0
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
        let g:force_omni_patterns.go = '[^.[:digit:] *\t]\.\w*'
    endif
    if executable('pyls')
        " pip install python-language-server
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'pyls',
                    \ 'cmd': {server_info->['pyls']},
                    \ 'whitelist': ['python'],
                    \ })
        autocmd FileType python setlocal omnifunc=lsp#complete
        let g:omni_patterns.python = '[^. \t]\.\w*'
    else
        let g:force_omni_patterns.python = '[^. \t]\.\w*'
    endif
    if executable('clangd')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd', '-background-index']},
                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                    \ })
        autocmd FileType c,cpp,objc,objcpp setlocal omnifunc=lsp#complete
        let g:force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
        let g:force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
        let g:force_omni_patterns.objc = '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
        let g:force_omni_patterns.objcpp = '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
    else
        let g:omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
        let g:omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
    endif
    if executable('bash-language-server')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'bash-language-server',
                    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
                    \ 'whitelist': ['sh'],
                    \ })
        autocmd FileType sh setlocal omnifunc=lsp#complete
        " let g:omni_patterns.sh = '\h\w*'
    endif
augroup END

augroup disableCmdwinMappings
    au!
    au CmdwinEnter [:>] iunmap <buffer> <Tab>
    au CmdwinEnter [:>] nunmap <buffer> <Tab>
augroup END

if has('lua')
    set completeopt+=noselect
    if has('patch-8.1.1880') && has('textprop')
        nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview,popup <bar>
                    \ if exists('b:neocomplete') <bar> unlet b:neocomplete <bar> endif <cr>
    else
        nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview <bar>
                    \ if exists('b:neocomplete') <bar> unlet b:neocomplete <bar> endif <cr>
    endif
    " inoremap <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>"<cr>
    "             \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>"<cr>
    " inoremap <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n>
    let g:neocomplete#auto_complete_delay = 0
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
    " let g:neocomplete#sources#tags#cache_limit_size = 10 * 1024 * 1024
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
    let g:neocomplete#fallback_mappings =
                \ ["\<C-x>\<C-o>", "\<C-x>\<C-n>"]
    inoremap <expr> <C-g> neocomplete#undo_completion()
    inoremap <expr> <C-l> neocomplete#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
        " For no inserting <CR> key.
        " return pumvisible() ? "\<C-y>" : "\<CR>"
    endfunction
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr> <BS> neocomplete#smart_close_popup()."\<BS>"
    " Enable heavy omni completion.
    if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = g:force_omni_patterns
    endif
    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = g:omni_patterns
    endif
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
    if has('patch-8.1.1880') && has('textprop')
        nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview,popup<cr>
    else
        nnoremap <leader>op :set completeopt<c-r>=&completeopt =~# 'preview' ? '-' : '+'<cr>=preview<cr>
    endif
    " inoremap <c-j> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-r>=&omnifunc == '' ? '' : "\<lt>c-x>\<lt>c-o>\<lt>c-p>"<cr>
    "             \<c-r>=pumvisible() <bar><bar> empty(tagfiles()) ? '' : "\<lt>c-x>\<lt>c-]>\<lt>c-p>"<cr>
    " inoremap <c-k> <c-r>=pumvisible() ? "\<lt>c-e>" : ''<cr><c-x><c-n><c-p>
    let g:neocomplcache_enable_auto_close_preview = 0
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_smart_case = 1
    let g:neocomplcache_enable_underbar_completion = 0
    let g:neocomplcache_min_syntax_length = 3
    " let g:neocomplcache_tags_caching_limit_file_size = 10 * 1024 * 1024
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    " let g:neocomplcache_enable_auto_select = 1
    " let g:neocomplcache_disable_auto_complete = 1

    inoremap <expr> <C-g> neocomplcache#undo_completion()
    inoremap <expr> <C-l> neocomplcache#complete_common_string()
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        return neocomplcache#smart_close_popup() . "\<CR>"
        " For no inserting <CR> key.
        " return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
    endfunction
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
        let g:neocomplcache_force_omni_patterns = g:force_omni_patterns
    endif

    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = g:omni_patterns
    endif
endif

" let g:echodoc_enable_at_startup = 1
if has('nvim') && exists('*nvim_open_win')
    let g:echodoc_enable_at_startup = 1
    let g:echodoc#type = 'floating'
endif

imap <C-\> <Plug>(neosnippet_expand_or_jump)
smap <C-\> <Plug>(neosnippet_expand_or_jump)
xmap <C-\> <Plug>(neosnippet_expand_target)
" if has('conceal')
"     set conceallevel=2 concealcursor=niv
" endif
let g:neosnippet#snippets_directory = '~/.vim_neosnippet'

" if has('python') || has('python3')
"     let g:UltiSnipsExpandTrigger = "<c-j>"
"     let g:UltiSnipsJumpForwardTrigger = "<c-j>"
"     let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" endif

" autocmd vimenter * NERDTree
let g:NERDTreeShowHidden = 1
" let g:NERDTreeHijackNetrw = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 30
" let NERDTreeDirArrowExpandable=">"
" let NERDTreeDirArrowCollapsible="v"
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

let g:gitgutter_enabled = 1
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
xnoremap <leader>gv :GV<cr>
xnoremap <leader>gV :GV?<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gB :Gbrowse<cr>
nnoremap <leader>gc :Gcommit -v<cr>
nnoremap <leader>gC :Git checkout<space>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gD :Gdelete<cr>
nnoremap <leader>gG :Ggrep!<space>
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
" nmap <F9> <Plug>yankstack_substitute_older_paste
" nmap <F10> <Plug>yankstack_substitute_newer_paste
" imap <F9> <Plug>yankstack_substitute_older_paste
" imap <F10> <Plug>yankstack_substitute_newer_paste

let g:tagbar_width = 30
let g:tagbar_compact = 1
nnoremap <leader>tt :TagbarToggle<cr>
nnoremap <leader>ta :TagbarOpenAutoClose<cr>

nnoremap <leader>rr :AsyncRun<space>
nnoremap <leader>rR :AsyncRun -save=2<space>
nnoremap <leader>rs :AsyncStop<cr>
nnoremap <leader>rS :AsyncStop!<cr>
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
let g:fzf_tags_command = 'ctags -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q'
let g:fzf_prefer_tmux = 1
" let g:fzf_statusline = 0
" let g:fzf_nvim_statusline = 0
" let g:fzf_layout = {'window': 'bot'.float2nr(0.4 * &lines).'new'}
" let g:fzf_colors = {
"             \ 'fg':      ['fg', 'Normal'],
"             \ 'bg':      ['bg', 'Normal'],
"             \ 'hl':      ['fg', 'Comment'],
"             \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"             \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"             \ 'hl+':     ['fg', 'Statement'],
"             \ 'info':    ['fg', 'PreProc'],
"             \ 'border':  ['fg', 'Ignore'],
"             \ 'prompt':  ['fg', 'Conditional'],
"             \ 'pointer': ['fg', 'Exception'],
"             \ 'marker':  ['fg', 'Keyword'],
"             \ 'spinner': ['fg', 'Label'],
"             \ 'header':  ['fg', 'Comment'] }
" let g:fzf_layout = {'down': '40%'}
" nnoremap <c-n> :FZFCommands<cr>
nnoremap <leader>zz :FZFFiles<cr>
nnoremap <leader>zZ :FZFFiletypes<cr>
nnoremap <leader>zf :FZFGFiles<cr>
nnoremap <leader>zF :FZFGFiles?<cr>
nnoremap <leader>zb :FZFBuffers<cr>
nnoremap <leader>zc :FZFCommands<cr>
nnoremap <leader>zC :FZFColors<cr>
nnoremap <leader>za :FZFAg<cr>
nnoremap <leader>zr :FZFRg<cr>
nnoremap <leader>zl :FZFLines<cr>
nnoremap <leader>zL :FZFBLines<cr>
nnoremap <leader>zt :FZFTags<cr>
nnoremap <leader>zT :FZFBTags<cr>
nnoremap <leader>zm :FZFMarks<cr>
nnoremap <leader>zM :FZFMaps<cr>
nnoremap <leader>zw :FZFWindows<cr>
nnoremap <leader>zh :FZFHistory<cr>
nnoremap <leader>z/ :FZFHistory/<cr>
nnoremap <leader>z: :FZFHistory:<cr>
nnoremap <leader>zH :FZFHelptags<cr>
" if has('python') || has('python3')
"     inoremap <c-\> <c-o>:FZFSnippets<cr>
" endif
nnoremap <leader>zg :FZFGrep<cr>
nnoremap <leader>zG :FZFGGrep<cr>

nnoremap <leader>Zz :FZFFiles!<cr>
nnoremap <leader>ZZ :FZFFiletypes!<cr>
nnoremap <leader>Zf :FZFGFiles!<cr>
nnoremap <leader>ZF :FZFGFiles!?<cr>
nnoremap <leader>Zb :FZFBuffers!<cr>
nnoremap <leader>Zc :FZFCommands!<cr>
nnoremap <leader>ZC :FZFColors!<cr>
nnoremap <leader>Za :FZFAg!<cr>
nnoremap <leader>Zr :FZFRg!<cr>
nnoremap <leader>Zl :FZFLines!<cr>
nnoremap <leader>ZL :FZFBLines!<cr>
nnoremap <leader>Zt :FZFTags!<cr>
nnoremap <leader>ZT :FZFBTags!<cr>
nnoremap <leader>Zm :FZFMarks!<cr>
nnoremap <leader>ZM :FZFMaps!<cr>
nnoremap <leader>Zw :FZFWindows!<cr>
nnoremap <leader>Zh :FZFHistory!<cr>
nnoremap <leader>Z/ :FZFHistory/!<cr>
nnoremap <leader>Z: :FZFHistory:!<cr>
nnoremap <leader>ZH :FZFHelptags!<cr>
nnoremap <leader>Zs :FZFSnippets!<cr>
nnoremap <leader>Zg :FZFGGrep!<cr>
nnoremap <leader>ZG :FZFGrep!<cr>

command! -bang -nargs=? -complete=dir FZF FZFFiles <args>
command! -bang -nargs=? -complete=dir FZFFiles
            \ call fzf#vim#files(<q-args>,
            \     <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=* FZFGGrep
            \ call fzf#vim#grep(
            \    'git grep --line-number --color=always '.shellescape(<q-args>),
            \     0,
            \     <bang>0 ? fzf#vim#with_preview(
            \             { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, 'up:60%') :
            \         fzf#vim#with_preview(
            \             { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, 'right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=* FZFGrep
            \ call fzf#vim#grep(
            \    'grep --line-number --color=always -r '.shellescape(<q-args>).' .',
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
            \ call FZFHistory(<q-args>,
            \     <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0)
function! FZFHistory(arg, options, bang)
    let bang = a:bang || a:arg[len(a:arg)-1] == '!'
    if a:arg[0] == ':'
        call fzf#vim#command_history(a:options, bang)
    elseif a:arg[0] == '/'
        call fzf#vim#search_history(a:options, bang)
    else
        call fzf#vim#history(a:options, bang)
    endif
endfunction
" command! -bar -bang -nargs=0 FZFFiletypes
"             \ call fzf#vim#filetypes({'left': '20%', 'options': '--reverse --margin 5%,0'}, <bang>0)
" command! -bar -bang -nargs=0 FZFColors
"             \ call fzf#vim#colors({'left': '20%', 'options': '--reverse --margin 5%,0'}, <bang>0)
command! -bang -nargs=* FZFLines
            \ call fzf#vim#lines(<q-args>, {
            \   'options': '-m --layout=default'
            \ }, <bang>0)
command! -bang -nargs=* FZFBLines
            \ call fzf#vim#buffer_lines(<q-args>, {
            \     'options': '--preview-window=' . (<bang>0 ? 'up:60%' : '50%:hidden') .
            \                ' --preview "
            \                     tail -n +{1} ' . expand('%') . ' |
            \                     head -n $(tput lines)"' .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m --layout=default'
            \ }, <bang>0)
command! -bang -nargs=* FZFBTags
            \ call fzf#vim#buffer_tags(<q-args>, {
            \     'options': '--preview-window=' . (<bang>0 ? 'right:50%' : '60%:hidden') .
            \                ' --preview "
            \                     tail -n +0\$(echo {3} | sed -nr \"s/([0-9]+);\\\"/\1/p\") {2} |
            \                     head -n $(tput lines)"' .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m --layout=default'
            \ }, <bang>0)
command! -bang -nargs=* FZFTags
            \ call fzf#vim#tags(<q-args>, {
            \     'options': '--preview-window=' . (<bang>0 ? 'up:60%' : '50%:hidden') .
            \                ' --preview "
            \                     tail -n +0\$(echo {3} | sed -nr \"s/([0-9]+);\\\"/\1/p\") {2} |
            \                     head -n $(tput lines)"' .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m --layout=default'
            \ }, <bang>0)
command! -bar -bang FZFMarks
            \ call fzf#vim#marks({
            \     'options': '--preview-window=' . (<bang>0 ? 'up:60%' : '50%:hidden') .
            \                ' --preview "
            \                     tail -n +{2} {4} ' . expand('%') . ' |
            \                     head -n $(tput lines)"' .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m --layout=default'
            \ }, <bang>0)
command! -bar -bang FZFWindows
            \ call fzf#vim#windows({
            \     'options': '--preview-window=' . (<bang>0 ? 'up:60%' : '50%:hidden') .
            \                ' --preview "
            \                     head -n $(tput lines) {3} {4}"' .
            \                 (<bang>0 ? '' : ' --bind "?:toggle-preview"') .
            \                 ' -m --layout=default'
            \ }, <bang>0)

nmap <c-_> <Plug>CommentaryLine
vmap <c-_> <Plug>Commentary

nnoremap <leader>db :DB<space>
nnoremap <leader>dB :%DB<space>
xnoremap <leader>db :DB<space>

if !exists('g:gutentags_modules')
    let g:gutentags_modules = []
endif
if executable('ctags')
    call add(g:gutentags_modules, 'ctags')
endif
if executable('gtags-cscope')
    call add(g:gutentags_modules, 'gtags_cscope')
elseif executable('cscope')
    call add(g:gutentags_modules, 'cscope')
endif
let g:gutentags_enabled = 0
let g:gutentags_generate_on_missing = 0
let g:gutentags_generate_on_new = 0
let g:gutentags_generate_on_write = 1
let g:gutentags_define_advanced_commands = 1
let g:gutentags_ctags_extra_args = ['--sort=yes', '--c++-kinds=+p', '--fields=+mnialS', '--extra=+q']
let g:gutentags_cache_dir = '~/.vim_gutentags'
nnoremap <leader>gg :GutentagsToggleEnabled<cr>
nnoremap <leader>gu :GutentagsUpdate<cr>
nnoremap <leader>gU :GutentagsUpdate!<cr>

" let g:easytags_include_members = 1
" let g:easytags_async = 1
" let g:easytags_opts = ['--sort=yes', '--c++-kinds=+p', '--fields=+iaS', '--extra=+q']

let g:airline_theme = 'dracula'
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
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = ' '
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = ' '
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
nnoremap <F9> :Goyo<cr>

" augroup changeLimelight
"     autocmd!
"     autocmd User GoyoEnter Limelight
"     autocmd User GoyoLeave Limelight!
" augroup END
" nmap <Leader>lM <Plug>(Limelight)
" xmap <Leader>lM <Plug>(Limelight)
nnoremap <F10> :Limelight!!<cr>

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

let g:better_whitespace_ctermcolor = '239'
let g:better_whitespace_guicolor = '#4e4e4e'
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
let g:argwrap_tail_indent_braces = 1
augroup setArgWrap
    au!
    au FileType go let b:argwrap_tail_comma = 1
    au FileType vim let b:argwrap_line_prefix = '\'
augroup END

" ctrl-b is unused in insert mode
imap <c-b> <c-o><Plug>(cosco-commaOrSemiColon)
" nmap <c-b> <Plug>(cosco-commaOrSemiColon)
" nmap <c-space> <Plug>(cosco-commaOrSemiColon)o
" imap <c-space> <esc><Plug>(cosco-commaOrSemiColon)o

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap <leader>fm :Neoformat<cr>
xnoremap <leader>fm :Neoformat<cr>
nnoremap <leader>fM :Neoformat<space>
xnoremap <leader>fM :Neoformat<space>

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
        nnoremap <leader>ts :split +terminal<cr>
        nnoremap <leader>tv :vert terminal<cr>
    else
        tnoremap <c-n> <c-w>:Nuake<cr>
        nnoremap <leader>ts :terminal<cr>
        nnoremap <leader>tS :terminal ++close<space>
        nnoremap <leader>tv :vert terminal<cr>
        nnoremap <leader>tV :vert terminal ++close<space>
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
