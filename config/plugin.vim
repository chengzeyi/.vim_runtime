" let g:plug_url_format = 'https://github.com/%s.git'

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
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'

Plug 'mikelue/vim-maven-plugin'
if executable('gotests')
    Plug 'buoto/gotests-vim'
endif

if get(g:, 'use_coc', 0) && (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
    " Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
elseif get(g:, 'use_ale', 0) && (v:version >= 800 || has('nvim-0.2.0'))
    Plug 'dense-analysis/ale'
endif

Plug 'AndrewRadev/splitjoin.vim'

Plug 'mbbill/undotree'

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-grepper'

" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
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

if exists('##TextYankPost')
    Plug 'machakann/vim-highlightedyank'
endif

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

if (v:version >= 800 || has('nvim-0.3.0')) && has('python3')
    if has('nvim')
        Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
        if get(g:, 'use_deoplete', 0)
            Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
            Plug 'ncm2/float-preview.nvim'
        endif
    else
        if get(g:, 'use_deoplete', 0)
            Plug 'Shougo/deoplete.nvim'
        endif
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

" Plug 'ojroques/vim-scrollstatus'

Plug 'lifepillar/vim-colortemplate'

Plug 'chengzeyi/hydrangea-vim'
Plug 'chengzeyi/space-vim-theme'
Plug 'skbolton/embark'
Plug 'rakr/vim-one'
Plug 'arzg/vim-colors-xcode'
Plug 'cormacrelf/vim-colors-github'

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

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

if get(g:, 'use_coc', 0) && (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
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
    nmap <expr> gi CocHasProvider('implementation') ? '<Plug>(coc-implementation)' : 'gi'
    nmap <expr> gr CocHasProvider('reference') ? '<Plug>(coc-references)' : 'gr'
    nnoremap gL :<c-r>=CocHasProvider('declaration') ? 'call CocAction("jumpDeclaration", v:false)' : 'normal! gL'<cr><cr>
    nnoremap gD :<c-r>=CocHasProvider('definition') ? 'call CocAction("jumpDefinition", v:false)' : 'normal! gD'<cr><cr>
    nnoremap gY :<c-r>=CocHasProvider('typeDefinition') ? 'call CocAction("jumpTypeDefinition", v:false)' : 'normal! gY'<cr><cr>
    nnoremap gI :<c-r>=CocHasProvider('implementation') ? 'call CocAction("jumpImplementation", v:false)' : 'normal! gI'<cr><cr>
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
                    \ 'coc-vimlsp',
                    \ ]
        for ext in exts
            execute 'CocInstall ' . ext
        endfor
    endfunction
elseif get(g:, 'use_ale', 0) && (v:version >= 800 || has('nvim-0.2.0'))
    let g:ale_c_parse_compile_commands = 1
    let g:ale_c_parse_makefile = 1

    augroup MyALE
        autocmd!
        au FileType * let b:ale_linters = 'all'
    augroup END
    " let g:ale_linters_explicit = 1

    " let g:ale_hover_to_preview = 1
    " let g:ale_virtualtext_cursor = 1
    let g:ale_virtualtext_prefix = '‣ '
    let g:ale_echo_msg_format = '[%severity%] %linter% %code: %%s'

    function! ALELinterStatus() abort
        let l:counts = ale#statusline#Count(bufnr(''))

        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors

        return l:counts.total == 0 ? 'OK' : printf(
                    \   '%dW %dE',
                    \   all_non_errors,
                    \   all_errors
                    \)
    endfunction

    let g:statusline_extra_left = ['ALELinterStatus', []]

    " if !(get(g:, 'use_deoplete', 0) && (v:version >= 800 || has('nvim-0.3.0')) && has('python3'))
    "     let g:ale_completion_enabled = 1
    "     " let g:refresh_pum = ['feedkeys', ["\<Plug>(ale_complete)"]]
    "     imap <expr> <c-l> pumvisible() ? "\<c-l>" : "\<Plug>(ale_complete)"
    "     imap <expr> <c-space> pumvisible() ? "\<c-e>" : "\<Plug>(ale_complete)"
    "     imap <expr> <nul> pumvisible() ? "\<c-e>" : "\<Plug>(ale_complete)"
    " endif

    nnoremap [G :ALEFirst<cr>
    nnoremap ]G :ALELast<cr>
    nnoremap [g :ALEPrevious<cr>
    nnoremap ]g :ALENext<cr>
    nnoremap [e :ALEPreviousError<cr>
    nnoremap ]e :ALENextError<cr>
    nnoremap [w :ALEPreviousWarning<cr>
    nnoremap ]w :ALENextWarning<cr>

    function ALELSPMappings()
        let lsp_found=0
        try
            for linter in ale#linter#Get(&filetype)
                if !empty(linter.lsp) && ale#lsp_linter#CheckWithLSP(bufnr(''), linter)
                    let lsp_found=1
                endif
            endfor
        catch
        endtry
        if (lsp_found)
            nnoremap <buffer> gh :ALEDocumentation<cr>
            nnoremap <buffer> gr :ALEFindReferences<cr>
            nnoremap <buffer> gd :ALEGoToDefinition<cr>
            nnoremap <buffer> gD :ALEGoToDefinition -tab<cr>
            nnoremap <buffer> gy :ALEGoToTypeDefinition<cr>
            nnoremap <buffer> gY :ALEGoToTypeDefinition -tab<cr>
            nnoremap <buffer> K :ALEHover<cr>

            setlocal omnifunc=ale#completion#OmniFunc
        endif
    endfunction

    autocmd BufRead,FileType * call ALELSPMappings()

    nnoremap <leader><cr>f :ALEFix<cr>
    nnoremap <leader><cr>F :ALEFixSuggest<cr>
    nnoremap <leader><cr>o :ALEOrganizeImports<cr>
    nnoremap <leader><cr>r :ALERename<cr>
    nnoremap <leader><cr>R :ALERepeatSelection<cr>
    nnoremap <leader><cr>s :ALESymbolSearch<space>
    nnoremap <leader><cr>l :ALELint<cr>
    nnoremap <leader><cr>t :ALEToggleBuffer<cr>
    nnoremap <leader><cr>T :ALEToggle<cr>
    nnoremap <leader><cr>d :ALEDetail<cr>
    nnoremap <leader><cr>i :ALEInfo<cr>
    nnoremap <leader><cr>c :ALEResetBuffer<cr>
    nnoremap <leader><cr>C :ALEReset<cr>
    nnoremap <leader><cr>S :ALEStopAllLSPs<cr>
endif

if get(g:, 'use_deoplete', 0) && (v:version >= 800 || has('nvim-0.3.0')) && has('python3')
    let g:deoplete#enable_at_startup = 1
    let g:refresh_pum = ['deoplete#manual_complete', []]
    inoremap <expr> <c-l> pumvisible() ? "\<c-l>" : deoplete#manual_complete()
    inoremap <expr> <c-space> pumvisible() ? "\<c-e>" : deoplete#manual_complete()
    inoremap <expr> <nul> pumvisible() ? "\<c-e>" : deoplete#manual_complete()
    " if has('nvim')
        " let g:float_preview#docked = 0
        " let g:float_preview#winhl = 'Normal:PmenuSel,NormalNC:PmenuSel'
    " endif
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

inoremap <expr> <c-x>\ NeoSnippetExpand()
imap <c-\> <Plug>(neosnippet_expand_or_jump)
smap <c-\> <Plug>(neosnippet_expand_or_jump)
xmap <c-\> <Plug>(neosnippet_expand_target)
imap <c-]> <Plug>(neosnippet_jump_or_expand)
smap <c-]> <Plug>(neosnippet_jump_or_expand)
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
if has('nvim-0.4.0') || has('patch-8.2.191')
    let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
endif
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
if has('mac')
    nnoremap <leader>fs :FZFSpotlight<space>
    nnoremap <leader>Fs :FZFSpotlight!<space>
    command! -nargs=+ -bang FZFSpotlight call fzf#run(fzf#wrap(fzf#vim#with_preview({
                \ 'source': 'mdfind -name ' . <q-args>,
                \ 'options': '-m --prompt "Spotlight> "'
                \ }), <bang>0))
endif
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
"     nnoremap <leader>fu :FZFSnippets<cr>
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
"     nnoremap <leader>Fu :FZFSnippets!<cr>
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
let g:asyncrun_bell = 1
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
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

" let g:goyo_width = '95%'
" let g:goyo_height = '95%'
" nnoremap <F9> :Goyo<cr>

" nnoremap <F10> :Limelight!!<cr>

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

" let g:scrollstatus_symbol_track = '░'
" let g:scrollstatus_symbol_bar = '▓'
" let g:statusline_extra_left = ['ScrollStatus', []]

let g:space_vim_dark_background = 233

let g:space_vim_italic = 1

let g:github_colors_soft = 1
let g:github_colors_block_diffmark = 1
