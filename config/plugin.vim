let g:plug_url_format = 'https://github.com/%s.git'

call plug#begin('~/.vim_runtime/plugged')

" Plug 'chengzeyi/vim-markify'

Plug 'lervag/vimtex'
Plug 'chengzeyi/go-highlight.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'bfrg/vim-cpp-modern'
Plug 'vim-python/python-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'uiiaoo/java-syntax.vim'

Plug 'mikelue/vim-maven-plugin'
if executable('gotests')
    Plug 'buoto/gotests-vim'
endif

if (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
    " Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
elseif has('timers')
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'yami-beta/asyncomplete-omni.vim'
    Plug 'prabirshrestha/asyncomplete-buffer.vim'
    Plug 'prabirshrestha/asyncomplete-file.vim'
    " if executable('ctags')
    "     Plug 'prabirshrestha/asyncomplete-tags.vim'
    " endif
    " if executable('look')
    "     Plug 'gonzoooooo/asyncomplete-look.vim'
    " endif
    Plug 'Shougo/neco-vim'
    Plug 'prabirshrestha/asyncomplete-necovim.vim'
endif

Plug 'AndrewRadev/splitjoin.vim'

Plug 'mbbill/undotree'

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-grepper'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'

Plug 'junegunn/gv.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
if has('unix')
    Plug 'tpope/vim-eunuch'
endif

Plug 'skywind3000/asyncrun.vim'

Plug 'janko/vim-test'

Plug 'airblade/vim-gitgutter'

Plug 'machakann/vim-highlightedyank'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

if (v:version >= 800 || has('nvim-0.3.0')) && has('python3')
    if has('nvim')
        Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
    else
        Plug 'Shougo/denite.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
endif
Plug 'Shougo/neosnippet.vim'
Plug 'chengzeyi/neosnippet-snippets', {'dir': '~/.vim_snippets'}

" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'

" Can make VIM slow while editing large files.
" Plug 'majutsushi/tagbar'

Plug 'sbdchd/neoformat'

Plug 'neomake/neomake'

Plug 'junegunn/fzf', {'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'

Plug 'nathanaelkane/vim-indent-guides'

if exists(':terminal')
    if has('nvim-0.4.0') || has('patch-8.2.191')
        Plug 'chengzeyi/multiterm.vim'
    elseif has('patch-8.0.1593') || has('nvim')
        Plug 'Lenovsky/nuake'
    endif
endif

if (has('job') && has('channel')) || has('nvim')
    Plug 'metakirby5/codi.vim'
endif

" Plug 'lfilho/cosco.vim'

Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-entire'

Plug 'terryma/vim-expand-region'

Plug 'guns/xterm-color-table.vim'
Plug 'chrisbra/Colorizer'
" Plug 'ap/vim-css-color'

Plug 'lifepillar/vim-colortemplate'

Plug 'chengzeyi/hydrangea-vim'
Plug 'chengzeyi/space-vim-theme'
Plug 'chengzeyi/space-vim-dark'
Plug 'rakr/vim-one'
Plug 'arzg/vim-colors-xcode'
Plug 'lifepillar/vim-gruvbox8'
Plug 'cormacrelf/vim-colors-github'
Plug 'ayu-theme/ayu-vim'
Plug 'logico/typewriter-vim'
Plug 'sainnhe/edge'

call plug#end()

augroup MyFZFVimTex
    autocmd!
    au FileType tex nnoremap <buffer> <leader>fx :call vimtex#fzf#run()<cr>
augroup END
if !exists('g:vimtex_toc_config')
    let g:vimtex_toc_config = {}
endif
let g:vimtex_toc_config.split_pos = 'vert rightbelow'
let g:vimtex_imaps_enabled = 0
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 0
let g:vimtex_format_enabled = 1

let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1

let g:python_highlight_all = 1

let g:vim_markdown_conceal = 1
let g:vim_markdown_conceal_code_blocks = 1
let g:vim_markdown_fenced_languages = [
            \ 'c++=cpp',
            \ 'viml=vim',
            \ 'bash=sh',
            \ 'ini=dosini',
            \ 'csharp=cs'
            \ ]

if (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
    let g:coc_config_home = expand( '~/.vim_runtime/config')

    let g:statusline_extra_left = ['coc#status', []]
    let g:statusline_extra_right = ['CocCurrentFunction', []]

    function! CocCurrentFunction() abort
        return get(b:, 'coc_current_function', '')
    endfunction

    augroup MyCoc
        autocmd!
        au CmdwinEnter [:>] let b:coc_suggest_disable = 1
        autocmd CursorHold * silent! call CocActionAsync('highlight')
        autocmd FileType typescript,json silent! setl formatexpr=CocAction('formatSelected')
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup END

    let g:refresh_pum = ['coc#refresh', []]
    inoremap <expr> <c-l> coc#refresh()

    nmap [g <Plug>(coc-diagnostic-prev)
    nmap ]g <Plug>(coc-diagnostic-next)
    nmap [e <Plug>(coc-diagnostic-prev-error)
    nmap ]e <Plug>(coc-diagnostic-next-error)
    nmap <expr> gl CocHasProvider('declaration') ? '<Plug>(coc-declaration)' : 'gl'
    nmap <expr> gd CocHasProvider('definition') ? '<Plug>(coc-definition)' : 'gd'
    nmap <expr> gy CocHasProvider('typeDefinition') ? '<Plug>(coc-type-definition)' : 'gy'
    nmap <expr> gi CocHasProvider('implementation') ? '<Plug>(coc-implementation)' : 'gi'
    nmap <expr> gr CocHasProvider('reference') ? '<Plug>(coc-references)' : 'gr'
    nmap <leader><cr>r <Plug>(coc-rename)
    nmap <leader><cr>R <Plug>(coc-refactor)
    nmap <leader><cr>q :CocFix<cr>
    xmap <leader><cr>q :CocFix<cr>
    nmap <leader><cr>Q <Plug>(coc-fix-current)
    xmap <leader><cr>F <Plug>(coc-format-selected)
    nmap <leader><cr>F <Plug>(coc-format-selected)
    nmap <leader><cr>f <Plug>(coc-format)
    xmap <leader><cr>A <Plug>(coc-codeaction-selected)
    nmap <leader><cr>A <Plug>(coc-codeaction-selected)
    nmap <leader><cr>a :CocAction<cr>
    xmap <leader><cr>a :CocAction<cr>
    nmap <leader><cr>l <Plug>(coc-codelens-action)
    nmap <leader><cr>h :call CocActionAsync('showSignatureHelp')<cr>
    imap <c-q> <c-o>:call CocActionAsync('showSignatureHelp')<cr>
    xmap im <Plug>(coc-funcobj-i)
    xmap am <Plug>(coc-funcobj-a)
    omap im <Plug>(coc-funcobj-i)
    omap am <Plug>(coc-funcobj-a)
    nmap <leader><cr>] <Plug>(coc-range-select)
    xmap <leader><cr>] <Plug>(coc-range-select)
    nmap <leader><cr>[ <Plug>(coc-range-select-backward)
    xmap <leader><cr>[ <Plug>(coc-range-select-backward)
    command! -nargs=0 CocFormat call CocAction('format')
    command! -nargs=? CocFold call CocAction('fold', <f-args>)
    command! -nargs=0 CocOrganize call CocAction('runCommand', 'editor.action.organizeImport')
    nnoremap <leader><cr><cr> :CocList<cr>
    nnoremap <leader><cr>p :CocListResume<cr>
    nnoremap <leader><cr>d :CocList diagnostics<cr>
    nmap <leader><cr>D <Plug>(coc-diagnostic-info)
    nnoremap <leader><cr>e :CocList extensions<cr>
    nnoremap <leader><cr>c :CocList commands<cr>
    nnoremap <leader><cr>o :CocList outline<cr>
    nnoremap <leader><cr>s :CocList -I symbols<cr>
    nnoremap ]c :CocNext<cr>
    nnoremap [c :CocPrev<cr>
    nnoremap <leader><cr>C :CocConfig<cr>
    nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
    nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"

    nnoremap K :call <SID>show_documentation()<CR>

    function! s:show_documentation() abort
        if (index(['vim', 'help'], &filetype) >= 0)
            try
                execute 'h '. expand('<cword>')
                return
            catch
            endtry
        endif
        if CocHasProvider('hover')
            call CocAction('doHover')
        else
            normal! K
        endif
    endfunction

    command! -nargs=0 CocInstallBasic call CocInstallBasic()

    function! CocInstallBasic() abort
        let exts = [
                    \ 'coc-marketplace',
                    \ 'coc-json',
                    \ 'coc-vimtex',
                    \ 'coc-vimlsp'
                    \ ]
        for ext in exts
            execute 'CocInstall ' . ext
        endfor
    endfunction
elseif has('timers')
    let g:asyncomplete_auto_completeopt = 0

    let g:asyncomplete_auto_popup = 0

    let g:refresh_pum = ['asyncomplete#force_refresh', []]
    inoremap <expr> <c-l> asyncomplete#force_refresh()

    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
                \ 'name': 'omni',
                \ 'whitelist': ['*'],
                \ 'blacklist': ['c', 'cpp', 'html'],
                \ 'completor': function('asyncomplete#sources#omni#completor')
                \  }))
    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
                \ 'name': 'buffer',
                \ 'whitelist': ['*'],
                \ 'completor': function('asyncomplete#sources#buffer#completor'),
                \ 'config': {
                \    'max_buffer_size': 5000000,
                \  },
                \ }))
    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
                \ 'name': 'file',
                \ 'whitelist': ['*'],
                \ 'completor': function('asyncomplete#sources#file#completor')
                \ }))
    " if executable('ctags')
    "     au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
    "                 \ 'name': 'tags',
    "                 \ 'whitelist': ['c'],
    "                 \ 'completor': function('asyncomplete#sources#tags#completor'),
    "                 \ 'config': {
    "                 \    'max_file_size': 50000000,
    "                 \  },
    "                 \ }))
    " endif
    " if executable('look')
    "     au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#look#get_source_options({
    "                 \ 'name': 'look',
    "                 \ 'whitelist': ['*'],
    "                 \ 'completor': function('asyncomplete#sources#look#completor'),
    "                 \ }))
    " endif
    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
                \ 'name': 'necovim',
                \ 'whitelist': ['vim'],
                \ 'completor': function('asyncomplete#sources#necovim#completor'),
                \ }))
endif

if (v:version >= 800 || has('nvim-0.3.0')) && has('python3')
    nnoremap <leader>dd :Denite<space>
    nnoremap <leader>dD :Denite directory_rec<cr>
    nnoremap <leader>db :Denite buffer<cr>
    nnoremap <leader>dc :Denite command<cr>
    nnoremap <leader>dC :Denite colorscheme<cr>
    nnoremap <leader>d: :Denite command_history<cr>
    nnoremap <leader>de :Denite change<cr>
    nnoremap <leader>dh :Denite file/old<cr>
    nnoremap <leader>dH :Denite help<cr>
    nnoremap <leader>df :Denite file/rec<cr>
    nnoremap <leader>dF :Denite file<cr>
    nnoremap <leader>dt :Denite tag<cr>
    nnoremap <leader>dT :Denite filetype<cr>
    nnoremap <leader>dg :Denite grep<cr>
    nnoremap <leader>dj :Denite jump<cr>
    nnoremap <leader>dl :Denite line<cr>
    nnoremap <leader>dm :Denite menu<cr>
    nnoremap <leader>dM :Denite mark<cr>
    nnoremap <leader>do :Denite outline<cr>
    nnoremap <leader>dr :Denite register<cr>
    nnoremap <leader>ds :Denite source<cr>
    nnoremap <leader>dS :Denite spell<cr>
    nnoremap <leader>dn :Denite neosnippet<cr>
    augroup MyDenite
        autocmd!
        autocmd FileType denite call s:denite_my_settings()
        autocmd FileType denite-filter call s:denite_filter_my_settings()
        autocmd User denite-preview setlocal nonumber norelativenumber
        autocmd FileType denite-filter let b:coc_suggest_disable = 1
        autocmd FileType denite-filter let g:asyncomplete_auto_popup = 0
        autocmd FileType denite-filter autocmd BufEnter <buffer> let g:asyncomplete_auto_popup = 0
        autocmd FileType denite-filter autocmd BufLeave <buffer> let g:asyncomplete_auto_popup = 1
    augroup END

    function! s:denite_my_settings() abort
        nnoremap <nowait><silent><buffer><expr> <C-\>
                    \ denite#do_map('choose_action')
        nnoremap <nowait><silent><buffer><expr> <CR>
                    \ denite#do_map('do_action')
        nnoremap <nowait><silent><buffer><expr> a
                    \ denite#do_map('do_action', 'append')
        nnoremap <nowait><silent><buffer><expr> r
                    \ denite#do_map('do_action', 'replace')
        nnoremap <nowait><silent><buffer><expr> y
                    \ denite#do_map('do_action', 'yank')
        nnoremap <nowait><silent><buffer><expr> d
                    \ denite#do_map('do_action', 'delete')
        nnoremap <nowait><silent><buffer><expr> p
                    \ denite#do_map('do_action', 'preview')
        nnoremap <nowait><silent><buffer><expr> h
                    \ denite#do_map('do_action', 'highlight')
        nnoremap <nowait><silent><buffer><expr> t
                    \ denite#do_map('do_action', 'tabopen')
        nnoremap <nowait><silent><buffer><expr> s
                    \ denite#do_map('do_action', 'split')
        nnoremap <nowait><silent><buffer><expr> v
                    \ denite#do_map('do_action', 'vsplit')
        nnoremap <nowait><silent><buffer><expr> R
                    \ denite#do_map('do_action', 'redraw')
        nnoremap <nowait><silent><buffer><expr> '
                    \ denite#do_map('do_action', 'quick_move')
        nnoremap <nowait><silent><buffer><expr> c
                    \ denite#do_map('do_action', 'cd')
        nnoremap <nowait><silent><buffer><expr> e
                    \ denite#do_map('do_action', 'edit')
        nnoremap <nowait><silent><buffer><expr> E
                    \ denite#do_map('do_action', 'echo')
        nnoremap <nowait><silent><buffer><expr> o
                    \ denite#do_map('do_action', 'open')
        nnoremap <nowait><silent><buffer><expr> q
                    \ denite#do_map('quit')
        nnoremap <nowait><silent><buffer><expr> <ESC>
                    \ denite#do_map('quit')
        nnoremap <nowait><silent><buffer><expr> <C-c>
                    \ denite#do_map('quit')
        nnoremap <nowait><silent><buffer><expr> i
                    \ denite#do_map('open_filter_buffer')
        nnoremap <nowait><silent><buffer><expr> /
                    \ denite#do_map('open_filter_buffer')
        nnoremap <nowait><silent><buffer><expr> <SPACE>
                    \ denite#do_map('toggle_select')
        nnoremap <nowait><silent><buffer><expr> <TAB>
                    \ denite#do_map('toggle_select') . 'j'
        nnoremap <nowait><silent><buffer><expr> <S-TAB>
                    \ denite#do_map('toggle_select') . 'k'
    endfunction

    function! s:denite_filter_my_settings() abort
        imap <nowait><silent><buffer> <C-y>
                    \ <Plug>(denite_filter_update)
        imap <nowait><silent><buffer> <Esc>
                    \ <Plug>(denite_filter_quit)
        imap <nowait><silent><buffer> <C-o>
                    \ <Plug>(denite_filter_quit)
        inoremap <nowait><silent><buffer><expr> <C-c>
                    \ denite#do_map('quit')
        inoremap <nowait><silent><buffer><expr> <CR>
                    \ denite#do_map('do_action')
        inoremap <nowait><silent><buffer><expr> <C-\>
                    \ denite#do_map('choose_action')
        inoremap <nowait><silent><buffer><expr> <C-SPACE>
                    \ denite#do_map('toggle_select')
        inoremap <nowait><silent><buffer><expr> <TAB>
                    \ denite#do_map('toggle_select') .
                    \ "\<Esc>\<C-w>p:call cursor(line('.')+1,0)\<CR>\<C-w>pA"
        inoremap <nowait><silent><buffer><expr> <S-TAB>
                    \ denite#do_map('toggle_select') .
                    \ "\<Esc>\<C-w>p:call cursor(line('.')-1,0)\<CR>\<C-w>pA"
        inoremap <nowait><silent><buffer> <C-n>
                    \ <Esc><C-w>p:call cursor(line('.')+1,0)<CR><C-w>pA
        inoremap <nowait><silent><buffer> <C-p>
                    \ <Esc><C-w>p:call cursor(line('.')-1,0)<CR><C-w>pA
        inoremap <nowait><silent><buffer> <Down>
                    \ <Esc><C-w>p:call cursor(line('.')+1,0)<CR><C-w>pA
        inoremap <nowait><silent><buffer> <Up>
                    \ <Esc><C-w>p:call cursor(line('.')-1,0)<CR><C-w>pA
    endfunction

    try
        call denite#custom#option('_', {
                    \ 'prompt': '❯',
                    \ 'auto_resume': 1,
                    \ 'statusline': 0,
                    \ 'smartcase': 1,
                    \ 'max_dynamic_update_candidates': 50000
                    \ })
        if has('nvim-0.4.0')
            call denite#custom#option('_', {
                        \ 'split': 'floating',
                        \ 'vertical_preview': 1,
                        \ 'floating_preview': 1})
        endif
        call denite#custom#source('grep',
                    \ 'converters', ['converter/abbr_word'])
    catch
    endtry
endif

function! NeoSnippetCompleteSnippets(arglead, cmdline, cursorpos) abort
    return map(filter(values(neosnippet#helpers#get_snippets()),
                \ 'stridx(v:val.word, a:arglead) == 0'), 'v:val.word')
endfunction

function! NeoSnippetExpand() abort
    let trigger = input('Please input snippet trigger: ',
                \ '', 'customlist,NeoSnippetCompleteSnippets')
    if !has_key(neosnippet#helpers#get_snippets('i'), trigger) && trigger !=# ''
        echo 'The trigger is invalid.'
        return
    endif

    return neosnippet#expand(trigger)
endfunction

inoremap <expr> <c-x><c-\> NeoSnippetExpand()
imap <C-\> <Plug>(neosnippet_expand_or_jump)
smap <C-\> <Plug>(neosnippet_expand_or_jump)
xmap <C-\> <Plug>(neosnippet_expand_target)
imap <C-]> <Plug>(neosnippet_jump_or_expand)
smap <C-]> <Plug>(neosnippet_jump_or_expand)
let g:neosnippet#snippets_directory = '~/.vim_snippets'
let g:neosnippet#expand_word_boundary = 1
let g:neosnippet#disable_runtime_snippets = {'_': 1}

" autocmd vimenter * NERDTree
let g:NERDTreeShowHidden = 1
" let g:NERDTreeHijackNetrw = 0
let g:NERDTreeMinimalUI = 1
" let g:NERDTreeWinPos = 'left'
" let g:NERDTreeWinSize = 30
" let NERDTreeDirArrowExpandable=">"
" let NERDTreeDirArrowCollapsible="v"
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nN :NERDTreeToggleVCS<cr>
nnoremap <leader>nb :NERDTreeFromBookmark<space>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nF :NERDTreeFocus<cr>
nnoremap <leader>nv :NERDTreeVCS<cr>
nnoremap <leader>nc :NERDTreeCWD<cr>
nnoremap <leader>nr :NERDTreeRefreshRoot<cr>
nnoremap <leader>nm :NERDTreeMirror<cr>
augroup MyNERDTree
    autocmd!
    autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
augroup END

let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_map = '<c-p>'
nnoremap <leader>pp :CtrlP<cr>
nnoremap <leader>pc :CtrlPCurFile<cr>
nnoremap <leader>pC :CtrlPCurWD<cr>
nnoremap <leader>pr :CtrlPRoot<cr>
nnoremap <leader>pR :CtrlPRTS<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pt :CtrlPTag<cr>
nnoremap <leader>pl :CtrlPLine<cr>
nnoremap <leader>pL :CtrlPLastMode<cr>
nnoremap <leader>pq :CtrlPQuickfix<cr>
nnoremap <leader>pm :CtrlPMRU<cr>
nnoremap <leader>pM :CtrlPMixed<cr>
nnoremap <leader>pu :CtrlPUndo<cr>
nnoremap <leader>ph :CtrlPChange<cr>
nnoremap <leader>pd :CtrlPDir<cr>

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

nnoremap <leader>pf :CtrlPFunky<cr>
" narrow the list down with a word under cursor
nnoremap <leader>pF :execute 'CtrlPFunky ' . expand('<cword>')<cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_nolim = 1
" let g:ctrlp_funky_matchtype = 'path'
" let g:ctrlp_funky_multi_buffers = 1

" hi GitGutterAdd ctermfg=44 ctermbg=236 cterm=bold guifg=#169ec4 guibg=#2a303b gui=bold
" hi GitGutterChange ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
" hi GitGutterDelete ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
" hi GitGutterChangeDelete ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_use_location_list = 1
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
nnoremap <leader>hs :GitGutterSignsToggle<cr>
nnoremap <leader>hl :GitGutterLineHighlightsToggle<cr>
if has('nvim-0.3.2')
    nnoremap <leader>hn :GitGutterLineNrHighlightsToggle<cr>
endif
nnoremap <leader>hq :GitGutterQuickFix<cr>

nnoremap <leader>gv :GV<cr>
nnoremap <leader>gV :GV!<cr>
xnoremap <leader>gv :GV<cr>
xnoremap <leader>gV :GV?<cr>

nnoremap <leader>gg :Git<space>
nnoremap <leader>gG :Ggrep!<space>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gB :Gbrowse<cr>
nnoremap <leader>gc :Gcommit -v<cr>
nnoremap <leader>gC :Git checkout<space>
nnoremap <leader>gd :Gdiffsplit<cr>
nnoremap <leader>gD :Gvdiffsplit<cr>
nnoremap <leader>gm :Gmerge -v<space>
nnoremap <leader>gM :Gmove<space>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gL :Glog!<cr>
nnoremap <leader>gh :0Glog<cr>
nnoremap <leader>gH :0Glog!<cr>
nnoremap <leader>gf :Gfetch -v<cr>
nnoremap <leader>gp :Gpush<cr>
nnoremap <leader>gP :Gpull -v<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gS :Git stash<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gR :Git revert<space>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gw :Gwrite<cr>

" let g:statusline_extra_right = ['tagbar#currenttag', ['%s', '']]
" let g:tagbar_width = 30
" let g:tagbar_compact = 1
" nnoremap <leader>tt :TagbarToggle<cr>
" nnoremap <leader>ta :TagbarOpenAutoClose<cr>

nnoremap <leader>mm :Neomake<cr>
nnoremap <leader>mM :Neomake<space>
nnoremap <leader>mp :Neomake!<cr>
nnoremap <leader>mP :Neomake!<space>
nnoremap <leader>ms :NeomakeCancelJobs<cr>
nnoremap <leader>mS :NeomakeCancelJob<space>
nnoremap <leader>mc :NeomakeClean<cr>
nnoremap <leader>mC :NeomakeClean!<cr>
nnoremap <leader>mi :NeomakeStatus<cr>
nnoremap <leader>mI :NeomakeInfo<cr>
nnoremap <leader>ml :NeomakeListJobs<cr>
nnoremap <leader>ms :NeomakeSh<space>
nnoremap <leader>mS :NeomakeSh!<space>
nnoremap <leader>mt :NeomakeToggle<cr>
nnoremap <leader>mT :NeomakeToggleBuffer<cr>
nnoremap <leader>md :NeomakeDisable<cr>
nnoremap <leader>mD :NeomakeDisableBuffer<cr>
nnoremap <leader>me :NeomakeEnable<cr>
nnoremap <leader>mE :NeomakeEnableBuffer<cr>
nnoremap <leader>ma :call neomake#configure#automake('w')<cr>
nnoremap <leader>mA :call neomake#configure#reset_automake()<cr>

let g:fzf_command_prefix = 'FZF'
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
let g:fzf_tags_command = 'ctags -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q'
let g:fzf_prefer_tmux = 1
let g:fzf_preview_window = 'up'
" let g:fzf_colors =
"             \ { 'fg':      ['fg', 'Normal'],
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
if has('nvim-0.4.0') || has('patch-8.2.191')
    let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
endif
" let g:fzf_layout = {'window': 'bot'.float2nr(0.4 * &lines).'new'}
" let g:fzf_layout = {'down': '40%'}
" Some workaround to fix the character deletion error at empty lines.
imap <c-x>w 0<c-h><plug>(fzf-complete-word)
imap <c-x>p 0<c-h><plug>(fzf-complete-path)
imap <c-x>f 0<c-h><plug>(fzf-complete-file)
imap <c-x>F 0<c-h><plug>(fzf-complete-file-ag)
imap <c-x>l 0<c-h><plug>(fzf-complete-buffer-line)
imap <c-x>L 0<c-h><plug>(fzf-complete-line)
inoremap <expr> <c-x>g fzf#vim#complete(fzf#wrap({
            \ 'prefix': '^.*$',
            \ 'source': 'grep -n --color=always -r .',
            \ 'options': '--ansi --delimiter : --nth 3..',
            \ 'reducer': {lines -> join(split(lines[0], ':\zs')[2:], '')}
            \ }))
inoremap <expr> <c-x>G fzf#vim#complete(fzf#wrap({
            \ 'prefix': '^.*$',
            \ 'source': 'git grep -n --color=always ^',
            \ 'options': '--ansi --delimiter : --nth 3..',
            \ 'reducer': {lines -> join(split(lines[0], ':\zs')[2:], '')},
            \ 'dir': systemlist('git rev-parse --show-toplevel')[0]
            \ }))
inoremap <expr> <c-x>r fzf#vim#complete(fzf#wrap({
            \ 'prefix': '^.*$',
            \ 'source': 'rg -n ^ --color always',
            \ 'options': '--ansi --delimiter : --nth 3..',
            \ 'reducer': {lines -> join(split(lines[0], ':\zs')[2:], '')}
            \ }))
nnoremap <leader>fd :FZFCd<cr>
nnoremap <leader>fD :FZFTcd<cr>
nnoremap <leader>Fd :FZFCd!<cr>
nnoremap <leader>FD :FZFTcd!<cr>
command! -nargs=* -complete=dir -bang FZFCd call fzf#run(fzf#wrap({
            \ 'source': 'find ' . (empty(<q-args>) ? '.' : <q-args>) . ' -type d',
            \ 'sink': 'cd'
            \ }, <bang>0))
command! -nargs=* -complete=dir -bang FZFTcd call fzf#run(fzf#wrap({
            \ 'source': 'find ' . (empty(<q-args>) ? '.' : <q-args>) . ' -type d',
            \ 'sink': 'tcd'
            \ }, <bang>0))
nnoremap <F3> :FZFCommands<cr>
nnoremap <S-F3> :FZFCommands!<cr>
nmap <F4> <plug>(fzf-maps-n)
xmap <F4> <plug>(fzf-maps-x)
omap <F4> <plug>(fzf-maps-o)
imap <F4> <plug>(fzf-maps-i)
nnoremap <leader>ff :FZFFiles<cr>
nnoremap <leader>fF :FZFFiletypes<cr>
nnoremap <leader>fi :FZFGFiles<cr>
nnoremap <leader>fI :FZFGFiles?<cr>
nnoremap <leader>fb :FZFBuffers<cr>
nnoremap <leader>fo :FZFBCommits<cr>
nnoremap <leader>fO :FZFCommits<cr>
nnoremap <leader>fc :FZFCommands<cr>
nnoremap <leader>fC :FZFColors<cr>
nnoremap <leader>fa :FZFAg<cr>
nnoremap <leader>fr :FZFRg<cr>
nnoremap <leader>fl :FZFBLines<cr>
nnoremap <leader>fL :FZFLines<cr>
nnoremap <leader>ft :FZFBTags<cr>
nnoremap <leader>fT :FZFTags<cr>
nnoremap <leader>fm :FZFMarks<cr>
nnoremap <leader>fM :FZFMaps<cr>
nnoremap <leader>fw :FZFWindows<cr>
nnoremap <leader>fe :FZFLocate<space>
nnoremap <leader>fh :FZFHistory<cr>
nnoremap <leader>f/ :FZFHistory/<cr>
nnoremap <leader>f: :FZFHistory:<cr>
nnoremap <leader>fH :FZFHelptags<cr>
" if v:version >= 740 && has('python3')
"     nnoremap <leader>fs :FZFSnippets<cr>
" endif
nnoremap <leader>fg :FZFGrep<cr>
nnoremap <leader>fG :FZFGGrep<cr>
nnoremap <leader>fq :FZFQuickFix<cr>
nnoremap <leader>fQ :FZFLocList<cr>

nnoremap <leader>Fz :FZFFiles!<cr>
nnoremap <leader>FZ :FZFFiletypes!<cr>
nnoremap <leader>Ff :FZFGFiles!<cr>
nnoremap <leader>FF :FZFGFiles!?<cr>
nnoremap <leader>Fb :FZFBuffers!<cr>
nnoremap <leader>Fo :FZFBCommits!<cr>
nnoremap <leader>FO :FZFCommits!<cr>
nnoremap <leader>Fc :FZFCommands!<cr>
nnoremap <leader>FC :FZFColors!<cr>
nnoremap <leader>Fa :FZFAg!<cr>
nnoremap <leader>Fr :FZFRg!<cr>
nnoremap <leader>Fl :FZFBLines!<cr>
nnoremap <leader>FL :FZFLines!<cr>
nnoremap <leader>Ft :FZFBTags!<cr>
nnoremap <leader>FT :FZFTags!<cr>
nnoremap <leader>Fm :FZFMarks!<cr>
nnoremap <leader>FM :FZFMaps!<cr>
nnoremap <leader>Fw :FZFWindows!<cr>
nnoremap <leader>Fe :FZFLocate!<space>
nnoremap <leader>Fh :FZFHistory!<cr>
nnoremap <leader>F/ :FZFHistory/!<cr>
nnoremap <leader>F: :FZFHistory:!<cr>
nnoremap <leader>FH :FZFHelptags!<cr>
" if v:version >= 740 && has('python3')
"     nnoremap <leader>Fs :FZFSnippets!<cr>
" endif
nnoremap <leader>Fg :FZFGGrep!<cr>
nnoremap <leader>FG :FZFGrep!<cr>
nnoremap <leader>Fq :FZFQuickFix!<cr>
nnoremap <leader>FQ :FZFLocList!<cr>

" command! -bar -bang -nargs=0 FZFFiletypes
"             \ call fzf#vim#filetypes({'left': '20%', 'options': '--reverse --margin 5%,0'}, <bang>0)
" command! -bar -bang -nargs=0 FZFColors
"             \ call fzf#vim#colors({'left': '20%', 'options': '--reverse --margin 5%,0'}, <bang>0)

nmap <c-_> <Plug>CommentaryLine
xmap <c-_> <Plug>Commentary

nnoremap <leader>rr :AsyncRun<space>
nnoremap <leader>rR :AsyncRun!<space>
nnoremap <leader>rs :AsyncStop<cr>
nnoremap <leader>rS :AsyncStop!<cr>
let g:asyncrun_auto = ''
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

nnoremap <leader>Tn :TestNearest<CR>
nnoremap <leader>TN :TestNearest<Space>
nnoremap <leader>Tf :TestFile<CR>
nnoremap <leader>TF :TestFile<Space>
nnoremap <leader>Ts :TestSuite<CR>
nnoremap <leader>TS :TestSuite<Space>
nnoremap <leader>Tl :TestLast<CR>
nnoremap <leader>Tv :TestVisit<CR>
" let test#strategy = 'neomake'

let g:goyo_width = '95%'
let g:goyo_height = '95%'
nnoremap <F9> :Goyo<cr>

nnoremap <F10> :Limelight!!<cr>

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
nmap gA <Plug>(LiveEasyAlign)
xmap gA <Plug>(LiveEasyAlign)

nnoremap <c-g> :Grepper<cr>
if !exists('g:grepper')
    let g:grepper = {}
endif
let g:grepper.prompt_mapping_tool = '<c-g>'

" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

nnoremap <leader>uu :UndotreeToggle<cr>
nnoremap <leader>uf :UndotreeFocus<cr>
nnoremap <leader>us :UndotreeShow<cr>
nnoremap <leader>uh :UndotreeHide<cr>
let g:undotree_WindowLayout = 4
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

" nnoremap <leader>mt :MarkifyToggle<cr>
" nnoremap <leader>mk :Markify<cr>
" nnoremap <leader>mc :MarkifyClear<cr>
" let g:markify_echo_current_message = 1

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap g<c-f> :Neoformat<cr>
xnoremap g<c-f> :Neoformat<cr>
nnoremap <a-f> :Neoformat<cr>
xnoremap <a-f> :Neoformat<cr>

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
    if has('nvim-0.4.0') || has('patch-8.2.191')
        nmap <F12> <Plug>(Multiterm)
        tmap <F12> <Plug>(Multiterm)
    elseif has('patch-8.0.1593') || has('nvim')
        nnoremap <F12> :Nuake<cr>
        if has('nvim')
            tnoremap <F12> <c-\><c-n>:Nuake<cr>
        else
            tnoremap <F12> <c-w>:Nuake<cr>
        endif
    endif
endif

if has('nvim') || has('job') || has('channel')
    nnoremap <leader>co :Codi!!<cr>
    nnoremap <leader>cO :Codi!!<space>
endif

" nmap <c-right> <Plug>(cosco-commaOrSemiColon)
" imap <c-right> <c-o><Plug>(cosco-commaOrSemiColon)
" nmap <c-down> <Plug>(cosco-commaOrSemiColon):append<cr><cr>.<cr>
" imap <c-down> <c-o><Plug>(cosco-commaOrSemiColon)<c-g>U<c-o>o
" nmap <a-cr> <Plug>(cosco-commaOrSemiColon):append<cr><cr>.<cr>
" imap <a-cr> <c-o><Plug>(cosco-commaOrSemiColon)<c-g>U<c-o>o

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
                \     'select': ['au', 'a_'],
                \     'scan': 'line',
                \   },
                \   'underscore-i': {
                \     'pattern': '\v_*\zs[a-zA-Z0-9]*\ze',
                \     'select': ['iu', 'i_'],
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

try
    call expand_region#custom_text_objects({
                \ "\/\\n\\n\<CR>": 1,
                \ 'a]' :1,
                \ 'ab' :1,
                \ 'aB' :1,
                \ 'ii' :0,
                \ 'ai' :0
                \ })
catch
endtry

nmap <leader>cc <Plug>Colorizer
xmap <leader>cc <Plug>Colorizer

let g:space_vim_dark_background = 233

let g:space_vim_italic = 1

let g:github_colors_soft = 1
let g:github_colors_block_diffmark = 1
