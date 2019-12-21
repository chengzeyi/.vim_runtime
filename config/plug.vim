augroup myPlug
    au!

    call plug#begin('~/.vim_runtime/plugged')

    Plug 'chengzeyi/vim-markify'
    " Plug 'chengzeyi/a.vim'

    " Plug 'sheerun/vim-polyglot'
    Plug 'lervag/vimtex'
    " Plug 'artur-shaik/vim-javacomplete2'
    " Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'arp242/gopher.vim'
    " Plug 'fatih/vim-go'
    Plug 'vim-python/python-syntax'
    Plug 'plasticboy/vim-markdown'
    Plug 'chrisbra/csv.vim'
    Plug 'othree/html5.vim'
    Plug 'uiiaoo/java-syntax.vim'

    if has('timers')
        Plug 'prabirshrestha/async.vim'
        if has('lambda')
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

        Plug 'prabirshrestha/asyncomplete-neosnippet.vim'
        " if has('python3')
        "     Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
        " endif

        Plug 'Shougo/neco-syntax'
        Plug 'prabirshrestha/asyncomplete-necosyntax.vim'

        Plug 'Shougo/neco-vim'
        Plug 'prabirshrestha/asyncomplete-necovim.vim'
        if !executable('clangd') && executable('clang')
            Plug 'keremc/asyncomplete-clang.vim'
        endif
    endif

    " Plug 'lfilho/cosco.vim'

    Plug 'vim-utils/vim-man'

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

    " Plug 'jiangmiao/auto-pairs'

    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/vim-easy-align'

    " Plug 'reedes/vim-pencil'

    " Plug 'rbong/vim-flog'
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-vinegar'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
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

    " if has('nvim') && exists('*nvim_open_win') || has('popupwin')
    "     Plug 'Shougo/echodoc.vim'
    " endif
    Plug 'Shougo/neosnippet.vim'
    Plug 'chengzeyi/neosnippet-snippets'

    " if has('python3')
    "     Plug 'SirVer/ultisnips'
    "     Plug 'chengzeyi/vim-snippets'
    " endif

    Plug 'majutsushi/tagbar'

    Plug 'sbdchd/neoformat'

    " Plug 'skywind3000/vim-preview'
    " Plug 'skywind3000/asyncrun.vim'

    Plug 'neomake/neomake'

    " Plug 'xuhdev/SingleCompile'

    " Plug 'vim-scripts/TagHighlight'

    Plug 'ludovicchabant/vim-gutentags'

    " Plug 'xolox/vim-misc'
    " Plug 'xolox/vim-easytags'

    " Plug 'chengzeyi/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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

    " if has('python') || has('python3')
    "     Plug 'voldikss/vim-translate-me'
    " endif

    Plug 'guns/xterm-color-table.vim'
    Plug 'ap/vim-css-color'

    Plug 'rhysd/devdocs.vim'

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

    let g:github_colors_soft = 1
    let g:github_colors_block_diffmark = 0

    try
        colorscheme hydrangea
    catch
    endtry

    " hi Normal ctermbg=NONE guibg=NONE
    " hi LineNr ctermbg=NONE guibg=NONE
    " hi! link SignColumn LineNr
    " hi SignColumn ctermbg=NONE guibg=NONE
    " hi Comment ctermfg=59 guifg=#5C6370
    " hi CursorLine ctermbg=0 guibg=#000000
    " hi CursorColumn ctermbg=0 guibg=#000000
    " hi CursorLineNr ctermbg=0 guibg=#000000
    " hi! link SpecialKey NonText
    " silent! hi EndOfBuffer ctermfg=bg ctermbg=NONE guifg=bg guibg=NONE

    " autocmd ColorScheme * hi Normal ctermbg=NONE guibg=NONE
    " autocmd ColorScheme * hi LineNr ctermbg=NONE guibg=NONE
    " autocmd ColorScheme * hi! link SignColumn LineNr
    " autocmd ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE
    " autocmd ColorScheme * hi Comment ctermfg=59 guifg=#5C6370
    " autocmd ColorScheme * hi CursorLine ctermbg=0 guibg=#000000
    " autocmd ColorScheme * hi CursorColumn ctermbg=0 guibg=#000000
    " autocmd ColorScheme * hi CursorLineNr ctermbg=0 guibg=#000000
    " autocmd ColorScheme * hi! link SpecialKey NonText
    " autocmd ColorScheme * silent! hi EndOfBuffer ctermfg=bg ctermbg=NONE guifg=bg guibg=NONE

    au FileType tex nnoremap <leader>zx :call vimtex#fzf#run()<cr>
    if !exists('g:vimtex_toc_config')
        let g:vimtex_toc_config = {}
    endif
    let g:vimtex_toc_config.split_pos = 'vert rightbelow'
    let g:vimtex_imaps_enabled = 0
    let g:vimtex_quickfix_open_on_warning = 0
    " let g:vimtex_format_enabled = 1

    " let g:JavaComplete_EnableDefaultMappings = 0
    " au FileType java setlocal omnifunc=javacomplete#Complete
    " au FileType java nmap <buffer> <localleader>ii <Plug>(JavaComplete-Imports-AddSmart)
    " au FileType java nmap <buffer> <localleader>ia <Plug>(JavaComplete-Imports-Add)
    " au FileType java nmap <buffer> <localleader>im <Plug>(JavaComplete-Imports-AddMissing)
    " au FileType java nmap <buffer> <localleader>ir <Plug>(JavaComplete-Imports-RemoveUnused)

    " au FileType java nmap <buffer> <localleader>gm <Plug>(JavaComplete-Generate-AbstractMethods)
    " au FileType java nmap <buffer> <localleader>ga <Plug>(JavaComplete-Generate-Accessors)
    " au FileType java nmap <buffer> <localleader>gs <Plug>(JavaComplete-Generate-AccessorSetter)
    " au FileType java nmap <buffer> <localleader>gg <Plug>(JavaComplete-Generate-AccessorGetter)
    " au FileType java nmap <buffer> <localleader>gA <Plug>(JavaComplete-Generate-AccessorSetterGetter)
    " au FileType java nmap <buffer> <localleader>gt <Plug>(JavaComplete-Generate-ToString)
    " au FileType java nmap <buffer> <localleader>ge <Plug>(JavaComplete-Generate-EqualAndHashCode)
    " au FileType java nmap <buffer> <localleader>gc <Plug>(JavaComplete-Generate-Constructor)
    " au FileType java nmap <buffer> <localleader>gC <Plug>(JavaComplete-Generate-DefaultConstructor)
    " au FileType java nmap <buffer> <localleader>gn <Plug>(JavaComplete-Generate-NewClass)
    " au FileType java nmap <buffer> <localleader>gN <Plug>(JavaComplete-Generate-ClassInFile)
    " au FileType java vmap <buffer> <localleader>gs <Plug>(JavaComplete-Generate-AccessorSetter)
    " au FileType java vmap <buffer> <localleader>gg <Plug>(JavaComplete-Generate-AccessorGetter)
    " au FileType java vmap <buffer> <localleader>gA <Plug>(JavaComplete-Generate-AccessorSetterGetter)

    let g:python_highlight_all = 1

    " let g:vim_markdown_conceal = 0
    " let g:vim_markdown_conceal_code_blocks = 0

    let g:csv_no_conceal = 1
    let g:no_plugin_maps = 1

    if has('timers')
        if has('lambda')
            nmap <leader><cr><cr> <Plug>(lsp-status)
            nmap <leader><cr>a <Plug>(lsp-code-action)
            nmap <leader><cr>f <Plug>(lsp-document-format)
            nmap <leader><cr>F <Plug>(lsp-document-range-format)
            xmap <leader><cr>F <Plug>(lsp-document-range-format)
            nmap <leader><cr>d <Plug>(lsp-document-diagnostics)
            nmap <leader><cr>5 <Plug>(lsp-peek-declaration)
            nmap <leader><cr>1 <Plug>(lsp-declaration)
            nmap <leader><cr>6 <Plug>(lsp-peek-definition)
            nmap <leader><cr>2 <Plug>(lsp-definition)
            nmap <leader><cr>7 <Plug>(lsp-peek-implementation)
            nmap <leader><cr>3 <Plug>(lsp-implementation)
            nmap <leader><cr>8 <Plug>(lsp-peek-type-definition)
            nmap <leader><cr>4 <Plug>(lsp-type-definition)
            nmap <S-F5> <Plug>(lsp-peek-declaration)
            nmap <F5> <Plug>(lsp-declaration)
            nmap <S-F6> <Plug>(lsp-peek-definition)
            nmap <F6> <Plug>(lsp-definition)
            nmap <S-F7> <Plug>(lsp-peek-implementation)
            nmap <F7> <Plug>(lsp-implementation)
            nmap <S-F8> <Plug>(lsp-peek-type-definition)
            nmap <F8> <Plug>(lsp-type-definition)
            nmenu PopUp.Peek\ Declaration <Plug>(lsp-peek-declaration)
            nmenu PopUp.Declaration <Plug>(lsp-declaration)
            nmenu PopUp.Peek\ Definition <Plug>(lsp-peek-definition)
            nmenu PopUp.Definition <Plug>(lsp-definition)
            nmenu PopUp.Peek\ Implementation <Plug>(lsp-peek-implementation)
            nmenu PopUp.Implementation <Plug>(lsp-implementation)
            nmenu PopUp.Peek\ Type\ Definition <Plug>(lsp-peek-type-definition)
            nmenu PopUp.TypeDefinition <Plug>(lsp-type-definition)
            nmap <leader><cr>h <Plug>(lsp-hover)
            nmenu PopUp.Hover <Plug>(lsp-hover)
            nmap <leader><cr>H <Plug>(lsp-signature-help)
            nmenu PopUp.Signature\ Help <Plug>(lsp-signature-help)
            nmap <leader><cr>r <Plug>(lsp-rename)
            nmap <leader><cr>R <Plug>(lsp-references)
            nmap <leader><cr>s <Plug>(lsp-document-symbol)
            nmap <leader><cr>S <Plug>(lsp-workspace-symbol)
            nmap ]e <Plug>(lsp-next-error)
            nmap ]r <Plug>(lsp-next-reference)
            nmap [e <Plug>(lsp-previous-error)
            nmap [r <Plug>(lsp-previous-reference)
            nmap <leader><cr>] <Plug>(lsp-preview-focus)
            nmap <leader><cr>[ <Plug>(lsp-preview-close)
            let g:lsp_diagnostics_echo_cursor = 1
            " let g:lsp_preview_autoclose = 0
            " let g:lsp_text_edit_enabled = 0
            let g:lsp_highlight_references_enabled = 1
            if executable('gopls')
                au User lsp_setup call lsp#register_server({
                            \ 'name': 'gopls',
                            \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
                            \ 'whitelist': ['go'],
                            \ })
                " au BufWritePre *.go LspDocumentFormatSync
            endif
            if executable('pyls')
                " pip install python-language-server
                au User lsp_setup call lsp#register_server({
                            \ 'name': 'pyls',
                            \ 'cmd': {server_info->['pyls']},
                            \ 'whitelist': ['python'],
                            \ })
            endif
            if executable('clangd')
                au User lsp_setup call lsp#register_server({
                            \ 'name': 'clangd',
                            \ 'cmd': {server_info->['clangd']},
                            \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                            \ })
            endif
            if executable('bash-language-server')
                au User lsp_setup call lsp#register_server({
                            \ 'name': 'bash-language-server',
                            \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
                            \ 'whitelist': ['sh', 'bash'],
                            \ })
            endif
            if executable('java') && filereadable(expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.300.v20190213-1655.jar'))
                au User lsp_setup call lsp#register_server({
                            \ 'name': 'eclipse.jdt.ls',
                            \ 'cmd': {server_info->[
                            \     'java',
                            \     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                            \     '-Dosgi.bundles.defaultStartLevel=4',
                            \     '-Declipse.product=org.eclipse.jdt.ls.core.product',
                            \     '-Dlog.level=ALL',
                            \     '-noverify',
                            \     '-Dfile.encoding=UTF-8',
                            \     '-Xmx1G',
                            \     '-jar',
                            \     expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.300.v20190213-1655.jar'),
                            \     '-configuration',
                            \     expand('~/lsp/eclipse.jdt.ls/config_' . (has('win32') ? 'win' :
                            \       (has('mac') ? 'mac' : 'linux'))),
                            \     '-data',
                            \     getcwd()
                            \ ]},
                            \ 'whitelist': ['java'],
                            \ })
            endif
            command! -nargs=0 InstallJavaLanguageServer
                    \ !mkdir -p ~/lsp/eclipse.jdt.ls &&
                    \ cd ~/lsp/eclipse.jdt.ls &&
                    \ curl -L https://download.eclipse.org/jdtls/milestones/0.35.0/jdt-language-server-0.35.0-201903142358.tar.gz -O &&
                    \ tar xf jdt-language-server-0.35.0-201903142358.tar.gz
        endif

        au CmdwinEnter [:>] iunmap <buffer> <Tab>

        inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
        inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
        inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
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
                        \ 'completor': function('asyncomplete#sources#tags#completor'),
                        \ 'config': {
                        \    'max_file_size': 50000000,
                        \  },
                        \ }))
            if executable('look')
                call asyncomplete#register_source(asyncomplete#sources#look#get_source_options({
                            \ 'name': 'look',
                            \ 'whitelist': ['text', 'markdown', 'tex'],
                            \ 'completor': function('asyncomplete#sources#look#completor'),
                            \ }))
            endif
            call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
                        \ 'name': 'neosnippet',
                        \ 'priority' : -10,
                        \ 'whitelist': ['*'],
                        \ 'completor': function('asyncomplete#sources#neosnippet#completor'),
                        \ }))
            " if has('python3')
            "     call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
            "                 \ 'name': 'ultisnips',
            "                 \ 'whitelist': ['*'],
            "                 \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
            "                 \ }))
            " endif
            call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
                        \ 'name': 'necosyntax',
                        \ 'whitelist': ['*'],
                        \ 'completor': function('asyncomplete#sources#necosyntax#completor'),
                        \ }))
            call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
                        \ 'name': 'necovim',
                        \ 'whitelist': ['vim'],
                        \ 'completor': function('asyncomplete#sources#necovim#completor'),
                        \ }))
            if !executable('clangd') && executable('clang')
                call asyncomplete#register_source(
                        \ asyncomplete#sources#clang#get_source_options())
            endif
        catch
        endtry
    endif

    " let g:echodoc_enable_at_startup = 1
    " if has('nvim') && exists('*nvim_open_win')
    "     let g:echodoc#type = 'floating'
    " elseif has('popupwin')
    "     let g:echodoc#type = 'popup'
    " endif

    imap <C-\> <Plug>(neosnippet_expand_or_jump)
    smap <C-\> <Plug>(neosnippet_expand_or_jump)
    imap <C-]> <Plug>(neosnippet_jump_or_expand)
    smap <C-]> <Plug>(neosnippet_jump_or_expand)
    xmap <C-\> <Plug>(neosnippet_expand_target)
    " if has('conceal')
    "     set conceallevel=2 concealcursor=niv
    " endif
    let g:neosnippet#snippets_directory = '~/.vim_neosnippet'
    let g:neosnippet#expand_word_boundary = 1

    " if has('python3')
    "     let g:UltiSnipsExpandTrigger = "<c-j>"
    "     let g:UltiSnipsJumpForwardTrigger = "<c-j>"
    "     let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
    " endif

    " autocmd vimenter * NERDTree
    let g:NERDTreeShowHidden = 1
    let g:NERDTreeHijackNetrw = 0
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
    autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

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

    " hi GitGutterAdd ctermfg=44 ctermbg=236 cterm=bold guifg=#169ec4 guibg=#2a303b gui=bold
    " hi GitGutterChange ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
    " hi GitGutterDelete ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
    " hi GitGutterChangeDelete ctermfg=162 ctermbg=236 cterm=bold guifg=#e242ac guibg=#2a303b gui=bold
    let g:gitgutter_map_keys = 0
    let g:gitgutter_override_sign_column_highlight = 0
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
    nnoremap <leader>hq :GitGutterQuickFix<cr>

    " nnoremap <leader>fl :Flog<cr>
    " nnoremap <leader>fL :Flog<space>

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

    " nnoremap <leader>rr :AsyncRun<space>
    " nnoremap <leader>rR :AsyncRun -save=2<space>
    " nnoremap <leader>rs :AsyncStop<cr>
    " nnoremap <leader>rS :AsyncStop!<cr>
    " let g:asyncrun_bell = 1
    " map <leader>q :call asyncrun#quickfix_toggle(8)<cr>
    " let g:asyncrun_open = 10
    " let g:asyncrun_save = 2
    " let g:asyncrun_auto = "make"

    nnoremap <leader>rr :Neomake<cr>
    nnoremap <leader>rR :Neomake<space>
    nnoremap <leader>rp :Neomake!<cr>
    nnoremap <leader>rP :Neomake!<space>
    nnoremap <leader>rs :NeomakeCancelJobs<cr>
    nnoremap <leader>rS :NeomakeCancelJob<space>
    nnoremap <leader>rc :NeomakeClean<cr>
    nnoremap <leader>rC :NeomakeClean!<cr>
    nnoremap <leader>ri :NeomakeStatus<cr>
    nnoremap <leader>rI :NeomakeInfo<cr>
    nnoremap <leader>rl :NeomakeListJobs<cr>
    nnoremap <leader>rs :NeomakeSh<space>
    nnoremap <leader>rS :NeomakeSh!<space>
    nnoremap <leader>rt :NeomakeToggle<cr>
    nnoremap <leader>rT :NeomakeToggleBuffer<cr>
    nnoremap <leader>rd :NeomakeDisable<cr>
    nnoremap <leader>rD :NeomakeDisableBuffer<cr>
    nnoremap <leader>re :NeomakeEnable<cr>
    nnoremap <leader>rE :NeomakeEnableBuffer<cr>
    nnoremap <leader>ra :call neomake#configure#automake('w')<cr>
    nnoremap <leader>rA :call neomake#configure#reset_automake()<cr>

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
    " if has('python3')
    "     inoremap <c-\> <c-o>:FZFSnippets<cr>
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
    nnoremap <leader>Zs :FZFSnippets!<cr>
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
    nnoremap <leader>gt :GutentagsToggleEnabled<cr>
    nnoremap <leader>gu :GutentagsUpdate<cr>
    nnoremap <leader>gU :GutentagsUpdate!<cr>

    " let g:easytags_include_members = 1
    " let g:easytags_async = 1
    " let g:easytags_opts = ['--sort=yes', '--c++-kinds=+p', '--fields=+iaS', '--extra=+q']

    let g:airline_theme = 'hydrangea'
    " let g:airline#themes#dracula#palette.tabline = {}
    " let g:airline#themes#dracula#palette.tabline.airline_tabhid = ['#f8f8f2', '#f8f8f2', '15', '59', '']
    " let g:airline_powerline_fonts = 1
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
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = ' '
    let g:airline#extensions#tabline#right_sep = ' '
    let g:airline#extensions#tabline#right_alt_sep = ' '
    " let g:airline#extensions#tabline#show_buffers = 1
    " let g:airline#extensions#tabline#alt_sep = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#formatter = 'default'
    nmap <leader>1 <Plug>AirlineSelectTab1
    nmap <leader>2 <Plug>AirlineSelectTab2
    nmap <leader>3 <Plug>AirlineSelectTab3
    nmap <leader>4 <Plug>AirlineSelectTab4
    nmap <leader>5 <Plug>AirlineSelectTab5
    nmap <leader>6 <Plug>AirlineSelectTab6
    nmap <leader>7 <Plug>AirlineSelectTab7
    nmap <leader>8 <Plug>AirlineSelectTab8
    nmap <leader>9 <Plug>AirlineSelectTab9

    " let g:asyncrun_status = ''
    " try
    "     let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
    " catch
    " endtry

    let g:goyo_width = '80%'
    let g:goyo_height = '95%'
    nnoremap <F9> :Goyo<cr>

    "     autocmd User GoyoEnter Limelight
    "     autocmd User GoyoLeave Limelight!
    " nmap <Leader>lM <Plug>(Limelight)
    " xmap <Leader>lM <Plug>(Limelight)
    nnoremap <F10> :Limelight!!<cr>

    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)

    " let g:pencil#textwidth = 79
    " nnoremap <F7> :PencilToggle<cr>
    " autocmd FileType markdown,text call pencil#init()
    " autocmd FileType tex call pencil#init({'wrap': 'soft'})

    nnoremap <c-g> :Grepper<cr>
    if !exists('g:grepper')
        let g:grepper = {}
    endif
    let g:grepper.prompt_mapping_tool = '<c-g>'

    " let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 1
    let g:indent_guides_start_level = 2
    " nnoremap <leader>i :IndentGuidesToggle<cr>

    let g:better_whitespace_ctermcolor = '239'
    let g:better_whitespace_guicolor = '#4e4e4e'
    let g:better_whitespace_operator = 'gs'
    nnoremap <leader>sp :ToggleWhitespace<cr>
    nnoremap ]w :NextTrailingWhitespace<CR>
    nnoremap [w :PrevTrailingWhitespace<CR>
    xnoremap ]w :NextTrailingWhitespace<CR>
    xnoremap [w :PrevTrailingWhitespace<CR>

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
    au FileType c,cpp let b:argwrap_wrap_closing_brace = '()[]{}'
    au FileType go let b:argwrap_tail_comma = 1
    au FileType vim let b:argwrap_line_prefix = '\'

    " ctrl-b is unused in insert mode
    " imap <c-b> <c-o><Plug>(cosco-commaOrSemiColon)
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
        else
            tnoremap <c-n> <c-w>:Nuake<cr>
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

    nmap <leader>k :DevDocs<space>
    nmap <leader>K :DevDocsAll<space>

    nnoremap <leader>ep :e ~/.vim_runtime/config/plug.vim<cr>
    autocmd BufWritePost ~/.vim_runtime/config/plug.vim source ~/.vim_runtime/config/plug.vim

augroup END
