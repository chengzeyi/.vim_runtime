" let g:plug_url_format = 'https://github.com/%s.git'

call plug#begin('~/.vim_runtime/plugged')

function! UseFtplugin(ft) abort
    if !exists('g:use_ftplugins')
        return 0
    endif
    if type(g:use_ftplugins) == type('') && g:use_ftplugins ==# 'all'
        return 1
    endif
    if type(g:use_ftplugins) == type([])
        for ft in g:useft_plugins
            if ft ==# a:ft
                return 1
            endif
        endfor
        return 0
    endif
    return 0
endfunction

if UseFtplugin('cpp')
    Plug 'octol/vim-cpp-enhanced-highlight'
endif
if UseFtplugin('go')
    Plug 'chengzeyi/go-highlight.vim'
endif
if UseFtplugin('java')
    Plug 'uiiaoo/java-syntax.vim'
endif
if UseFtplugin('python')
    Plug 'vim-python/python-syntax'
    Plug 'Vimjas/vim-python-pep8-indent'
endif
if UseFtplugin('typescript')
    Plug 'leafgarland/typescript-vim'
endif
if UseFtplugin('javascript')
    Plug 'pangloss/vim-javascript'
endif
if UseFtplugin('html')
    Plug 'othree/html5.vim'
endif
if UseFtplugin('markdown')
    Plug 'plasticboy/vim-markdown'
endif
if UseFtplugin('latex')
    Plug 'lervag/vimtex'
endif

if get(g:, 'use_coc', 0)
    if (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
    endif
else
    if get(g:, 'use_vim_lsp', 0)
        if has('timers') && has('lambda')
            Plug 'mattn/vim-lsp-settings'
            Plug 'prabirshrestha/vim-lsp'
        endif
    endif
endif

if !get(g:, 'use_coc', 0) && get(g:, 'use_asyncomplete', 0)
    if has('timers')
        Plug 'prabirshrestha/asyncomplete.vim'
        if get(g:, 'use_vim_lsp', 0)
            if has('timers') && has('lambda')
                Plug 'prabirshrestha/asyncomplete-lsp.vim'
            endif
        endif
        Plug 'prabirshrestha/asyncomplete-buffer.vim'
        Plug 'prabirshrestha/asyncomplete-file.vim'
        Plug 'prabirshrestha/asyncomplete-neosnippet.vim'
    endif
endif

if (has('nvim-0.3.0') || v:version >= 800) && has('python3')
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

Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sleuth'
if has('unix')
    Plug 'tpope/vim-eunuch'
endif

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', {'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'

Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'

Plug 'mbbill/undotree'

" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'

Plug 'sbdchd/neoformat'

Plug 'FooSoft/vim-argwrap'

Plug 'AndrewRadev/splitjoin.vim'

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

Plug 'skywind3000/asyncrun.vim'

Plug 'janko/vim-test'

Plug 'airblade/vim-gitgutter'

if v:version >= 720
    Plug 'nathanaelkane/vim-indent-guides'
endif

if exists('##TextYankPost')
    Plug 'machakann/vim-highlightedyank'
endif

" Plug 'editorconfig/editorconfig-vim'

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

Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-entire'

Plug 'guns/xterm-color-table.vim'
Plug 'chrisbra/Colorizer'

Plug 'chengzeyi/hydrangea-vim'
Plug 'chengzeyi/space-vim-theme'
Plug 'rakr/vim-one'
Plug 'junegunn/seoul256.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cormacrelf/vim-colors-github'
Plug 'arzg/vim-colors-xcode'

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
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_template_highlight = 1

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

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

if get(g:, 'use_coc', 0)
    if (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')

        function! CocCurrentFunction() abort
            return get(b:, 'coc_current_function', '')
        endfunction

        let g:statusline_extra_left_1 = ['coc#status', []]
        let g:statusline_extra_right_1 = ['CocCurrentFunction', []]

        let g:coc_config_home = expand( '~/.vim_runtime/config')

        augroup MyCoc
            autocmd!
            au CmdwinEnter [:>] let b:coc_suggest_disable = 1
            au CursorHold * silent! call CocActionAsync('highlight')
            au FileType typescript,json silent! setl formatexpr=CocAction('formatSelected')
            au User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

            au ColorScheme * hi! link CocErrorSign ErrorMsg
            au ColorScheme * hi! link CocWarningSign WarningMsg
            au ColorScheme * hi! link CocInfoSign MoreMsg
            au ColorScheme * hi! link CocHintSign Question
            au ColorScheme * hi! link CocErrorHighlight SpellBad
            au ColorScheme * hi! link CocWarningHighlight SpellCap
            au ColorScheme * hi! link CocInfoHighlight SpellLocal
            au ColorScheme * hi! link CocHintHighlight Question
        augroup END

        nnoremap <leader>oa :ToggleCocAutoComplete<cr>
        command! -nargs=0 ToggleCocAutoComplete call ToggleCocAutoComplete()

        function! ToggleCocAutoComplete() abort
            let s:coc_suggest_auto_trigger = get(s:, 'coc_suggest_auto_trigger', 'always')
            if s:coc_suggest_auto_trigger ==# 'none'
                let s:coc_suggest_auto_trigger = 'always'
                let g:refresh_pum = ['coc#refresh', []]
            else
                let s:coc_suggest_auto_trigger = 'none'
                unlet g:refresh_pum
            endif
            call coc#config('suggest.autoTrigger', s:coc_suggest_auto_trigger)
        endfunction

        let g:refresh_pum = ['coc#refresh', []]
        inoremap <expr> <c-l> pumvisible() ? "\<c-l>" : coc#refresh()
        inoremap <expr> <c-space> pumvisible() ? "\<c-e>" : coc#refresh()
        inoremap <expr> <nul> pumvisible() ? "\<c-e>" : coc#refresh()

        nmap [g <Plug>(coc-diagnostic-prev)
        nmap ]g <Plug>(coc-diagnostic-next)
        nmap [e <Plug>(coc-diagnostic-prev-error)
        nmap ]e <Plug>(coc-diagnostic-next-error)
        nmap <expr> gl CocHasProvider('declaration') ? '<Plug>(coc-declaration)' : 'gl'
        nmap <expr> gd CocHasProvider('definition') ? '<Plug>(coc-definition)' : 'gd'
        nmap <expr> gy CocHasProvider('typeDefinition') ? '<Plug>(coc-type-definition)' : 'gy'
        nmap <expr> gm CocHasProvider('implementation') ? '<Plug>(coc-implementation)' : 'gm'
        nmap <expr> gr CocHasProvider('reference') ? '<Plug>(coc-references)' : 'gr'
        nnoremap gL :<c-r>=CocHasProvider('declaration') ? 'call CocAction("jumpDeclaration", v:false)' : 'normal! gL'<cr><cr>
        nnoremap gD :<c-r>=CocHasProvider('definition') ? 'call CocAction("jumpDefinition", v:false)' : 'normal! gD'<cr><cr>
        nnoremap gY :<c-r>=CocHasProvider('typeDefinition') ? 'call CocAction("jumpTypeDefinition", v:false)' : 'normal! gY'<cr><cr>
        nnoremap gM :<c-r>=CocHasProvider('implementation') ? 'call CocAction("jumpImplementatiIn", v:false)' : 'normal! gM'<cr><cr>
        nnoremap gR :<c-r>=CocHasProvider('reference') ? 'call CocAction("jumpReferences", v:false)' : 'normal! gR'<cr><cr>
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
        xmap if <Plug>(coc-funcobj-i)
        xmap af <Plug>(coc-funcobj-a)
        omap if <Plug>(coc-funcobj-i)
        omap af <Plug>(coc-funcobj-a)
        xmap iF <Plug>(coc-classobj-i)
        xmap aF <Plug>(coc-classobj-a)
        omap iF <Plug>(coc-classobj-i)
        omap aF <Plug>(coc-classobj-a)
        nmap <leader><cr>] <Plug>(coc-range-select)
        xmap <leader><cr>] <Plug>(coc-range-select)
        nmap <leader><cr>[ <Plug>(coc-range-select-backward)
        xmap <leader><cr>[ <Plug>(coc-range-select-backward)
        command! -nargs=0 CocFormat call CocAction('format')
        command! -nargs=? CocFold call CocAction('fold', <f-args>)
        command! -nargs=0 CocOrganize call CocAction('runCommand', 'editor.action.organizeImport')
        nnoremap <leader><cr>O :call CocAction('runCommand', 'editor.action.organizeImport')<cr>
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
                        \ 'coc-vimlsp',
                        \ 'coc-neosnippet'
                        \ ]
            for ext in exts
                execute 'CocInstall ' . ext
            endfor
        endfunction
    endif
else
    if get(g:, 'use_vim_lsp', 0)
        if has('timers') && has('lambda')
            let statusline_extra_left_1 = ['VimLspDiagnostics', []]
            function! VimLspDiagnostics() abort
                let counts = lsp#get_buffer_diagnostics_counts()
                return printf('E%d W%d I%d H%d',
                            \ counts['error'],
                            \ counts['warning'],
                            \ counts['information'],
                            \ counts['hint'],
                            \ )
            endfunction

            augroup MyLspDiagnostics
                autocmd!
                au InsertEnter * let g:lsp_diagnostics_enabled = 0
                au InsertLeave * let g:lsp_diagnostics_enabled = 1
            augroup END
            " let g:lsp_diagnostics_echo_cursor = 1
            let g:lsp_diagnostics_float_cursor = 1
            let g:lsp_virtual_text_prefix = "‣ "
            let g:lsp_highlight_references_enabled = 1
            let g:lsp_fold_enabled = 0

            nmap <leader><cr><cr> <Plug>(lsp-status)
            nmap <leader><cr>] <Plug>(lsp-preview-focus)
            nmap <leader><cr>[ <Plug>(lsp-preview-close)
            nmap <leader><cr>a <Plug>(lsp-code-action)
            nmap <leader><cr>l <Plug>(lsp-code-lens)
            nmap <leader><cr>f <Plug>(lsp-document-format)
            nmap <leader><cr>F <Plug>(lsp-document-range-format)
            xmap <leader><cr>F <Plug>(lsp-document-range-format)
            nmap <leader><cr>d <Plug>(lsp-document-diagnostics)

            nmap <leader><cr>h <Plug>(lsp-hover)
            nmap <leader><cr>H <Plug>(lsp-signature-help)

            nmap <leader><cr>t <Plug>(lsp-type-hierarchy)
            nmap <leader><cr>r <Plug>(lsp-rename)
            nmap <leader><cr>s <Plug>(lsp-document-symbol)
            nmap <leader><cr>S <Plug>(lsp-workspace-symbol)

            augroup MyVimLsp
                autocmd!
                au User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
                au ColorScheme * hi! link LspErrorHighlight SpellBad
                au ColorScheme * hi! link LspWarningHighlight SpellCap
                au ColorScheme * hi! link LspInformationHighlight SpellLocal
                au ColorScheme * hi! link LspHintHighlight SpellRare
            augroup END

            function! s:on_lsp_buffer_enabled() abort
                setlocal omnifunc=lsp#complete

                nmap <buffer> gL <Plug>(lsp-peek-declaration)
                nmap <buffer> gl <Plug>(lsp-declaration)
                nmap <buffer> gD <Plug>(lsp-peek-definition)
                nmap <buffer> gd <Plug>(lsp-definition)
                nmap <buffer> gI <Plug>(lsp-peek-implementation)
                nmap <buffer> gi <Plug>(lsp-implementation)
                nmap <buffer> gY <Plug>(lsp-peek-type-definition)
                nmap <buffer> gy <Plug>(lsp-type-definition)
                nmap <buffer> gr <Plug>(lsp-references)

                nmap ]g <Plug>(lsp-next-diagnostic)
                nmap [g <Plug>(lsp-previous-diagnostic)
                nmap ]e <Plug>(lsp-next-error)
                nmap [e <Plug>(lsp-previous-error)
                nmap ]w <Plug>(lsp-next-warning)
                nmap [w <Plug>(lsp-previous-warning)
                nmap ]r <Plug>(lsp-next-reference)
                nmap [r <Plug>(lsp-previous-reference)

                nnoremap <buffer> K :call <SID>show_documentation()<CR>
            endfunction

            function! s:show_documentation() abort
                if (index(['vim', 'help'], &filetype) >= 0)
                    try
                        execute 'h '. expand('<cword>')
                        return
                    catch
                    endtry
                endif
                LspHover
            endfunction
        endif
    endif
endif

if !get(g:, 'use_coc', 0) && get(g:, 'use_asyncomplete', 0)
    if has('timers')
        nnoremap <leader>oa :ToggleAsyncompleteAutoComplete<cr>
        command! -nargs=0 ToggleAsyncompleteAutoComplete call ToggleAsyncompleteAutoComplete()

        function! ToggleAsyncompleteAutoComplete() abort
            let g:asyncomplete_auto_popup = !get(g:, 'asyncomplete_auto_popup', 1)
            if g:asyncomplete_auto_popup
                let g:refresh_pum = ['asyncomplete#force_refresh', []]
            else
                unlet g:refresh_pum
            endif
        endfunction

        let g:refresh_pum = ['asyncomplete#force_refresh', []]
        inoremap <expr> <c-l> pumvisible() ? "\<c-l>" : asyncomplete#force_refresh()
        inoremap <expr> <c-space> pumvisible() ? "\<c-e>" : asyncomplete#force_refresh()
        inoremap <expr> <nul> pumvisible() ? "\<c-e>" : asyncomplete#force_refresh()

        silent! iunmap <c-y>
        inoremap <expr> <c-y> pumvisible() ? asyncomplete#close_popup() : "\<c-y>"
        silent! iunmap <c-e>
        inoremap <expr> <c-e> pumvisible() ? asyncomplete#cancel_popup() : "\<c-e>"

        au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
                    \ 'name': 'buffer',
                    \ 'allowlist': ['*'],
                    \ 'completor': function('asyncomplete#sources#buffer#completor'),
                    \ 'config': {
                    \    'max_buffer_size': 5000000
                    \  }
                    \ }))
        au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
                    \ 'name': 'file',
                    \ 'allowlist': ['*'],
                    \ 'completor': function('asyncomplete#sources#file#completor')
                    \ }))
        au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
                    \ 'name': 'neosnippet',
                    \ 'allowlist': ['*'],
                    \ 'completor': function('asyncomplete#sources#neosnippet#completor')
                    \ }))
    endif
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
    nnoremap <leader>dm :Denite mark<cr>
    nnoremap <leader>dM :Denite menu<cr>
    nnoremap <leader>do :Denite outline<cr>
    nnoremap <leader>dr :Denite register<cr>
    nnoremap <leader>ds :Denite source<cr>
    nnoremap <leader>dS :Denite spell<cr>
    " nnoremap <leader>dn :Denite neosnippet<cr>
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
        nnoremap <nowait><silent><buffer><expr> <c-\>
                    \ denite#do_map('choose_action')
        nnoremap <nowait><silent><buffer><expr> <cr>
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
        nnoremap <nowait><silent><buffer><expr> <esc>
                    \ denite#do_map('quit')
        nnoremap <nowait><silent><buffer><expr> <c-c>
                    \ denite#do_map('quit')
        nnoremap <nowait><silent><buffer><expr> i
                    \ denite#do_map('open_filter_buffer')
        nnoremap <nowait><silent><buffer><expr> /
                    \ denite#do_map('open_filter_buffer')
        nnoremap <nowait><silent><buffer><expr> <space>
                    \ denite#do_map('toggle_select')
        nnoremap <nowait><silent><buffer><expr> <tab>
                    \ denite#do_map('toggle_select') . 'j'
        nnoremap <nowait><silent><buffer><expr> <s-tab>
                    \ denite#do_map('toggle_select') . 'k'
    endfunction

    function! s:denite_filter_my_settings() abort
        imap <nowait><silent><buffer> <c-y>
                    \ <Plug>(denite_filter_update)
        imap <nowait><silent><buffer> <esc>
                    \ <Plug>(denite_filter_quit)
        imap <nowait><silent><buffer> <c-o>
                    \ <Plug>(denite_filter_quit)
        inoremap <nowait><silent><buffer><expr> <c-c>
                    \ denite#do_map('quit')
        inoremap <nowait><silent><buffer><expr> <cr>
                    \ denite#do_map('do_action')
        inoremap <nowait><silent><buffer><expr> <c-\>
                    \ denite#do_map('choose_action')
        inoremap <nowait><silent><buffer><expr> <c-space>
                    \ denite#do_map('toggle_select')
        inoremap <nowait><silent><buffer><expr> <tab>
                    \ denite#do_map('toggle_select') .
                    \ "\<esc>\<c-w>p:call cursor(line('.')+1,0)\<cr>\<c-w>pA"
        inoremap <nowait><silent><buffer><expr> <s-tab>
                    \ denite#do_map('toggle_select') .
                    \ "\<esc>\<c-w>p:call cursor(line('.')-1,0)\<cr>\<c-w>pA"
        inoremap <nowait><silent><buffer> <c-n>
                    \ <esc><c-w>p:call cursor(line('.')+1,0)<cr><c-w>pA
        inoremap <nowait><silent><buffer> <c-p>
                    \ <esc><c-w>p:call cursor(line('.')-1,0)<cr><c-w>pA
        inoremap <nowait><silent><buffer> <down>
                    \ <esc><c-w>p:call cursor(line('.')+1,0)<cr><c-w>pA
        inoremap <nowait><silent><buffer> <up>
                    \ <esc><c-w>p:call cursor(line('.')-1,0)<cr><c-w>pA
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
                        \ 'split': 'floating'})
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

inoremap <expr> <c-x>\ NeoSnippetExpand()
imap <c-\> <Plug>(neosnippet_expand_or_jump)
smap <c-\> <Plug>(neosnippet_expand_or_jump)
xmap <c-\> <Plug>(neosnippet_expand_target)
imap <c-]> <Plug>(neosnippet_jump_or_expand)
smap <c-]> <Plug>(neosnippet_jump_or_expand)
let g:neosnippet#snippets_directory = '~/.vim_snippets'
let g:neosnippet#expand_word_boundary = 1
let g:neosnippet#disable_runtime_snippets = {'_': 1}

nnoremap <leader>gv :GV<cr>
nnoremap <leader>gV :GV!<cr>
xnoremap <leader>gv :GV<cr>
xnoremap <leader>gV :GV?<cr>

nnoremap <leader>gg :G<space>
nnoremap <leader>gG :G grep!  <bar> botright cw <left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>gb :G blame<cr>
nnoremap <leader>gB :G blame<space>
xnoremap <leader>gb :G blame<cr>
xnoremap <leader>gB :G blame<space>
nnoremap <leader>gc :G commit -v<cr>
nnoremap <leader>gC :G checkout<space>
nnoremap <leader>gd :Gdiffsplit<cr>
nnoremap <leader>gD :Gdiffsplit!<cr>
nnoremap <leader>gm :G merge -v<space>
nnoremap <leader>gM :GMove<space>
nnoremap <leader>gl :G log<cr>
nnoremap <leader>gL :G log<space>
nnoremap <leader>go :Gclog! <bar> cclose <bar> botright cw<cr>
nnoremap <leader>gO :Gclog <bar> cclose <bar> botright cw<cr>
nnoremap <leader>gh :0Gclog! <bar> cclose <bar> botright cw<cr>
nnoremap <leader>gH :0Gclog <bar> cclose <bar> botright cw<cr>
xnoremap <leader>gh :Gclog! <bar> cclose <bar> botright cw<cr>
xnoremap <leader>gH :Gclog <bar> cclose <bar> botright cw<cr>
nnoremap <leader>gf :G fetch -v<cr>
nnoremap <leader>gp :G push<cr>
nnoremap <leader>gP :G pull -v<cr>
nnoremap <leader>gs :G<cr>
nnoremap <leader>gS :G stash<space>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gR :G rebase -i<space>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gE :Gedit<space>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gW :Gwrite<space>

augroup MyVinegarHighlight
    autocmd!
    au ColorScheme * hi! link netrwSuffixes Comment
augroup END

nmap <c-_> <Plug>CommentaryLine
xmap <c-_> <Plug>Commentary

nnoremap <leader>sv :%S/
xnoremap <leader>sv :S/

let statusline_extra_right_0 = ['SleuthIndicator', []]
nnoremap <leader>sh :Sleuth<cr>

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = ''
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

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
nmap gA <Plug>(LiveEasyAlign)
xmap gA <Plug>(LiveEasyAlign)

let g:fzf_command_prefix = 'FZF'
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
let g:fzf_tags_command = 'ctags -R --sort=yes --c++-kinds=+p --fields=+mnialS --extra=+q'
" let g:fzf_prefer_tmux = 1
" let g:fzf_preview_window = 'right:60%'
let g:fzf_colors = {
            \ 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
" if has('nvim-0.4.0') || has('patch-8.2.191')
"     let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
" endif
" let g:fzf_layout = {'window': 'bot'.float2nr(0.4 * &lines).'new'}
" let g:fzf_layout = {'down': '40%'}
" Some workaround to fix the character deletion error at empty lines.
imap <c-x>k <plug>(fzf-complete-word)
imap <c-x>p <plug>(fzf-complete-path)
imap <c-x>f <plug>(fzf-complete-file)
imap <c-x>F <plug>(fzf-complete-file-ag)
imap <c-x>l <plug>(fzf-complete-buffer-line)
imap <c-x>L <plug>(fzf-complete-line)
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
if has('unix')
    nnoremap <leader>fd :FZFDir<cr>
    nnoremap <leader>Fd :FZFDir<space>
    command! -nargs=* -complete=dir -bang FZFDir call fzf#run(fzf#wrap({
                \ 'source': 'find ' . (empty(<q-args>) ? '.' : <q-args>) . ' -type d',
                \ 'options': '-m --prompt "Dir> " --preview "tree -L 3 -ughC {} || ls -Glh {}" --bind "?:toggle-preview"'
                \ }, <bang>0))
endif
if has('mac')
    nnoremap <leader>fs :FZFSpotlight<space>
    command! -nargs=+ -bang FZFSpotlight call fzf#run(fzf#wrap(s:p(<bang>0, {
                \ 'source': 'mdfind -name ' . <q-args> . ' "NOT kind:folder"',
                \ 'options': '-m --prompt "Spotlight> "'
                \ })))
    nnoremap <leader>fS :FZFSpotlightDir<space>
    command! -nargs=+ -bang FZFSpotlightDir call fzf#run(fzf#wrap({
                \ 'source': 'mdfind -name ' . <q-args> . ' "kind:folder"',
                \ 'options': '-m --prompt "SpotlightDir> " --preview "tree -L 3 -ughC {} || ls -Glh {}" --bind "?:toggle-preview"'
                \ }, <bang>0))
endif

function! s:p(bang, ...) abort
    let preview_window = get(g:, 'fzf_preview_window', a:bang && &columns >= 80 || &columns >= 120 ? 'right': 'up')
    if len(preview_window)
        return call('fzf#vim#with_preview', a:000 + [preview_window, '?'])
    endif
    return {}
endfunction

nnoremap <F3> :FZFCommands<cr>
nnoremap <S-F3> :FZFCommands!<cr>
nmap <F4> <plug>(fzf-maps-n)
xmap <F4> <plug>(fzf-maps-x)
omap <F4> <plug>(fzf-maps-o)
imap <F4> <plug>(fzf-maps-i)
nnoremap <leader>ff :FZFFiles<cr>
nnoremap <leader>fF :FZFGFiles<cr>
nnoremap <leader>fy :FZFFiletypes<cr>
nnoremap <leader>f? :FZFGFiles?<cr>
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
nnoremap <leader>fg :FZFGrep<cr>
nnoremap <leader>fG :FZFGGrep<cr>
nnoremap <leader>fq :FZFQuickFix<cr>
nnoremap <leader>fQ :FZFLocList<cr>

nnoremap <leader>Ff :FZFFiles<space>
nnoremap <leader>FF :FZFGFiles<space>
nnoremap <leader>F? :FZFGFiles?<space>
nnoremap <leader>Fb :FZFBuffers<space>
nnoremap <leader>Fa :FZFAg<space>
nnoremap <leader>Fr :FZFRg<space>
nnoremap <leader>Fl :FZFBLines<space>
nnoremap <leader>FL :FZFLines<space>
nnoremap <leader>Ft :FZFBTags<space>
nnoremap <leader>FT :FZFTags<space>
nnoremap <leader>Fg :FZFGGrep<space>
nnoremap <leader>FG :FZFGrep<space>

nnoremap <c-g> :Grepper<cr>
if !exists('g:grepper')
    let g:grepper = {}
endif
let g:grepper.prompt_mapping_tool = '<c-g>'

" This is 'lcd', not what I want.
let g:startify_change_to_dir = 0
" let g:startify_change_to_vcs_root = 1
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
nnoremap <leader>sa :SSave<cr>
nnoremap <leader>sA :SSave<space>
nnoremap <leader>sd :SDelete<cr>
nnoremap <leader>sD :SDelete<space>
nnoremap <leader>sl :SLoad<cr>
nnoremap <leader>sL :SLoad<space>
nnoremap <leader>sc :SClose<cr>
" augroup MyStartify
"     autocmd!
"     if has('nvim')
"         autocmd TabNewEntered *
"                     \ if empty(expand('%'))
"                     \     && empty(&l:buftype)
"                     \     && &l:modifiable |
"                     \   Startify |
"                     \ endif
"     else
"         if !exists(':terminal')
"             autocmd BufWinEnter *
"                         \ if !exists('t:startify_new_tab')
"                         \     && empty(expand('%'))
"                         \     && empty(&l:buftype)
"                         \     && &l:modifiable |
"                         \   let t:startify_new_tab = 1 |
"                         \   Startify |
"                         \ endif
"         else
"             if has('timers') && has('lambda')
"                 autocmd BufWinEnter *
"                             \ if !exists('t:startify_new_tab') |
"                             \     let t:startify_new_tab = 1 |
"                             \     call timer_start(50, {-> execute(
"                             \         'if empty(expand("%")) && empty(&l:buftype) && &l:modifiable | ' .
"                             \             'Startify | ' .
"                             \         'endif'
"                             \ )}) |
"                             \ endif
"             endif
"         endif
"     endif
" augroup END

nnoremap <leader>uu :UndotreeToggle<cr>
nnoremap <leader>uf :UndotreeFocus<cr>
nnoremap <leader>us :UndotreeShow<cr>
nnoremap <leader>uh :UndotreeHide<cr>
let g:undotree_WindowLayout = 4
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

" let g:NERDTreeShowHidden = 1
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinPos = 'right'
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

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap g<c-f> :Neoformat<cr>
xnoremap g<c-f> :Neoformat<cr>
nnoremap <a-f> :Neoformat<cr>
xnoremap <a-f> :Neoformat<cr>

nnoremap <leader>aw :ArgWrap<cr>

nnoremap <leader>rr :AsyncRun<space>
xnoremap <leader>rr :AsyncRun<space>
nnoremap <leader>rR :AsyncRun!<space>
xnoremap <leader>rR :AsyncRun!<space>
nnoremap <leader>rs :AsyncStop<cr>
nnoremap <leader>rS :AsyncStop!<cr>
let g:asyncrun_auto = ''
let g:asyncrun_open = 10
" let g:asyncrun_bell = 1
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
let g:asyncrun_status = 'stopped'
augroup AsyncRunQuickfixStatus
    autocmd!
    au FileType qf setlocal
                \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END
" augroup MyAsyncRun
"     autocmd!
"     au User AsyncRunStop copen | wincmd p
" augroup END

nnoremap <leader>Tn :TestNearest<CR>
nnoremap <leader>TN :TestNearest<Space>
nnoremap <leader>Tf :TestFile<CR>
nnoremap <leader>TF :TestFile<Space>
nnoremap <leader>Ts :TestSuite<CR>
nnoremap <leader>TS :TestSuite<Space>
nnoremap <leader>Tl :TestLast<CR>
nnoremap <leader>Tv :TestVisit<CR>
let test#strategy = 'asyncrun'

function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction
let g:statusline_extra_left_0 = ['GitStatus', []]
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_use_location_list = 1
let g:gitgutter_sign_priority = 0
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

if v:version >= 720
    " let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 1
    let g:indent_guides_start_level = 2
endif

" let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

if exists(':terminal')
    if has('nvim-0.4.0') || has('patch-8.2.191')
        nmap <F12> <Plug>(Multiterm)
        nmap <c-space> <Plug>(Multiterm)
        nmap <nul> <Plug>(Multiterm)
        tmap <F12> <Plug>(Multiterm)
        tmap <c-space> <Plug>(Multiterm)
        tmap <nul> <Plug>(Multiterm)
        " xmap <F12> <Plug>(Multiterm)
        " xmap <c-space> <Plug>(Multiterm)
        " xmap <nul> <Plug>(Multiterm)
        " imap <F12> <Plug>(Multiterm)
        " imap <c-space> <Plug>(Multiterm)
        " imap <nul> <Plug>(Multiterm)
    elseif has('patch-8.0.1593') || has('nvim')
        nnoremap <F12> :Nuake<cr>
        nnoremap <c-space> :Nuake<cr>
        nnoremap <nul> :Nuake<cr>
        if has('nvim')
            tnoremap <F12> <c-\><c-n>:Nuake<cr>
            tnoremap <c-space> <c-\><c-n>:Nuake<cr>
            tnoremap <nul> <c-\><c-n>:Nuake<cr>
        else
            tnoremap <F12> <c-w>:Nuake<cr>
            tnoremap <c-space> <c-w>:Nuake<cr>
            tnoremap <nul> <c-w>:Nuake<cr>
        endif
        " xnoremap <F12> :<c-u>Nuake<cr>
        " xnoremap <c-space> :<c-u>Nuake<cr>
        " xnoremap <nul> :<c-u>Nuake<cr>
        " inoremap <F12> <c-o>:Nuake<cr>
        " inoremap <c-space> <c-o>:Nuake<cr>
        " inoremap <nul> <c-o>:Nuake<cr>
    endif
endif

if has('nvim') || has('job') || has('channel')
    nnoremap <leader>co :Codi!!<cr>
    nnoremap <leader>cO :Codi!!<space>
endif

nmap <leader>cc <Plug>Colorizer
xmap <leader>cc <Plug>Colorizer

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
                \     'select': ['a_'],
                \     'scan': 'line',
                \   },
                \   'underscore-i': {
                \     'pattern': '\v_*\zs[a-zA-Z0-9]*\ze',
                \     'select': ['i_'],
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
                \     'select': ['a~'],
                \     'scan': 'cursor',
                \   },
                \   'camel-i': {
                \     'pattern': '\v([A-Z][a-z]*)|[0-9]+|[a-z]+',
                \     'select': ['i~'],
                \     'scan': 'cursor',
                \   },
                \ })
catch
endtry

let g:space_vim_dark_background = 233

let g:space_vim_italic = 1

let g:github_colors_soft = 1
let g:github_colors_block_diffmark = 1
