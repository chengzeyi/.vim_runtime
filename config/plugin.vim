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
        for ft in g:use_ftplugins
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

if get(g:, 'use_treesitter', 0) && has('nvim-0.5.0')
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'nvim-treesitter/playground'
    " Plug 'romgrk/nvim-treesitter-context'
endif

if get(g:, 'use_nvim_lsp', 0) && has('nvim-0.5.0')
    Plug 'neovim/nvim-lspconfig'
endif

if get(g:, 'use_completion_nvim', 0) && has('nvim-0.5.0')
    Plug 'nvim-lua/completion-nvim'
    Plug 'steelsojka/completion-buffers'
    if get(g:, 'use_treesitter', 0)
        Plug 'nvim-treesitter/completion-treesitter'
    endif
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
" Plug 'tpope/vim-vinegar'
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

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'sbdchd/neoformat'

Plug 'lfilho/cosco.vim'

Plug 'FooSoft/vim-argwrap'

" Plug 'AndrewRadev/splitjoin.vim'

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

function! UseColorScheme(name) abort
    if !exists('g:use_colorschemes')
        return 0
    endif
    if type(g:use_colorschemes) == type('') && g:use_colorschemes ==# 'all'
        return 1
    endif
    if type(g:use_colorschemes) == type([])
        for ft in g:use_colorschemes
            if ft ==# a:ft
                return 1
            endif
        endfor
        return 0
    endif
    return 0
endfunction

if UseColorScheme('hydrangea')
    Plug 'chengzeyi/hydrangea-vim'
endif
if UseColorScheme('embark')
    Plug 'embark-theme/vim', {'as': 'embark'}
endif
if UseColorScheme('dracula')
    Plug 'dracula/vim', {'as': 'dracula'}
endif
if UseColorScheme('one')
    Plug 'rakr/vim-one'
endif
if UseColorScheme('gruvbox8')
    Plug 'lifepillar/vim-gruvbox8'
endif
if UseColorScheme('papercolor')
    Plug 'NLKNguyen/papercolor-theme'
endif
if UseColorScheme('xcode')
    Plug 'arzg/vim-colors-xcode'
endif
if UseColorScheme('seoul256')
    Plug 'junegunn/seoul256.vim'
endif
if UseColorScheme('github')
    Plug 'cormacrelf/vim-colors-github'
endif

if get(g:, 'use_devicons', 0)
    Plug 'ryanoasis/vim-devicons'
endif

call plug#end()

if UseFtplugin('cpp')
    let g:cpp_class_scope_highlight = 1
    let g:cpp_class_decl_highlight = 1
    let g:cpp_posix_standard = 1
    " let g:cpp_experimental_simple_template_highlight = 1
    " let g:cpp_experimental_template_highlight = 1
endif

if UseFtplugin('python')
    let g:python_highlight_all = 1
endif

if UseFtplugin('javascript')
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1
endif

if UseFtplugin('markdown')
    let g:vim_markdown_conceal = 1
    let g:vim_markdown_conceal_code_blocks = 1
    let g:vim_markdown_fenced_languages = [
                \ 'c++=cpp',
                \ 'viml=vim',
                \ 'bash=sh',
                \ 'ini=dosini',
                \ 'csharp=cs'
                \ ]
endif

if UseFtplugin('latex')
    augroup MyFZFVimTex
        autocmd!
        au FileType tex nnoremap <silent> <buffer> <leader>fx :call vimtex#fzf#run()<cr>
    augroup END
    if !exists('g:vimtex_toc_config')
        let g:vimtex_toc_config = {}
    endif
    let g:vimtex_toc_config.split_pos = 'vert rightbelow'
    let g:vimtex_imaps_enabled = 0
    let g:vimtex_quickfix_open_on_warning = 0
    let g:vimtex_quickfix_mode = 0
    let g:vimtex_format_enabled = 1
endif

if get(g:, 'use_treesitter', 0) && has('nvim-0.5.0')
    " let g:statusline_extra_right_1 = ['nvim_treesitter#statusline', []]
    nnoremap gss :echo nvim_treesitter#statusline()<cr>
    try
lua <<EOF
-- require'nvim-treesitter.configs'.setup {
    -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    -- highlight = {
        -- enable = true,              -- false will disable the whole extension
        -- disable = { "c", "rust" },  -- list of language that will be disabled
    -- },
-- }
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        use_languagetree = false, -- Use this to enable language injection (this is very unstable)
        -- custom_captures = {
            -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
            -- ["foo.bar"] = "Identifier",
        -- },
    },
}
require'nvim-treesitter.configs'.setup {
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "+",
            node_incremental = "+",
            scope_incremental = "-",
            node_decremental = "_",
        },
    },
}
require'nvim-treesitter.configs'.setup {
    indent = {
        enable = true
    }
}
-- local queries = require "nvim-treesitter.query"
-- require'nvim-treesitter'.define_modules {
    -- my_auto_enable_fold = {
        -- enable = true,
        -- attach = function(bufnr, lang)
            -- vim.api.nvim_command(string.format('if winbufnr(0) == %d | let w:saved_fd = [&fdm, &fde] | setl fdm=expr fde=nvim_treesitter#foldexpr() | endif', bufnr))
            -- vim.api.nvim_command(string.format('augroup MyAutoEnableFold_%d', bufnr))
            -- vim.api.nvim_command(string.format('au BufEnter <buffer=%d> if !exists("w:saved_fd") | let w:saved_fd = [&fdm, &fde] | setl fdm=expr fde=nvim_treesitter#foldexpr() | endif', bufnr))
            -- vim.api.nvim_command(string.format('au BufLeave <buffer=%d> if exists("w:saved_fd") | let &l:fdm = w:saved_fd[0] | let &l:fde = w:saved_fd[1] | unlet w:saved_fd | endif', bufnr))
            -- vim.api.nvim_command('augroup END')
        -- end,
        -- detach = function(bufnr)
            -- vim.api.nvim_command(string.format('if exists("w:saved_fd") && winbufnr(0) == %d | let &l:fdm = w:saved_fd[0] | let &l:fde = w:saved_fd[1] | unlet w:saved_fd | endif', bufnr))
            -- vim.api.nvim_command(string.format('augroup MyAutoEnableFold_%d', bufnr))
            -- vim.api.nvim_command('au!')
            -- vim.api.nvim_command('augroup END')
            -- vim.api.nvim_command(string.format('augroup! MyAutoEnableFold_%d', bufnr))
        -- end,
        -- is_supported = queries.has_folds
    -- }
-- }
require'nvim-treesitter.configs'.setup {
    textobjects = {
        select = {
            enable = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["agf"] = "@function.outer",
                ["igf"] = "@function.inner",
                ["agF"] = "@class.outer",
                ["igF"] = "@class.inner",
                ["igp"] = "@parameter.inner",
                ["agp"] = "@parameter.outer",
                ["igs"] = "@statement.outer",
                ["ags"] = "@statement.outer",
                ["igb"] = "@block.inner",
                ["agb"] = "@block.outer",
                ["igC"] = "@call.inner",
                ["agC"] = "@call.outer",
                ["igi"] = "@conditional.inner",
                ["agi"] = "@conditional.outer",
                ["igl"] = "@loop.inner",
                ["agl"] = "@loop.outer",
                ["igc"] = "@comment.outer",
                ["agc"] = "@comment.outer",

                -- Or you can define your own textobjects like this
                -- ["iF"] = {
                    -- python = "(function_definition) @function",
                    -- cpp = "(function_definition) @function",
                    -- c = "(function_definition) @function",
                    -- java = "(method_declaration) @function",
                -- },
            },
        },
    },
}
require'nvim-treesitter.configs'.setup {
    textobjects = {
        swap = {
            enable = true,
            swap_next = {
                ["]s"] = "@parameter.inner",
                ["]S"] = "@statement.outer",
            },
            swap_previous = {
                ["[s"] = "@parameter.inner",
                ["[S"] = "@statement.outer",
            },
        },
    },
}
require'nvim-treesitter.configs'.setup {
    textobjects = {
        move = {
            enable = true,
            goto_next_start = {
                ["]f"] = "@function.outer",
                ["]c"] = "@class.outer",
            },
            goto_next_end = {
                ["]F"] = "@function.outer",
                ["]C"] = "@class.outer",
            },
            goto_previous_start = {
                ["[f"] = "@function.outer",
                ["[c"] = "@class.outer",
            },
            goto_previous_end = {
                ["[F"] = "@function.outer",
                ["[C"] = "@class.outer",
            },
        },
    },
}
require'nvim-treesitter.configs'.setup {
    textobjects = {
        lsp_interop = {
            enable = true,
            peek_definition_code = {
                ["gsf"] = "@function.outer",
                ["gsF"] = "@class.outer",
            },
        },
    },
}
require'nvim-treesitter.configs'.setup {
    refactor = {
        highlight_definitions = { enable = true },
    },
}
require'nvim-treesitter.configs'.setup {
    refactor = {
        highlight_current_scope = { enable = true },
    },
}
require'nvim-treesitter.configs'.setup {
    refactor = {
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "gsr",
            },
        },
    },
}
require'nvim-treesitter.configs'.setup {
    refactor = {
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gsd",
                list_definitions = "gso",
                list_definitions_toc = "gsO",
                goto_next_usage = "]u",
                goto_previous_usage = "[u",
            },
        },
    },
}
require 'nvim-treesitter.configs'.setup {
    playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
    },
}
EOF
    catch
    endtry
endif

if get(g:, 'use_nvim_lsp', 0) && has('nvim-0.5.0')
    try
lua <<EOF
local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- require'diagnostic'.on_attach()
    -- require'completion'.on_attach()

    -- Mappings.
    local opts = {
        noremap=true,
        silent=true,
    }

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gm', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gy', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'go', '<cmd>lua vim.lsp.buf.document_symbol()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gO', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gl', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[g', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']g', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[e', '<cmd>lua vim.lsp.diagnostic.goto_prev({severity = "Error"})<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']e', '<cmd>lua vim.lsp.diagnostic.goto_next({severity = "Error"})<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[w', '<cmd>lua vim.lsp.diagnostic.goto_prev({severity = "Warning"})<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']w', '<cmd>lua vim.lsp.diagnostic.goto_next({severity = "Warning"})<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><cr>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'x', '<leader><cr>a', '<cmd>lua vim.lsp.buf.range_code_action()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><cr>f', '<cmd>lua vim.lsp.buf.formatting()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'x', '<leader><cr>f', '<cmd>lua vim.lsp.buf.range_formatting()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><cr>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><cr>c', '<cmd>lua vim.lsp.buf.incoming_calls()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><cr>C', '<cmd>lua vim.lsp.buf.outgoing_calls()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><cr>d', '<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader><cr>D', '<cmd>lua vim.lsp.util.show_line_diagnostics()<cr>', opts)

    vim.api.nvim_command [[autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()]]
    vim.api.nvim_command [[autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()]]
    vim.api.nvim_command [[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]]
end

local lspconfig = require'lspconfig'
lspconfig.util.default_config = vim.tbl_extend(
    'force',
    lspconfig.util.default_config,
    { on_attach = on_attach }
)
EOF
    catch
    endtry

    let g:statusline_extra_left_1 = ['LspStatus', []]

    function! LspStatus() abort
        let sl = ''
        if luaeval('not vim.tbl_isempty(vim.lsp.buf_get_clients(0))')
            let sl = 'E'
            let sl .= luaeval('vim.lsp.diagnostic.get_count([[Error]])')
            let sl .= ' W'
            let sl .= luaeval('vim.lsp.diagnostic.get_count([[Warning]])')
        else
            let sl = ''
        endif
        return sl
    endfunction
endif

if get(g:, 'use_completion_nvim', 0) && has('nvim-0.5.0')
    augroup MyCompletionNvim
        autocmd!
        autocmd BufEnter * silent! lua require'completion'.on_attach()
    augroup END

    let g:completion_enable_snippet = 'neosnippet'
    let g:completion_chain_complete_list = {
          \ 'default' : [
          \     {'complete_items': ['lsp', 'ts', 'snippet', 'buffers']},
          \     {'mode': '<c-p>'},
          \     {'mode': '<c-n>'}
          \ ]}

    imap <c-j> <Plug>(completion_next_source)
    imap <c-k> <Plug>(completion_prev_source)

    command! -nargs=0 ToggleCompletionNvim call ToggleCompletionNvim()
    nnoremap <silent> <leader>oa :ToggleCompletionNvim<cr>

    function! ToggleCompletionNvim() abort
        let g:completion_enable_auto_popup = !get(g:, 'completion_enable_auto_popup', 1)
        if g:completion_enable_auto_popup
            set completeopt+=noinsert,noselect
            let g:refresh_pum = ['copy', ["\<cmd>lua require'completion'.triggerCompletion()\<cr>"]]
        else
            set completeopt-=noinsert,noselect
            unlet g:refresh_pum
        endif
    endfunction

    set completeopt+=noinsert,noselect
    let g:refresh_pum = ['copy', ["\<cmd>lua require'completion'.triggerCompletion()\<cr>"]]
    inoremap <silent> <expr> <c-l> pumvisible() ? "\<c-l>" : "\<cmd>lua require'completion'.triggerCompletion()\<cr>"
    inoremap <silent> <expr> <c-space> pumvisible() ? "\<c-e>" : "\<cmd>lua require'completion'.triggerCompletion()\<cr>"
    inoremap <silent> <expr> <nul> pumvisible() ? "\<c-e>" : "\<cmd>lua require'completion'.triggerCompletion()\<cr>"
endif

if get(g:, 'use_coc', 0)
    if (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')

        function! CocCurrentFunction(...) abort
            " let status = ''
            " if get(g:, 'use_treesitter', 0) && has('nvim-0.5.0')
            "     try
            "         let status = call('nvim_treesitter#statusline', a:000)
            "     catch
            "     endtry
            " endif
            " if empty(status)
            "     return get(b:, 'coc_current_function', '')
            " endif
            " return ''
            return get(b:, 'coc_current_function', '')
        endfunction

        let g:statusline_extra_left_1 = ['coc#status', []]
        let g:statusline_extra_right_1 = ['CocCurrentFunction', []]

        let g:coc_config_home = expand('~/.vim_runtime/config')

        if exists('+tagfunc')
            set tagfunc=MyTagFunc

            function! MyTagFunc(pattern, flags, info) abort
                let result = CocTagFunc(a:pattern, a:flags, a:info)
                if !empty(result)
                    return result
                endif
                if !empty(tagfiles())
                    return taglist(a:pattern, a:info.buf_ffname)
                endif
                return []
            endfunc
        endif

        augroup MyCoc
            autocmd!
            au CmdwinEnter [:>] let b:coc_suggest_disable = 1
            " if get(g:, 'use_treesitter', 0) && has('nvim-0.5.0')
            "     au CursorHold * if !exists('#NvimTreesitterUsages_' . bufnr()) | silent! call CocActionAsync('highlight') | endif
            " else
            "     au CursorHold * silent! call CocActionAsync('highlight')
            " endif
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

            au ColorScheme * hi! link CocHighlightText Visual
        augroup END

        nnoremap <silent> <leader>oa :ToggleCocAutoComplete<cr>
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
        inoremap <silent> <expr> <c-l> pumvisible() ? "\<c-l>" : coc#refresh()
        inoremap <silent> <expr> <c-space> pumvisible() ? "\<c-e>" : coc#refresh()
        inoremap <silent> <expr> <nul> pumvisible() ? "\<c-e>" : coc#refresh()

        nmap <silent> [g <Plug>(coc-diagnostic-prev)
        nmap <silent> ]g <Plug>(coc-diagnostic-next)
        nmap <silent> [e <Plug>(coc-diagnostic-prev-error)
        nmap <silent> ]e <Plug>(coc-diagnostic-next-error)
        nmap <silent> <expr> gl CocHasProvider('declaration') ? '<Plug>(coc-declaration)' : 'gl'
        nmap <silent> <expr> gd CocHasProvider('definition') ? '<Plug>(coc-definition)' : 'gd'
        nmap <silent> <expr> gy CocHasProvider('typeDefinition') ? '<Plug>(coc-type-definition)' : 'gy'
        nmap <silent> <expr> gm CocHasProvider('implementation') ? '<Plug>(coc-implementation)' : 'gm'
        nmap <silent> <expr> gr CocHasProvider('reference') ? '<Plug>(coc-references)' : 'gr'
        nnoremap <silent> gL :<c-r>=CocHasProvider('declaration') ? 'call CocActionAsync("jumpDeclaration", v:false)' : 'normal! gL'<cr><cr>
        nnoremap <silent> gD :<c-r>=CocHasProvider('definition') ? 'call CocActionAsync("jumpDefinition", v:false)' : 'normal! gD'<cr><cr>
        nnoremap <silent> gY :<c-r>=CocHasProvider('typeDefinition') ? 'call CocActionAsync("jumpTypeDefinition", v:false)' : 'normal! gY'<cr><cr>
        nnoremap <silent> gM :<c-r>=CocHasProvider('implementation') ? 'call CocActionAsync("jumpImplementatiIn", v:false)' : 'normal! gM'<cr><cr>
        nnoremap <silent> gR :<c-r>=CocHasProvider('reference') ? 'call CocActionAsync("jumpReferences", v:false)' : 'normal! gR'<cr><cr>
        nmap <silent> <leader><cr>r <Plug>(coc-rename)
        nmap <silent> <leader><cr>R <Plug>(coc-refactor)
        nmap <silent> <leader><cr>q <Plug>(coc-fix-current)
        xmap <silent> <leader><cr>F <Plug>(coc-format-selected)
        nmap <silent> <leader><cr>F <Plug>(coc-format-selected)
        nmap <silent> <leader><cr>f <Plug>(coc-format)
        xmap <silent> <leader><cr>A <Plug>(coc-codeaction-selected)
        nmap <silent> <leader><cr>A <Plug>(coc-codeaction-selected)
        nmap <silent> <leader><cr>a <Plug>(coc-codeaction)
        nmap <silent> <leader><cr>o <Plug>(coc-openlink)
        nmap <silent> <leader><cr>l <Plug>(coc-codelens-action)
        nmap <silent> <leader><cr>[ <Plug>(coc-float-hide)
        nmap <silent> <leader><cr>] <Plug>(coc-float-jump)
        nmap <silent> <leader><cr>h :call CocActionAsync('showSignatureHelp')<cr>
        imap <silent> <c-q> <c-o>:call CocActionAsync('showSignatureHelp')<cr>
        xmap <silent> if <Plug>(coc-funcobj-i)
        xmap <silent> af <Plug>(coc-funcobj-a)
        omap <silent> if <Plug>(coc-funcobj-i)
        omap <silent> af <Plug>(coc-funcobj-a)
        xmap <silent> iF <Plug>(coc-classobj-i)
        xmap <silent> aF <Plug>(coc-classobj-a)
        omap <silent> iF <Plug>(coc-classobj-i)
        omap <silent> aF <Plug>(coc-classobj-a)
        nmap <silent> ]R <Plug>(coc-range-select)
        xmap <silent> ]R <Plug>(coc-range-select)
        nmap <silent> [R <Plug>(coc-range-select-backward)
        xmap <silent> [R <Plug>(coc-range-select-backward)
        nnoremap <silent> [r :call CocAction('runCommand', 'document.jumpToPrevSymbol')<cr>
        nnoremap <silent> ]r :call CocAction('runCommand', 'document.jumpToNextSymbol')<cr>
        command! -nargs=0 CocFormat call CocAction('format')
        command! -nargs=? CocFold call CocAction('fold', <f-args>)
        command! -nargs=0 CocOR call CocAction('runCommand', 'editor.action.organizeImport')
        nnoremap <silent> <leader><cr>O :call CocAction('runCommand', 'editor.action.organizeImport')<cr>
        nnoremap <silent> <leader><cr><cr> :CocList<cr>
        nnoremap <silent> <leader><cr>p :CocListResume<cr>
        nnoremap <silent> <leader><cr>P :CocListCancel<cr>
        nnoremap <silent> <leader><cr>d :CocList --normal -A diagnostics<cr>
        nmap <silent> <leader><cr>D <Plug>(coc-diagnostic-info)
        nnoremap <silent> <leader><cr>e :CocList extensions<cr>
        nnoremap <silent> <leader><cr>c :CocList commands<cr>
        nnoremap <silent> go :<c-r>=CocHasProvider('documentSymbol') ? 'CocList -A outline' : 'normal! ' . (v:count == 0 ? '' : v:count) . 'go'<cr><cr>
        nnoremap <silent> gO :<c-r>=CocHasProvider('documentSymbol') ? 'CocList -I -A symbols' : 'normal! gO'<cr><cr>
        nnoremap <silent> ]<cr> :CocNext<cr>
        nnoremap <silent> [<cr> :CocPrev<cr>
        nnoremap <silent> ]<bs> :CocLast<cr>
        nnoremap <silent> ]<c-h> :CocLast<cr>
        nnoremap <silent> [<bs> :CocFirst<cr>
        nnoremap <silent> [<c-h> :CocFirst<cr>
        if has('nvim-0.4.0') || has('patch-8.2.0750')
          nnoremap <silent> <expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
          nnoremap <silent> <expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"
          inoremap <silent> <expr> <c-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<c-f>"
          inoremap <silent> <expr> <c-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<c-b>"
          vnoremap <silent> <expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
          vnoremap <silent> <expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"
        endif

        nnoremap <silent> K :call <SID>show_documentation(v:count)<CR>

        function! s:show_documentation(count) abort
            if (index(['vim', 'help'], &filetype) >= 0)
                try
                    execute 'h' expand('<cword>')
                    return
                catch
                endtry
            endif
            if CocHasProvider('hover')
                call CocActionAsync('doHover')
            else
                exe 'normal!' (a:count > 0 ? a:count : '') 'K'
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
                execute 'CocInstall' ext
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
            " if get(g:, 'use_treesitter', 0) && has('nvim-0.5.0')
            "     au CursorHold * let g:lsp_highlight_references_enabled = !exists('#NvimTreesitterUsages_' . bufnr())
            " endif
            " let g:lsp_fold_enabled = 0

            nmap <silent> <leader><cr><cr> <Plug>(lsp-status)
            nmap <silent> <leader><cr>] <Plug>(lsp-preview-focus)
            nmap <silent> <leader><cr>[ <Plug>(lsp-preview-close)
            nmap <silent> <leader><cr>a <Plug>(lsp-code-action)
            nmap <silent> <leader><cr>l <Plug>(lsp-code-lens)
            nmap <silent> <leader><cr>f <Plug>(lsp-document-format)
            nmap <silent> <leader><cr>F <Plug>(lsp-document-range-format)
            xmap <silent> <leader><cr>F <Plug>(lsp-document-range-format)
            nmap <silent> <leader><cr>d <Plug>(lsp-document-diagnostics)

            nmap <silent> <leader><cr>h <Plug>(lsp-hover)
            nmap <silent> <leader><cr>H <Plug>(lsp-signature-help)

            nmap <silent> <leader><cr>t <Plug>(lsp-type-hierarchy)
            nmap <silent> <leader><cr>r <Plug>(lsp-rename)

            augroup MyVimLsp
                autocmd!
                au User lsp_buffer_enabled call s:on_lsp_buffer_enabled()

                au ColorScheme * hi! link LspErrorHighlight SpellBad
                au ColorScheme * hi! link LspWarningHighlight SpellCap
                au ColorScheme * hi! link LspInformationHighlight SpellLocal
                au ColorScheme * hi! link LspHintHighlight SpellRare

                au ColorScheme * hi! link lspReference Visual
            augroup END

            function! s:on_lsp_buffer_enabled() abort
                setlocal omnifunc=lsp#complete

                if exists('+tagfunc')
                    setl tagfunc=MyTagFunc
                endif

                nmap <silent> <buffer> gL <Plug>(lsp-peek-declaration)
                nmap <silent> <buffer> gl <Plug>(lsp-declaration)
                nmap <silent> <buffer> gD <Plug>(lsp-peek-definition)
                nmap <silent> <buffer> gd <Plug>(lsp-definition)
                nmap <silent> <buffer> gI <Plug>(lsp-peek-implementation)
                nmap <silent> <buffer> gi <Plug>(lsp-implementation)
                nmap <silent> <buffer> gY <Plug>(lsp-peek-type-definition)
                nmap <silent> <buffer> gy <Plug>(lsp-type-definition)
                nmap <silent> <buffer> gr <Plug>(lsp-references)
                nmap <silent> <buffer> go <Plug>(lsp-document-symbol)
                nmap <silent> <buffer> gO <Plug>(lsp-workspace-symbol)

                nmap <silent> ]g <Plug>(lsp-next-diagnostic)
                nmap <silent> [g <Plug>(lsp-previous-diagnostic)
                nmap <silent> ]e <Plug>(lsp-next-error)
                nmap <silent> [e <Plug>(lsp-previous-error)
                nmap <silent> ]w <Plug>(lsp-next-warning)
                nmap <silent> [w <Plug>(lsp-previous-warning)
                nmap <silent> ]r <Plug>(lsp-next-reference)
                nmap <silent> [r <Plug>(lsp-previous-reference)

                nnoremap <silent> <buffer> K :call <SID>show_documentation()<CR>
            endfunction

            if exists('+tagfunc')
                function! MyTagFunc(pattern, flags, info) abort
                    let result = lsp#tagfunc(a:pattern, a:flags, a:info)
                    if !empty(result)
                        return result
                    endif
                    if !empty(tagfiles())
                        return taglist(a:pattern, a:info.buf_ffname)
                    endif
                    return []
                endfunc
            endif

            function! s:show_documentation() abort
                if (index(['vim', 'help'], &filetype) >= 0)
                    try
                        execute 'h' expand('<cword>')
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
        nnoremap <silent> <leader>oa :ToggleAsyncompleteAutoComplete<cr>
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
        inoremap <silent> <expr> <c-l> pumvisible() ? "\<c-l>" : asyncomplete#force_refresh()
        inoremap <silent> <expr> <c-space> pumvisible() ? "\<c-e>" : asyncomplete#force_refresh()
        inoremap <silent> <expr> <nul> pumvisible() ? "\<c-e>" : asyncomplete#force_refresh()

        silent! iunmap <silent> <c-y>
        inoremap <silent> <expr> <c-y> pumvisible() ? asyncomplete#close_popup() : "\<c-y>"
        silent! iunmap <silent> <c-e>
        inoremap <silent> <expr> <c-e> pumvisible() ? asyncomplete#cancel_popup() : "\<c-e>"

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
    nnoremap <silent> <leader>dp :Denite -resume<cr>
    nnoremap <silent> <leader>dD :Denite directory_rec<cr>
    nnoremap <silent> <leader>db :Denite buffer<cr>
    nnoremap <silent> <leader>dc :Denite command<cr>
    nnoremap <silent> <leader>dC :Denite colorscheme<cr>
    nnoremap <silent> <leader>d: :Denite command_history<cr>
    nnoremap <silent> <leader>de :Denite change<cr>
    nnoremap <silent> <leader>dh :Denite file/old<cr>
    nnoremap <silent> <leader>dH :Denite help<cr>
    nnoremap <silent> <leader>dv :Denite file<cr>
    nnoremap <silent> <leader>dV :Denite file/point<cr>
    nnoremap <silent> <leader>df :Denite file/rec<cr>
    nnoremap <silent> <leader>dF :Denite file/rec/git<cr>
    nnoremap <silent> <leader>dt :Denite outline<cr>
    nnoremap <silent> <leader>dT :Denite tag<cr>
    nnoremap <silent> <leader>dy :Denite filetype<cr>
    nnoremap <silent> <leader>dg :Denite grep<cr>
    nnoremap <silent> <leader>dG :Denite grep/git<cr>
    nnoremap <silent> <leader>dr :Denite grep/rg<cr>
    nnoremap <silent> <leader>da :Denite grep/ag<cr>
    nnoremap <silent> <leader>dA :Denite grep/ack<cr>
    nnoremap <silent> <leader>dj :Denite jump<cr>
    nnoremap <silent> <leader>dl :Denite line<cr>
    nnoremap <silent> <leader>dL :Denite line/external<cr>
    nnoremap <silent> <leader>dm :Denite mark<cr>
    nnoremap <silent> <leader>dM :Denite menu<cr>
    nnoremap <leader>do :Denite output:
    nnoremap <silent> <leader>d" :Denite register<cr>
    nnoremap <silent> <leader>d@ :Denite register<cr>
    nnoremap <silent> <leader>ds :Denite source<cr>
    nnoremap <silent> <leader>dS :Denite spell<cr>
    nnoremap <silent> <leader>dn :Denite neosnippet<cr>

    nnoremap <leader>DD :Denite directory_rec:
    nnoremap <leader>Db :Denite buffer:
    nnoremap <leader>Dv :Denite file:
    nnoremap <leader>Df :Denite file/rec:
    nnoremap <leader>DF :Denite file/rec/git:
    nnoremap <leader>Dt :Denite outline:
    nnoremap <leader>Dg :Denite grep:
    nnoremap <leader>DG :Denite grep/git:
    nnoremap <leader>Dr :Denite grep/rg:
    nnoremap <leader>Da :Denite grep/ag:
    nnoremap <leader>DA :Denite grep/ack:
    nnoremap <leader>Dl :Denite line:
    nnoremap <leader>DM :Denite menu:
    nnoremap <leader>DS :Denite spell:

    augroup MyDenite
        autocmd!
        autocmd FileType denite call s:denite_my_settings()
        autocmd FileType denite-filter call s:denite_filter_my_settings()
        " autocmd User denite-preview setlocal nonumber norelativenumber
        " autocmd FileType denite-filter let b:coc_suggest_disable = 1
        " autocmd FileType denite-filter autocmd BufEnter <buffer> let g:asyncomplete_auto_popup = 0
        " autocmd FileType denite-filter autocmd BufLeave <buffer> let g:asyncomplete_auto_popup = 1
    augroup END

    function! s:denite_my_settings() abort
        nnoremap <silent> <nowait><silent><buffer><expr> <c-\>
                    \ denite#do_map('choose_action')
        nnoremap <silent> <nowait><silent><buffer><expr> <cr>
                    \ denite#do_map('do_action')
        nnoremap <silent> <nowait><silent><buffer><expr> a
                    \ denite#do_map('do_action', 'append')
        nnoremap <silent> <nowait><silent><buffer><expr> r
                    \ denite#do_map('do_action', 'replace')
        nnoremap <silent> <nowait><silent><buffer><expr> y
                    \ denite#do_map('do_action', 'yank')
        nnoremap <silent> <nowait><silent><buffer><expr> d
                    \ denite#do_map('do_action', 'delete')
        nnoremap <silent> <nowait><silent><buffer><expr> p
                    \ denite#do_map('do_action', 'preview')
        nnoremap <silent> <nowait><silent><buffer><expr> h
                    \ denite#do_map('do_action', 'highlight')
        nnoremap <silent> <nowait><silent><buffer><expr> t
                    \ denite#do_map('do_action', 'tabopen')
        nnoremap <silent> <nowait><silent><buffer><expr> s
                    \ denite#do_map('do_action', 'split')
        nnoremap <silent> <nowait><silent><buffer><expr> v
                    \ denite#do_map('do_action', 'vsplit')
        nnoremap <silent> <nowait><silent><buffer><expr> R
                    \ denite#do_map('do_action', 'redraw')
        nnoremap <silent> <nowait><silent><buffer><expr> '
                    \ denite#do_map('do_action', 'quick_move')
        nnoremap <silent> <nowait><silent><buffer><expr> c
                    \ denite#do_map('do_action', 'cd')
        nnoremap <silent> <nowait><silent><buffer><expr> e
                    \ denite#do_map('do_action', 'edit')
        nnoremap <silent> <nowait><silent><buffer><expr> E
                    \ denite#do_map('do_action', 'echo')
        nnoremap <silent> <nowait><silent><buffer><expr> o
                    \ denite#do_map('do_action', 'open')
        nnoremap <silent> <nowait><silent><buffer><expr> q
                    \ denite#do_map('quit')
        nnoremap <silent> <nowait><silent><buffer><expr> <esc>
                    \ denite#do_map('quit')
        nnoremap <silent> <nowait><silent><buffer><expr> <c-c>
                    \ denite#do_map('quit')
        nnoremap <silent> <nowait><silent><buffer><expr> i
                    \ denite#do_map('open_filter_buffer')
        nnoremap <silent> <nowait><silent><buffer><expr> /
                    \ denite#do_map('open_filter_buffer')
        nnoremap <silent> <nowait><silent><buffer><expr> <space>
                    \ denite#do_map('toggle_select')
        nnoremap <silent> <nowait><silent><buffer><expr> <tab>
                    \ denite#do_map('toggle_select') . 'j'
        nnoremap <silent> <nowait><silent><buffer><expr> <s-tab>
                    \ denite#do_map('toggle_select') . 'k'
    endfunction

    function! s:denite_filter_my_settings() abort
        imap <silent> <nowait><silent><buffer> <c-y>
                    \ <Plug>(denite_filter_update)
        imap <silent> <nowait><silent><buffer> <esc>
                    \ <Plug>(denite_filter_quit)
        imap <silent> <nowait><silent><buffer> <c-o>
                    \ <Plug>(denite_filter_quit)
        inoremap <silent> <nowait><silent><buffer><expr> <c-c>
                    \ denite#do_map('quit')
        inoremap <silent> <nowait><silent><buffer><expr> <cr>
                    \ denite#do_map('do_action')
        inoremap <silent> <nowait><silent><buffer><expr> <c-\>
                    \ denite#do_map('choose_action')
        inoremap <silent> <nowait><silent><buffer><expr> <c-space>
                    \ denite#do_map('toggle_select')
        inoremap <silent> <nowait><silent><buffer><expr> <tab>
                    \ denite#do_map('toggle_select') .
                    \ "\<esc>\<c-w>p:call cursor(line('.')+1,0)\<cr>\<c-w>pA"
        inoremap <silent> <nowait><silent><buffer><expr> <s-tab>
                    \ denite#do_map('toggle_select') .
                    \ "\<esc>\<c-w>p:call cursor(line('.')-1,0)\<cr>\<c-w>pA"
        inoremap <silent> <nowait><silent><buffer> <c-n>
                    \ <esc><c-w>p:call cursor(line('.')+1,0)<cr><c-w>pA
        inoremap <silent> <nowait><silent><buffer> <c-p>
                    \ <esc><c-w>p:call cursor(line('.')-1,0)<cr><c-w>pA
        inoremap <silent> <nowait><silent><buffer> <down>
                    \ <esc><c-w>p:call cursor(line('.')+1,0)<cr><c-w>pA
        inoremap <silent> <nowait><silent><buffer> <up>
                    \ <esc><c-w>p:call cursor(line('.')-1,0)<cr><c-w>pA
    endfunction

    try
        call denite#custom#option('_', {
                    \ 'prompt': '❯',
                    \ 'auto_resume': 1,
                    \ 'smartcase': 1,
                    \ 'max_dynamic_update_candidates': 100000,
                    \ 'filter_updatetime': 500,
                    \ 'empty': 0
                    \ })
        if has('nvim-0.4.0')
            call denite#custom#option('_', {
                        \ 'split': 'floating'
                        \ })
            " call denite#custom#option('_', {
            "             \ 'split': 'floating',
            "             \ 'vertical_preview': 1,
            "             \ 'floating_preview': 1
            "             \ })
        endif

        call denite#custom#source('grep',
                    \ 'converters', ['converter/abbr_word'])
        call denite#custom#source('file/rec',
                    \ 'matchers', ['matcher/hide_hidden_files', 'matcher/project_files', 'matcher/fuzzy'])

        call denite#custom#alias('source', 'file/rec/git', 'file/rec')
        call denite#custom#var('file/rec/git', 'command',
                    \ ['git', 'ls-files', '-c', '--exclude-standard'])

        call denite#custom#alias('source', 'file/rec/py', 'file/rec')
        call denite#custom#var('file/rec/py', 'command',
                    \ ['scantree.py', '--path', ':directory'])

        call denite#custom#alias('source', 'grep/git', 'grep')
        call denite#custom#var('grep/git', 'command',
                    \ ['git', 'grep'])
        call denite#custom#var('grep/git', 'default_opts',
                    \ ['-I', '--line-number', '--color=never'])

        call denite#custom#alias('source', 'grep/rg', 'grep')
        call denite#custom#var('grep/rg', {
                    \ 'command': ['rg'],
                    \ 'default_opts': ['-i', '--vimgrep', '--no-heading'],
                    \ 'recursive_opts': [],
                    \ 'pattern_opt': ['--regexp'],
                    \ 'separator': ['--'],
                    \ 'final_opts': [],
                    \ })

        call denite#custom#alias('source', 'grep/ag', 'grep')
        call denite#custom#var('grep/ag', {
                    \ 'command': ['ag'],
                    \ 'default_opts': ['-i', '--vimgrep'],
                    \ 'recursive_opts': [],
                    \ 'pattern_opt': [],
                    \ 'separator': ['--'],
                    \ 'final_opts': [],
                    \ })

        call denite#custom#alias('source', 'grep/ack', 'grep')
        call denite#custom#var('grep/ack', {
                    \ 'command': ['ack'],
                    \ 'default_opts': [
                    \   '--ackrc', $HOME.'/.ackrc', '-H', '-i',
                    \   '--nopager', '--nocolor', '--nogroup', '--column'
                    \ ],
                    \ 'recursive_opts': [],
                    \ 'pattern_opt': ['--match'],
                    \ 'separator': ['--'],
                    \ 'final_opts': [],
                    \ })
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

inoremap <silent> <expr> <c-x>\ NeoSnippetExpand()
imap <silent> <c-\> <Plug>(neosnippet_expand_or_jump)
smap <silent> <c-\> <Plug>(neosnippet_expand_or_jump)
xmap <silent> <c-\> <Plug>(neosnippet_expand_target)
imap <silent> <c-]> <Plug>(neosnippet_jump_or_expand)
smap <silent> <c-]> <Plug>(neosnippet_jump_or_expand)
let g:neosnippet#snippets_directory = '~/.vim_snippets'
let g:neosnippet#expand_word_boundary = 1
let g:neosnippet#disable_runtime_snippets = {'_': 1}

nnoremap <silent> <leader>gv :GV<cr>
nnoremap <silent> <leader>gV :GV!<cr>
xnoremap <silent> <leader>gv :GV<cr>
xnoremap <silent> <leader>gV :GV?<cr>

nnoremap <leader>gg :G<space>
nnoremap <leader>gG :G! grep  <bar> cw <left><left><left><left><left><left>
nnoremap <silent> <leader>gb :G blame<cr>
nnoremap <leader>gB :G blame<space>
xnoremap <silent> <leader>gb :G blame<cr>
xnoremap <leader>gB :G blame<space>
nnoremap <silent> <leader>gc :G commit -v<cr>
nnoremap <leader>gC :G checkout<space>
nnoremap <silent> <leader>gd :Gdiffsplit<cr>
nnoremap <silent> <leader>gD :Gdiffsplit!<cr>
nnoremap <leader>gm :G merge -v<space>
nnoremap <leader>gM :GMove<space>
nnoremap <silent> <leader>gl :G log<cr>
nnoremap <leader>gL :G log<space>
nnoremap <silent> <leader>go :Gclog!<cr>
nnoremap <silent> <leader>gO :Gclog<cr>
nnoremap <silent> <leader>gh :0Gclog!<cr>
nnoremap <silent> <leader>gH :0Gclog<cr>
xnoremap <silent> <leader>gh :Gclog!<cr>
xnoremap <silent> <leader>gH :Gclog<cr>
nnoremap <silent> <leader>gf :G fetch -v<cr>
nnoremap <silent> <leader>gp :G push<cr>
nnoremap <silent> <leader>gP :G pull -v<cr>
nnoremap <silent> <leader>gs :G<cr>
nnoremap <leader>gS :G stash<space>
nnoremap <silent> <leader>gr :Gread<cr>
nnoremap <leader>gR :G rebase -i<space>
nnoremap <silent> <leader>ge :Gedit<cr>
nnoremap <leader>gE :Gedit<space>
nnoremap <silent> <leader>gw :Gwrite<cr>
nnoremap <leader>gW :Gwrite<space>

" augroup MyVinegarHighlight
"     autocmd!
"     au ColorScheme * hi! link netrwSuffixes Comment
" augroup END

nmap <silent> <c-_> <Plug>CommentaryLine
xmap <silent> <c-_> <Plug>Commentary

nnoremap <leader>sv :%S/
xnoremap <leader>sv :S/
nnoremap <leader>qv :cdo .S/
nnoremap <leader>qV :cfdo %S/
nnoremap <leader>lv :ldo .S/
nnoremap <leader>lV :lfdo %S/

let statusline_extra_right_0 = ['SleuthIndicator', []]
nnoremap <silent> <leader>sh :Sleuth<cr>

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = ''
nnoremap <silent> <leader>pp :CtrlP<cr>
nnoremap <silent> <leader>pc :CtrlPCurFile<cr>
nnoremap <silent> <leader>pC :CtrlPCurWD<cr>
nnoremap <silent> <leader>pr :CtrlPRoot<cr>
nnoremap <silent> <leader>pR :CtrlPRTS<cr>
nnoremap <silent> <leader>pb :CtrlPBuffer<cr>
nnoremap <silent> <leader>pt :CtrlPBufTag<cr>
nnoremap <silent> <leader>pT :CtrlPTag<cr>
nnoremap <silent> <leader>pl :CtrlPLine<cr>
nnoremap <silent> <leader>pL :CtrlPLastMode<cr>
nnoremap <silent> <leader>pq :CtrlPQuickfix<cr>
nnoremap <silent> <leader>pm :CtrlPMRUFiles<cr>
nnoremap <silent> <leader>pM :CtrlPMixed<cr>
nnoremap <silent> <leader>pu :CtrlPUndo<cr>
nnoremap <silent> <leader>ph :CtrlPChange<cr>
nnoremap <silent> <leader>pH :CtrlPChangeAll<cr>
nnoremap <silent> <leader>pd :CtrlPDir<cr>

nnoremap <leader>Pp :CtrlP<space>
nnoremap <leader>Pt :CtrlPBufTag<space>
nnoremap <leader>Pl :CtrlPLine<space>
nnoremap <leader>PL :CtrlPLastMode<space>
nnoremap <leader>Pm :CtrlPMRUFiles<space>
nnoremap <leader>Ph :CtrlPChange<space>
nnoremap <leader>Pd :CtrlPDir<space>

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

nnoremap <silent> <leader>pf :CtrlPFunky<cr>
nnoremap <silent> <leader>pF :CtrlPFunkyMulti<cr>
nnoremap <leader>Pf :CtrlPFunky<space>
nnoremap <leader>PF :CtrlPFunkyMulti<space>
" let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_nolim = 1
" let g:ctrlp_funky_matchtype = 'path'
" let g:ctrlp_funky_multi_buffers = 1

nmap <silent> ga <Plug>(EasyAlign)
xmap <silent> ga <Plug>(EasyAlign)
nmap <silent> gA <Plug>(LiveEasyAlign)
xmap <silent> gA <Plug>(LiveEasyAlign)

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
            \ 'header':  ['fg', 'Comment']
            \ }
" if has('nvim-0.4.0') || has('patch-8.2.191')
"     let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
" endif
" let g:fzf_layout = {'window': 'bot'.float2nr(0.4 * &lines).'new'}
" let g:fzf_layout = {'down': '40%'}
" Some workaround to fix the character deletion error at empty lines.
imap <silent> <c-x>k <plug>(fzf-complete-word)
imap <silent> <c-x>p <plug>(fzf-complete-path)
imap <silent> <c-x>f <plug>(fzf-complete-file)
imap <silent> <c-x>F <plug>(fzf-complete-file-ag)
imap <silent> <c-x>l <plug>(fzf-complete-buffer-line)
imap <silent> <c-x>L <plug>(fzf-complete-line)
inoremap <silent> <expr> <c-x>g fzf#vim#complete(fzf#wrap({
            \ 'prefix': '^.*$',
            \ 'source': 'grep -n --color=always -r .',
            \ 'options': '--ansi --delimiter : --nth 3..',
            \ 'reducer': {lines -> join(split(lines[0], ':\zs')[2:], '')}
            \ }))
inoremap <silent> <expr> <c-x>G fzf#vim#complete(fzf#wrap({
            \ 'prefix': '^.*$',
            \ 'source': 'git grep -n --color=always ^',
            \ 'options': '--ansi --delimiter : --nth 3..',
            \ 'reducer': {lines -> join(split(lines[0], ':\zs')[2:], '')},
            \ 'dir': systemlist('git rev-parse --show-toplevel')[0]
            \ }))
inoremap <silent> <expr> <c-x>r fzf#vim#complete(fzf#wrap({
            \ 'prefix': '^.*$',
            \ 'source': 'rg -n ^ --color always',
            \ 'options': '--ansi --delimiter : --nth 3..',
            \ 'reducer': {lines -> join(split(lines[0], ':\zs')[2:], '')}
            \ }))
if has('unix')
    nnoremap <silent> <leader>fd :FZFDir<cr>
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

nnoremap <silent> <F3> :FZFCommands<cr>
nnoremap <silent> <S-F3> :FZFCommands!<cr>
nmap <silent> <F4> <plug>(fzf-maps-n)
xmap <silent> <F4> <plug>(fzf-maps-x)
omap <silent> <F4> <plug>(fzf-maps-o)
imap <silent> <F4> <plug>(fzf-maps-i)
nnoremap <silent> <leader>ff :FZFFiles<cr>
nnoremap <silent> <leader>fF :FZFGFiles<cr>
nnoremap <silent> <leader>fy :FZFFiletypes<cr>
nnoremap <silent> <leader>f? :FZFGFiles?<cr>
nnoremap <silent> <leader>fb :FZFBuffers<cr>
nnoremap <silent> <leader>fo :FZFBCommits<cr>
nnoremap <silent> <leader>fO :FZFCommits<cr>
nnoremap <silent> <leader>fc :FZFCommands<cr>
nnoremap <silent> <leader>fC :FZFColors<cr>
nnoremap <silent> <leader>fa :FZFAg<cr>
nnoremap <silent> <leader>fr :FZFRg<cr>
nnoremap <silent> <leader>fl :FZFBLines<cr>
nnoremap <silent> <leader>fL :FZFLines<cr>
nnoremap <silent> <leader>ft :FZFBTags<cr>
nnoremap <silent> <leader>fT :FZFTags<cr>
nnoremap <silent> <leader>fm :FZFMarks<cr>
nnoremap <silent> <leader>fM :FZFMaps<cr>
nnoremap <silent> <leader>fw :FZFWindows<cr>
nnoremap <leader>fe :FZFLocate<space>
nnoremap <silent> <leader>fh :FZFHistory<cr>
nnoremap <silent> <leader>f/ :FZFHistory/<cr>
nnoremap <silent> <leader>f: :FZFHistory:<cr>
nnoremap <silent> <leader>fH :FZFHelptags<cr>
nnoremap <silent> <leader>fg :FZFGrep<cr>
nnoremap <silent> <leader>fG :FZFGGrep<cr>
nnoremap <silent> <leader>fq :FZFQuickFix<cr>
nnoremap <silent> <leader>fQ :FZFLocList<cr>

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

nnoremap <silent> <c-g> :Grepper<cr>
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
nnoremap <silent> <leader>st :Startify<cr>
nnoremap <silent> <leader>sa :SSave<cr>
nnoremap <leader>sA :SSave<space>
nnoremap <silent> <leader>sd :SDelete<cr>
nnoremap <leader>sD :SDelete<space>
nnoremap <silent> <leader>sl :SLoad<cr>
nnoremap <leader>sL :SLoad<space>
nnoremap <silent> <leader>sc :SClose<cr>
augroup MyStartify
    autocmd!
    if has('nvim')
        autocmd TabNewEntered *
                    \ call timer_start(50, {-> execute(
                    \     'if empty(expand("%")) && empty(&l:buftype) && &l:modifiable | ' .
                    \         'silent! Startify | ' .
                    \     'endif'
                    \ )})
    else
        if !exists(':terminal')
            autocmd BufWinEnter *
                        \ if !exists('t:startify_new_tab')
                        \         && empty(expand('%'))
                        \         && empty(&l:buftype)
                        \         && &l:modifiable |
                        \     let t:startify_new_tab = 1 |
                        \     silent! Startify |
                        \ endif
        else
            if has('timers') && has('lambda')
                autocmd BufWinEnter *
                            \ if !exists('t:startify_new_tab') && tabpagenr('$') > 1 |
                            \     let t:startify_new_tab = 1 |
                            \     call timer_start(50, {-> execute(
                            \         'if empty(expand("%")) && empty(&l:buftype) && &l:modifiable | ' .
                            \             'silent! Startify | ' .
                            \         'endif'
                            \     )}) |
                            \ endif
            endif
        endif
    endif
augroup END

nnoremap <silent> <leader>uu :UndotreeToggle<cr>
nnoremap <silent> <leader>uf :UndotreeFocus<cr>
nnoremap <silent> <leader>us :UndotreeShow<cr>
nnoremap <silent> <leader>uh :UndotreeHide<cr>
let g:undotree_WindowLayout = 4
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0

" let g:NERDTreeShowHidden = 1
" let g:NERDTreeHijackNetrw = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinPos = 'right'
" let g:NERDTreeWinSize = 30
" let NERDTreeDirArrowExpandable=">"
" let NERDTreeDirArrowCollapsible="v"
let g:NERDTreeNaturalSort = 1
nnoremap <silent> <leader>nn :NERDTreeToggle<cr>
nnoremap <silent> <leader>nN :NERDTreeToggleVCS<cr>
nnoremap <leader>nb :NERDTreeFromBookmark<space>
nnoremap <silent> <leader>nf :NERDTreeFind<cr>
nnoremap <silent> <leader>nF :NERDTreeFocus<cr>
nnoremap <silent> <leader>nv :NERDTreeVCS<cr>
nnoremap <silent> <leader>nc :NERDTreeCWD<cr>
nnoremap <silent> <leader>nr :NERDTreeRefreshRoot<cr>
nnoremap <silent> <leader>nm :NERDTreeMirror<cr>
augroup MyNERDTree
    autocmd!
    autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
augroup END

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap <silent> g<c-f> :Neoformat<cr>
xnoremap <silent> g<c-f> :Neoformat<cr>
nnoremap <silent> <a-f> :Neoformat<cr>
xnoremap <silent> <a-f> :Neoformat<cr>

nmap <silent> <a-;> <Plug>(cosco-commaOrSemiColon)
imap <silent> <a-;> <c-o><Plug>(cosco-commaOrSemiColon)
nmap <silent> <a-,> <Plug>(cosco-commaOrSemiColon)
imap <silent> <a-,> <c-o><Plug>(cosco-commaOrSemiColon)
nmap <silent> <a-cr> <Plug>(cosco-commaOrSemiColon):put =nr2char(10)<cr>
imap <silent> <a-cr> <c-o><Plug>(cosco-commaOrSemiColon)<c-o>o

nnoremap <silent> <leader>aw :ArgWrap<cr>

nnoremap <leader>rr :AsyncRun<space>
xnoremap <leader>rr :AsyncRun<space>
nnoremap <leader>rR :AsyncRun!<space>
xnoremap <leader>rR :AsyncRun!<space>
nnoremap <silent> <leader>rs :AsyncStop<cr>
nnoremap <silent> <leader>rS :AsyncStop!<cr>
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

nnoremap <silent> <leader>Tn :TestNearest<CR>
nnoremap <leader>TN :TestNearest<Space>
nnoremap <silent> <leader>Tf :TestFile<CR>
nnoremap <leader>TF :TestFile<Space>
nnoremap <silent> <leader>Ts :TestSuite<CR>
nnoremap <leader>TS :TestSuite<Space>
nnoremap <silent> <leader>Tl :TestLast<CR>
nnoremap <silent> <leader>Tv :TestVisit<CR>
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
omap <silent> ih <Plug>(GitGutterTextObjectInnerPending)
omap <silent> ah <Plug>(GitGutterTextObjectOuterPending)
xmap <silent> ih <Plug>(GitGutterTextObjectInnerVisual)
xmap <silent> ah <Plug>(GitGutterTextObjectOuterVisual)
nmap <silent> ]h <Plug>(GitGutterNextHunk)
nmap <silent> [h <Plug>(GitGutterPrevHunk)
nmap <silent> <leader>hs <Plug>(GitGutterStageHunk)
nmap <silent> <leader>hu <Plug>(GitGutterUndoHunk)
nmap <silent> <leader>hp <Plug>(GitGutterPreviewHunk)
nnoremap <silent> <leader>hh :GitGutterToggle<cr>
nnoremap <silent> <leader>hs :GitGutterSignsToggle<cr>
nnoremap <silent> <leader>hl :GitGutterLineHighlightsToggle<cr>
if has('nvim-0.3.2')
    nnoremap <silent> <leader>hn :GitGutterLineNrHighlightsToggle<cr>
endif
nnoremap <silent> <leader>hq :GitGutterQuickFix<cr>

if v:version >= 720
    " let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 1
    let g:indent_guides_start_level = 2
endif

" let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

if exists(':terminal')
    if has('nvim-0.4.0') || has('patch-8.2.191')
        nmap <silent> <F12> <Plug>(Multiterm)
        nmap <silent> <c-space> <Plug>(Multiterm)
        nmap <silent> <nul> <Plug>(Multiterm)
        tmap <silent> <F12> <Plug>(Multiterm)
        tmap <silent> <c-space> <Plug>(Multiterm)
        tmap <silent> <nul> <Plug>(Multiterm)
        " xmap <silent> <F12> <Plug>(Multiterm)
        " xmap <silent> <c-space> <Plug>(Multiterm)
        " xmap <silent> <nul> <Plug>(Multiterm)
        " imap <silent> <F12> <Plug>(Multiterm)
        " imap <silent> <c-space> <Plug>(Multiterm)
        " imap <silent> <nul> <Plug>(Multiterm)
    elseif has('patch-8.0.1593') || has('nvim')
        nnoremap <silent> <F12> :Nuake<cr>
        nnoremap <silent> <c-space> :Nuake<cr>
        nnoremap <silent> <nul> :Nuake<cr>
        if has('nvim')
            tnoremap <silent> <F12> <c-\><c-n>:Nuake<cr>
            tnoremap <silent> <c-space> <c-\><c-n>:Nuake<cr>
            tnoremap <silent> <nul> <c-\><c-n>:Nuake<cr>
        else
            tnoremap <silent> <F12> <c-w>:Nuake<cr>
            tnoremap <silent> <c-space> <c-w>:Nuake<cr>
            tnoremap <silent> <nul> <c-w>:Nuake<cr>
        endif
        " xnoremap <silent> <F12> :<c-u>Nuake<cr>
        " xnoremap <silent> <c-space> :<c-u>Nuake<cr>
        " xnoremap <silent> <nul> :<c-u>Nuake<cr>
        " inoremap <silent> <F12> <c-o>:Nuake<cr>
        " inoremap <silent> <c-space> <c-o>:Nuake<cr>
        " inoremap <silent> <nul> <c-o>:Nuake<cr>
    endif
endif

if has('nvim') || has('job') || has('channel')
    if executable('python3')
        let g:codi#interpreters = {
                    \     'python': {
                    \         'bin': 'python3'
                    \     }
                    \ }
    endif
    nnoremap <silent> <leader>co :Codi!!<cr>
    nnoremap <leader>cO :Codi!!<space>
endif

nmap <silent> <leader>cc <Plug>Colorizer
xmap <silent> <leader>cc <Plug>Colorizer

try
    " call textobj#user#plugin('datetime', {
    "             \     'date': {
    "             \         'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
    "             \         'select': ['ad', 'id']
    "             \     }
    "             \ })
    call textobj#user#plugin('line', {
                \     'line-a': {
                \         'pattern': '\v^.*$',
                \         'select': 'al',
                \         'scan': 'line'
                \     },
                \     'line-i': {
                \         'pattern': '\v^\s*\zs.{-}\ze\s*$',
                \         'select': 'il',
                \         'scan': 'line'
                \     }
                \ })
    call textobj#user#plugin('underscore', {
                \     'underscore-a': {
                \         'pattern': '\v_*[a-zA-Z0-9]*',
                \         'select': ['a_'],
                \         'scan': 'line'
                \     },
                \     'underscore-i': {
                \         'pattern': '\v_*\zs[a-zA-Z0-9]*\ze',
                \         'select': ['i_'],
                \         'scan': 'line'
                \     }
                \ })
    " call textobj#user#plugin('comma', {
    "             \     'comma-a': {
    "             \         'pattern': '\v(,[^,]+)|((\(|\[|\{)\zs[^,([{]*,\s*\ze)|(\zs,[^,]{-}\ze(\)|\]|\}))',
    "             \         'select': 'a,',
    "             \         'scan': 'line'
    "             \     },
    "             \     'comma-i': {
    "             \         'pattern': '\v(,\zs[^,)\]}]*\ze)|((\(|\[\{)\zs[^,([{]*\ze,)|(,\zs[^,]{-}\ze(\)\]\}))',
    "             \         'select': 'i,',
    "             \         'scan': 'line'
    "             \     }
    "             \ })
    call textobj#user#plugin('semicolon', {
                \     'semicolon-a': {
                \         'pattern': '\v(^\s*)=\zs[^;]*;\ze',
                \         'select': 'a;',
                \         'scan': 'cursor'
                \     },
                \     'semicolon-i': {
                \         'pattern': '\v(^\s*)=\zs[^;]*\ze;',
                \         'select': 'i;',
                \         'scan': 'cursor'
                \     }
                \ })
    call textobj#user#plugin('camel', {
                \     'camel-a': {
                \         'pattern': '\v([A-Z]+[a-z]*)|[0-9]+|[a-z]+',
                \         'select': ['a~'],
                \         'scan': 'cursor'
                \     },
                \     'camel-i': {
                \         'pattern': '\v([A-Z][a-z]*)|[0-9]+|[a-z]+',
                \         'select': ['i~'],
                \         'scan': 'cursor'
                \     }
                \ })
catch
endtry
