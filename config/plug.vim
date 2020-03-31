let g:plug_url_format = 'https://github.com/%s.git'

call plug#begin('~/.vim_runtime/plugged')

" Plug 'chengzeyi/vim-markify'

Plug 'lervag/vimtex'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-cpp-modern'
Plug 'arp242/gopher.vim'
Plug 'vim-python/python-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'uiiaoo/java-syntax.vim'

if exists('g:use_coc') && (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
else
    if has('timers')
        Plug 'prabirshrestha/async.vim'
        if has('lambda')
            Plug 'mattn/vim-lsp-settings'
            Plug 'prabirshrestha/vim-lsp'
            Plug 'prabirshrestha/asyncomplete-lsp.vim'
        endif

        Plug 'prabirshrestha/asyncomplete.vim'
        Plug 'yami-beta/asyncomplete-omni.vim'
        Plug 'prabirshrestha/asyncomplete-buffer.vim'
        Plug 'prabirshrestha/asyncomplete-file.vim'
        Plug 'prabirshrestha/asyncomplete-tags.vim'
        if executable('look')
            Plug 'gonzoooooo/asyncomplete-look.vim'
        endif

        " Plug 'prabirshrestha/asyncomplete-neosnippet.vim'
        " if has('python3')
        "     Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
        " endif

        " Plug 'Shougo/neco-syntax'
        " Plug 'prabirshrestha/asyncomplete-necosyntax.vim'

        Plug 'Shougo/neco-vim'
        Plug 'prabirshrestha/asyncomplete-necovim.vim'
    endif
endif

Plug 'jiangmiao/auto-pairs'

Plug 'FooSoft/vim-argwrap'

Plug 'mbbill/undotree'

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

" Plug 'ntpeters/vim-better-whitespace'

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
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'

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

" if v:version >=740 && has('python3')
"     Plug 'SirVer/ultisnips'
"     Plug 'chengzeyi/vim-snippets', {'dir': '~/.vim_snippets'}
" endif

Plug 'majutsushi/tagbar'

Plug 'sbdchd/neoformat'

Plug 'neomake/neomake'

" Plug 'ludovicchabant/vim-gutentags'

Plug 'junegunn/fzf', {'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'

Plug 'nathanaelkane/vim-indent-guides'

if exists(':terminal') && (has('patch-8.0.1593') || has('nvim'))
    Plug 'Lenovsky/nuake'
endif

if (has('job') && has('channel')) || has('nvim')
    Plug 'metakirby5/codi.vim'
endif

Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'glts/vim-textobj-comment'

Plug 'guns/xterm-color-table.vim'
Plug 'ap/vim-css-color'

" Plug 'rhysd/devdocs.vim'

Plug 'cocopon/iceberg.vim'
" Plug 'sickill/vim-monokai'
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'
" Plug 'arcticicestudio/nord-vim'
Plug 'chengzeyi/hydrangea-vim'
Plug 'Badacadabra/vim-archery'
" Plug 'logico-ar/typewriter-vim'
Plug 'reedes/vim-colors-pencil'
Plug 'cormacrelf/vim-colors-github'

call plug#end()

augroup MyFZFVimTex
    autocmd!
    au FileType tex nnoremap <leader>zx :call vimtex#fzf#run()<cr>
augroup END
if !exists('g:vimtex_toc_config')
    let g:vimtex_toc_config = {}
endif
let g:vimtex_toc_config.split_pos = 'vert rightbelow'
let g:vimtex_imaps_enabled = 0
let g:vimtex_quickfix_open_on_warning = 0
" let g:vimtex_format_enabled = 1

let g:python_highlight_all = 1

let g:vim_markdown_conceal = 1
let g:vim_markdown_conceal_code_blocks = 1

let g:csv_no_conceal = 1
let g:no_plugin_maps = 1

if exists('g:use_coc') && (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
    let g:coc_config_home = $HOME . '/.vim_runtime/config'

    augroup MyCoc
        autocmd!
        au CmdwinEnter [:>] iunmap <buffer> <Tab>
        autocmd CursorHold * silent! call CocActionAsync('highlight')
        autocmd FileType typescript,json silent! setl formatexpr=CocAction('formatSelected')
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup END

    inoremap <expr> <C-l> coc#refresh()
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
    nmap <leader><cr>q <Plug>(coc-fix-current)
    xmap <leader><cr>F <Plug>(coc-format-selected)
    nmap <leader><cr>F <Plug>(coc-format-selected)
    nmap <leader><cr>f <Plug>(coc-format)
    xmap <leader><cr>A <Plug>(coc-codeaction-selected)
    nmap <leader><cr>A <Plug>(coc-codeaction-selected)
    nmap <leader><cr>a <Plug>(coc-codeaction)
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
    nnoremap <leader><cr><cr> :<C-u>CocList<cr>
    nnoremap <leader><cr>p :<C-u>CocListResume<cr>
    nnoremap <leader><cr>d :<C-u>CocList diagnostics<cr>
    nmap <leader><cr>D <Plug>(coc-diagnostic-info)
    nnoremap <leader><cr>e :<C-u>CocList extensions<cr>
    nnoremap <leader><cr>c :<C-u>CocList commands<cr>
    nnoremap <leader><cr>o :<C-u>CocList outline<cr>
    nnoremap <leader><cr>s :<C-u>CocList -I symbols<cr>
    nnoremap ]c :<C-u>CocNext<cr>
    nnoremap [c :<C-u>CocPrev<cr>
    nnoremap <leader><cr>C :<C-u>CocConfig<cr>
    nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
    nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"

    nnoremap K :call <SID>show_documentation()<CR>
    function! s:show_documentation() abort
        if (index(['vim', 'help'], &filetype) >= 0)
            execute 'h '. expand('<cword>')
        elseif CocHasProvider('hover')
            call CocAction('doHover')
        else
            normal! K
        endif
    endfunction

    command! -nargs=0 CocInstallBasic call CocInstallBasic()
    function! CocInstallBasic() abort
        let exts = [
                    \ 'coc-marketplace',
                    \ 'coc-tag',
                    \ 'coc-word',
                    \ 'coc-json',
                    \ 'coc-vimtex',
                    \ 'coc-vimlsp'
                    \ ]
        for ext in exts
            execute 'CocInstall ' . ext
        endfor
    endfunction
elseif has('timers')
    if has('lambda')
        nmap <leader><cr><cr> <Plug>(lsp-status)
        nmap <leader><cr>] <Plug>(lsp-preview-focus)
        nmap <leader><cr>[ <Plug>(lsp-preview-close)
        nmap <leader><cr>a <Plug>(lsp-code-action)
        nmap <leader><cr>f <Plug>(lsp-document-format)
        nmap <leader><cr>F <Plug>(lsp-document-range-format)
        xmap <leader><cr>F <Plug>(lsp-document-range-format)
        nmap <leader><cr>d <Plug>(lsp-document-diagnostics)
        nmap <S-F5> <Plug>(lsp-peek-declaration)
        nmap <F5> <Plug>(lsp-declaration)
        nmap <S-F6> <Plug>(lsp-peek-definition)
        nmap <F6> <Plug>(lsp-definition)
        nmap <S-F7> <Plug>(lsp-peek-implementation)
        nmap <F7> <Plug>(lsp-implementation)
        nmap <S-F8> <Plug>(lsp-peek-type-definition)
        nmap <F8> <Plug>(lsp-type-definition)

        nmap <leader><cr>h <Plug>(lsp-hover)
        nmap <leader><cr>H <Plug>(lsp-signature-help)

        nmap <leader><cr>t <Plug>(lsp-type-hierarchy)
        nmap <leader><cr>r <Plug>(lsp-rename)
        nmap <leader><cr>s <Plug>(lsp-document-symbol)
        nmap <leader><cr>S <Plug>(lsp-workspace-symbol)

        if has('menu')
            nmenu PopUp.[Peek\ Declaration] <Plug>(lsp-peek-declaration)
            nmenu PopUp.[Declaration] <Plug>(lsp-declaration)
            nmenu PopUp.[Peek\ Definition] <Plug>(lsp-peek-definition)
            nmenu PopUp.[Definition] <Plug>(lsp-definition)
            nmenu PopUp.[Peek\ Implementation] <Plug>(lsp-peek-implementation)
            nmenu PopUp.[Implementation] <Plug>(lsp-implementation)
            nmenu PopUp.[Peek\ Type\ Definition] <Plug>(lsp-peek-type-definition)
            nmenu PopUp.[TypeDefinition] <Plug>(lsp-type-definition)
            nmenu PopUp.[References] <Plug>(lsp-references)
            nmenu PopUp.[Hover] <Plug>(lsp-hover)
            nmenu PopUp.[Signature\ Help] <Plug>(lsp-signature-help)
        endif

        augroup MyVimLsp
            autocmd!
            autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
        augroup END
        function! s:on_lsp_buffer_enabled() abort
            setlocal omnifunc=

            nmap <buffer> gL <Plug>(lsp-peek-declaration)
            nmap <buffer> gl <Plug>(lsp-declaration)
            nmap <buffer> gD <Plug>(lsp-peek-definition)
            nmap <buffer> gd <Plug>(lsp-definition)
            nmap <buffer> gI <Plug>(lsp-peek-implementation)
            nmap <buffer> gi <Plug>(lsp-implementation)
            nmap <buffer> gY <Plug>(lsp-peek-type-definition)
            nmap <buffer> gy <Plug>(lsp-type-definition)
            nmap <buffer> gr <Plug>(lsp-references)

            nmap ]d <Plug>(lsp-next-diagnostic)
            nmap ]e <Plug>(lsp-next-error)
            nmap ]w <Plug>(lsp-next-warning)
            nmap ]r <Plug>(lsp-next-reference)
            nmap [d <Plug>(lsp-previous-diagnostic)
            nmap [e <Plug>(lsp-previous-error)
            nmap [r <Plug>(lsp-previous-reference)
            nmap [w <Plug>(lsp-previous-warning)

            nnoremap <buffer> K :call <SID>show_documentation()<CR>
        endfunction

        function! s:show_documentation() abort
            if (index(['vim', 'help'], &filetype) >= 0)
                execute 'h '. expand('<cword>')
            else
                LspHover
            endif
        endfunction

        let g:lsp_diagnostics_echo_cursor = 1
        " let g:lsp_preview_autoclose = 0
        " let g:lsp_text_edit_enabled = 0
        let g:lsp_highlight_references_enabled = 1

        " if executable('gopls')
        "     au User lsp_setup call lsp#register_server({
        "                 \ 'name': 'gopls',
        "                 \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
        "                 \ 'whitelist': ['go'],
        "                 \ })
        " endif
        " if executable('pyls')
        "     au User lsp_setup call lsp#register_server({
        "                 \ 'name': 'pyls',
        "                 \ 'cmd': {server_info->['pyls']},
        "                 \ 'whitelist': ['python'],
        "                 \ })
        " endif
        " if executable('clangd')
        "     au User lsp_setup call lsp#register_server({
        "                 \ 'name': 'clangd',
        "                 \ 'cmd': {server_info->['clangd']},
        "                 \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        "                 \ })
        " endif
        " if executable('bash-language-server')
        "     au User lsp_setup call lsp#register_server({
        "                 \ 'name': 'bash-language-server',
        "                 \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        "                 \ 'whitelist': ['sh', 'bash'],
        "                 \ })
        " endif
        " let s:java_lsp_files = globpath('~/lsp/eclipse.jdt.ls', 'plugins/org.eclipse.equinox.launcher_*.jar', 1, 1)
        " if executable('java') && !empty(s:java_lsp_files)
        "     au User lsp_setup call lsp#register_server({
        "                 \ 'name': 'eclipse.jdt.ls',
        "                 \ 'cmd': {server_info->[
        "                 \     'java',
        "                 \     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        "                 \     '-Dosgi.bundles.defaultStartLevel=4',
        "                 \     '-Declipse.product=org.eclipse.jdt.ls.core.product',
        "                 \     '-Dlog.level=ALL',
        "                 \     '-noverify',
        "                 \     '-Dfile.encoding=UTF-8',
        "                 \     '-Xmx1G',
        "                 \     '-jar',
        "                 \     s:java_lsp_files[0],
        "                 \     '-configuration',
        "                 \     expand('~/lsp/eclipse.jdt.ls/config_' . (has('win32') ? 'win' :
        "                 \       (has('mac') ? 'mac' : 'linux'))),
        "                 \     '-data',
        "                 \     getcwd()
        "                 \ ]},
        "                 \ 'whitelist': ['java'],
        "                 \ })
        " endif
        " command! -nargs=0 LSPInstallJava
        "         \ !mkdir -p ~/lsp/eclipse.jdt.ls &&
        "         \ cd ~/lsp/eclipse.jdt.ls &&
        "         \ rm -rf * &&
        "         \ curl -L http://download.eclipse.org/jdtls/snapshots/jdt-language-server-latest.tar.gz -O &&
        "         \ tar -xf jdt-language-server-latest.tar.gz &&
        "         \ rm jdt-language-server-latest.tar.gz
    endif

    augroup MyAsyncomplete
        autocmd!
        au CmdwinEnter [:>] iunmap <buffer> <Tab>
    augroup END

    imap <c-l> <Plug>(asyncomplete_force_refresh)
    function! s:sort_by_priority_preprocessor(options, matches) abort
        let l:items = []
        let l:startcols = []
        for [l:source_name, l:matches] in items(a:matches)
            let l:startcol = l:matches['startcol']
            let l:base = a:options['typed'][l:startcol - 1:]
            for l:item in l:matches['items']
                if type(l:item) != v:t_dict
                    continue
                endif
                if stridx(l:item['word'], l:base) == 0
                    let l:startcols += [l:startcol]
                    let l:item['priority'] =
                                \ get(asyncomplete#get_source_info(l:source_name), 'priority', 0)
                    call add(l:items, l:item)
                endif
            endfor
        endfor

        let a:options['startcol'] = min(l:startcols)
        let l:items = sort(l:items, {a, b -> b['priority'] - a['priority']})

        call asyncomplete#preprocess_complete(a:options, l:items)
    endfunction
    let g:asyncomplete_preprocessor = [function('s:sort_by_priority_preprocessor')]
    let g:asyncomplete_auto_completeopt = 0
    if !exists('g:asyncomplete_triggers')
        let g:asyncomplete_triggers = {}
    endif
    let g:asyncomplete_triggers.c = ['.', '->']
    let g:asyncomplete_triggers.cpp = ['.', '->', '::']
    let g:asyncomplete_triggers.go = ['.']
    let g:asyncomplete_triggers.java = ['.']
    let g:asyncomplete_triggers.python = ['.']
    let g:asyncomplete_triggers.vim = ['.', '#', ':']
    let g:asyncomplete_triggers.tex = ['\']
    let g:asyncomplete_triggers.php = ['->', '::']
    let g:asyncomplete_triggers.javascript = ['.']
    let g:asyncomplete_triggers.css = [':']
    let g:asyncomplete_triggers.xml = ['<', '</']
    let g:asyncomplete_triggers.html = ['<', '</', '.']
    let g:asyncomplete_triggers.xhtml = ['<', '</', '.']
    let g:asyncomplete_triggers.markdown = ['<', '</']

    try
        call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
                    \ 'name': 'omni',
                    \ 'whitelist': ['*'],
                    \ 'blacklist': ['c', 'cpp', 'python'],
                    \ 'priority' : 20,
                    \ 'completor': function('asyncomplete#sources#omni#completor')
                    \  }))
        call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
                    \ 'name': 'buffer',
                    \ 'whitelist': ['*'],
                    \ 'blacklist': ['go'],
                    \ 'priority' : -20,
                    \ 'completor': function('asyncomplete#sources#buffer#completor'),
                    \ 'config': {
                    \    'max_buffer_size': 5000000,
                    \  },
                    \ }))
        call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
                    \ 'name': 'file',
                    \ 'whitelist': ['*'],
                    \ 'priority': 10,
                    \ 'completor': function('asyncomplete#sources#file#completor')
                    \ }))
        call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
                    \ 'name': 'tags',
                    \ 'whitelist': ['c'],
                    \ 'priority' : -10,
                    \ 'completor': function('asyncomplete#sources#tags#completor'),
                    \ 'config': {
                    \    'max_file_size': 50000000,
                    \  },
                    \ }))
        if executable('look')
            call asyncomplete#register_source(asyncomplete#sources#look#get_source_options({
                        \ 'name': 'look',
                        \ 'priority' : -30,
                        \ 'whitelist': ['text', 'markdown', 'tex'],
                        \ 'completor': function('asyncomplete#sources#look#completor'),
                        \ }))
        endif
        " call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
        "             \ 'name': 'neosnippet',
        "             \ 'priority' : -40,
        "             \ 'whitelist': ['*'],
        "             \ 'completor': function('asyncomplete#sources#neosnippet#completor'),
        "             \ }))
        " if has('python3')
        "     call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        "                 \ 'name': 'ultisnips',
        "                 \ 'whitelist': ['*'],
        "                 \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        "                 \ }))
        " endif
        call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
                    \ 'name': 'necosyntax',
                    \ 'priority' : -50,
                    \ 'whitelist': ['*'],
                    \ 'completor': function('asyncomplete#sources#necosyntax#completor'),
                    \ }))
        call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
                    \ 'name': 'necovim',
                    \ 'priority' : 20,
                    \ 'whitelist': ['vim'],
                    \ 'completor': function('asyncomplete#sources#necovim#completor'),
                    \ }))
    catch
    endtry
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
        nnoremap <nowait><silent><buffer><expr> echo
                    \ denite#do_map('do_action', 'echo')
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
        nnoremap <nowait><silent><buffer><expr> <C-SPACE>
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
                    \ 'start_filter': 1,
                    \ 'statusline': 0,
                    \ 'smartcase': 1,
                    \ 'max_dynamic_update_candidates': 50000,
                    \ })
        if has('nvim-0.4.0')
            call denite#custom#option('_', {'split': 'floating'})
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

" if v:version >=740 && has('python3')
"     let g:UltiSnipsExpandTrigger = '<c-\>'
"     let g:UltiSnipsListSnippets = '<c-]>'
"     let g:UltiSnipsJumpForwardTrigger = '<c-right>'
"     let g:UltiSnipsJumpBackwardTrigger = '<c-left>'
"     let g:UltiSnipsSnippetDirectories = [expand('~/.vim_snippets/UltiSnips')]
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
nnoremap <leader>nN :NERDTreeToggleVCS<cr>
nnoremap <leader>nb :NERDTreeFromBookmark<space>
nnoremap <leader>nf :NERDTreeFocus<cr>
nnoremap <leader>nF :NERDTreeFind<cr>
nnoremap <leader>nv :NERDTreeVCS<cr>
nnoremap <leader>nc :NERDTreeCWD<cr>
nnoremap <leader>nr :NERDTreeRefreshRoot<cr>
nnoremap <leader>nm :NERDTreeMirror<cr>
augroup MyNERDTree
    autocmd!
    autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
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
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_multi_buffers = 1

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
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gD :Gdelete<cr>
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
nnoremap <leader>gR :Gremove<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gw :Gwrite<cr>

let g:tagbar_width = 30
let g:tagbar_compact = 1
nnoremap <leader>tt :TagbarToggle<cr>
nnoremap <leader>ta :TagbarOpenAutoClose<cr>

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
" let g:fzf_layout = {'down': '40%'}
imap <c-z><c-k> <plug>(fzf-complete-word)
imap <c-z><c-f> <plug>(fzf-complete-path)
imap <c-z><c-j> <plug>(fzf-complete-file-ag)
imap <c-z><c-l> <plug>(fzf-complete-line)
nnoremap <leader>zz :FZFFiles<cr>
nnoremap <leader>zZ :FZFFiletypes<cr>
nnoremap <leader>zf :FZFGFiles<cr>
nnoremap <leader>zF :FZFGFiles?<cr>
nnoremap <leader>zb :FZFBuffers<cr>
nnoremap <leader>zo :FZFBCommits<cr>
nnoremap <leader>zO :FZFCommits<cr>
nnoremap <leader>zc :FZFCommands<cr>
nnoremap <F3> :FZFCommands<cr>
nnoremap <S-F3> :FZFCommands!<cr>
nnoremap <leader>zC :FZFColors<cr>
nnoremap <leader>za :FZFAg<cr>
nnoremap <leader>zr :FZFRg<cr>
nnoremap <leader>zl :FZFBLines<cr>
nnoremap <leader>zL :FZFLines<cr>
nnoremap <leader>zt :FZFBTags<cr>
nnoremap <leader>zT :FZFTags<cr>
nnoremap <leader>zm :FZFMarks<cr>
nnoremap <leader>zM :FZFMaps<cr>
nmap <F4> <plug>(fzf-maps-n)
xmap <F4> <plug>(fzf-maps-x)
omap <F4> <plug>(fzf-maps-o)
nnoremap <leader>zw :FZFWindows<cr>
nnoremap <leader>ze :FZFLocate<space>
nnoremap <leader>zh :FZFHistory<cr>
nnoremap <leader>z/ :FZFHistory/<cr>
nnoremap <leader>z: :FZFHistory:<cr>
nnoremap <leader>zH :FZFHelptags<cr>
" if v:version >= 740 && has('python3')
"     nnoremap <leader>zs :FZFSnippets<cr>
" endif
nnoremap <leader>zg :FZFGrep<cr>
nnoremap <leader>zG :FZFGGrep<cr>

nnoremap <leader>Zz :FZFFiles!<cr>
nnoremap <leader>ZZ :FZFFiletypes!<cr>
nnoremap <leader>Zf :FZFGFiles!<cr>
nnoremap <leader>ZF :FZFGFiles!?<cr>
nnoremap <leader>Zb :FZFBuffers!<cr>
nnoremap <leader>Zo :FZFBCommits!<cr>
nnoremap <leader>ZO :FZFCommits!<cr>
nnoremap <leader>Zc :FZFCommands!<cr>
nnoremap <leader>ZC :FZFColors!<cr>
nnoremap <leader>Za :FZFAg!<cr>
nnoremap <leader>Zr :FZFRg!<cr>
nnoremap <leader>Zl :FZFBLines!<cr>
nnoremap <leader>ZL :FZFLines!<cr>
nnoremap <leader>Zt :FZFBTags!<cr>
nnoremap <leader>ZT :FZFTags!<cr>
nnoremap <leader>Zm :FZFMarks!<cr>
nnoremap <leader>ZM :FZFMaps!<cr>
nnoremap <leader>Zw :FZFWindows!<cr>
nnoremap <leader>Ze :FZFLocate!<space>
nnoremap <leader>Zh :FZFHistory!<cr>
nnoremap <leader>Z/ :FZFHistory/!<cr>
nnoremap <leader>Z: :FZFHistory:!<cr>
nnoremap <leader>ZH :FZFHelptags!<cr>
" if v:version >= 740 && has('python3')
"     nnoremap <leader>Zs :FZFSnippets!<cr>
" endif
nnoremap <leader>Zg :FZFGGrep!<cr>
nnoremap <leader>ZG :FZFGrep!<cr>

command! -bang -nargs=? -complete=dir FZF FZFFiles <args>
command! -bang -nargs=? -complete=dir FZFFiles
            \ call fzf#vim#files(<q-args>,
            \     <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=+ -complete=dir FZFLocate
            \ call fzf#vim#locate(<q-args>,
            \     <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=* FZFGGrep
            \ call fzf#vim#grep(
            \    'git grep --line-number --color=always '.shellescape(<q-args>),
            \     0,
            \     <bang>0 ? fzf#vim#with_preview(
            \             {'options': '--delimiter : --nth 3..',
            \                 'dir': systemlist('git rev-parse --show-toplevel')[0]}, 'up:60%') :
            \         fzf#vim#with_preview(
            \             {'options': '--delimiter : --nth 3..',
            \                 'dir': systemlist('git rev-parse --show-toplevel')[0]}, 'right:50%:hidden', '?'),
            \     <bang>0)
command! -bang -nargs=* FZFGrep
            \ call fzf#vim#grep(
            \    'grep --line-number --color=always -r '.shellescape(<q-args>).' .',
            \     0,
            \     <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 3..'}, 'up:60%') :
            \         fzf#vim#with_preview({'options': '--delimiter : --nth 3..'}, 'right:50%:hidden', '?'),
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
function! FZFHistory(arg, options, bang) abort
    let bang = a:bang || a:arg[len(a:arg) - 1] ==# '!'
    if a:arg[0] ==# ':'
        call fzf#vim#command_history(a:options, bang)
    elseif a:arg[0] ==# '/'
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

let g:dispatch_no_maps = 1
nnoremap <leader>rr :Dispatch<space>
nnoremap <leader>rR :Dispatch!<space>
nnoremap <leader>Rd :Dispatch<cr>
nnoremap <leader>RD :Dispatch!<cr>
nnoremap <leader>rm :Make<space>
nnoremap <leader>rM :Make!<space>
nnoremap <leader>Rm :Make<cr>
nnoremap <leader>RM :Make!<cr>
nnoremap <leader>rc :Copen<cr>
nnoremap <leader>rC :Copen!<cr>
nnoremap <leader>rf :FocusDispatch<space>
nnoremap <leader>rF :FocusDispatch!<space>
nnoremap <leader>Rf :FocusDispatch<cr>
nnoremap <leader>RF :FocusDispatch!<cr>
nnoremap <leader>ra :AbortDispatch<cr>
nnoremap <leader>rA :AbortDispatch<space>

" if !exists('g:gutentags_modules')
"     let g:gutentags_modules = []
" endif
" if executable('ctags')
"     call add(g:gutentags_modules, 'ctags')
" endif
" if executable('gtags-cscope')
"     call add(g:gutentags_modules, 'gtags_cscope')
" elseif executable('cscope')
"     call add(g:gutentags_modules, 'cscope')
" endif
" let g:gutentags_enabled = 0
" let g:gitgutter_preview_win_floating = 0
" let g:gutentags_generate_on_missing = 0
" let g:gutentags_generate_on_new = 0
" let g:gutentags_generate_on_write = 1
" let g:gutentags_define_advanced_commands = 1
" let g:gutentags_ctags_extra_args = ['--sort=yes', '--c++-kinds=+p', '--fields=+mnialS', '--extra=+q']
" let g:gutentags_cache_dir = '~/.vim_gutentags'
" nnoremap <leader>gt :GutentagsToggleEnabled<cr>
" nnoremap <leader>gu :GutentagsUpdate<cr>
" nnoremap <leader>gU :GutentagsUpdate!<cr>

let g:goyo_width = '95%'
let g:goyo_height = '95%'
nnoremap <F9> :Goyo<cr>

nnoremap <F10> :Limelight!!<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <c-g> :Grepper<cr>
if !exists('g:grepper')
    let g:grepper = {}
endif
let g:grepper.prompt_mapping_tool = '<c-g>'

" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" let g:better_whitespace_ctermcolor = '239'
" let g:better_whitespace_guicolor = '#4e4e4e'
" let g:better_whitespace_operator = 'gs'
" nnoremap <leader>sp :ToggleWhitespace<cr>
" nnoremap ]w :NextTrailingWhitespace<CR>
" nnoremap [w :PrevTrailingWhitespace<CR>
" xnoremap ]w :NextTrailingWhitespace<CR>
" xnoremap [w :PrevTrailingWhitespace<CR>

nnoremap <leader>uu :UndotreeToggle<cr>
nnoremap <leader>uf :UndotreeFocus<cr>
nnoremap <leader>us :UndotreeShow<cr>
nnoremap <leader>uh :UndotreeHide<cr>
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

" nnoremap <leader>mt :MarkifyToggle<cr>
" nnoremap <leader>mk :Markify<cr>
" nnoremap <leader>mc :MarkifyClear<cr>
" let g:markify_echo_current_message = 1

nnoremap <leader>aw :ArgWrap<cr>
let g:argwrap_wrap_closing_brace = 0
augroup MyArgWrap
    autocmd!
    au FileType c,cpp let b:argwrap_wrap_closing_brace = '()[]{}'
    au FileType go let b:argwrap_tail_comma = 1
    au FileType vim let b:argwrap_line_prefix = '\'
augroup END

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
    nnoremap <F12> :Nuake<cr>
    if has('nvim')
        tnoremap <F12> <c-\><c-n>:Nuake<cr>
    else
        tnoremap <F12> <c-w>:Nuake<cr>
    endif
endif

if has('nvim') || has('job') || has('channel')
    nnoremap <leader>co :Codi!!<cr>
    nnoremap <leader>cO :Codi!!<space>
endif

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

" nmap <leader>k :DevDocs<space>
" nmap <leader>K :DevDocsAll<space>

nnoremap <leader>ep :e ~/.vim_runtime/config/plug.vim<cr>
augroup MyPlug
    autocmd!
    autocmd BufWritePost ~/.vim_runtime/config/plug.vim source ~/.vim_runtime/config/plug.vim
augroup END
