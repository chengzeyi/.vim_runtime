scriptencoding utf-8

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
" if UseFtplugin('go')
"     Plug 'chengzeyi/go-highlight.vim'
" endif
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
" if UseFtplugin('markdown')
"     Plug 'plasticboy/vim-markdown'
" endif
if UseFtplugin('latex')
    Plug 'lervag/vimtex'
endif

" if has('nvim-0.5.0')
"     Plug 'stevearc/aerial.nvim'
" endif

if get(g:, 'use_treesitter', 0) && has('nvim-0.5.0')
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'nvim-treesitter/playground'
    " Plug 'romgrk/nvim-treesitter-context'
endif

if get(g:, 'use_nvim_cmp', 0) && has('nvim-0.7.0')
    if get(g:, 'use_nvim_lsp', 0) && has('nvim-0.5.0')
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
        Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
    endif

    if get(g:, 'use_tabnine', 0)
        Plug 'tzachar/cmp-tabnine'
    end

    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'dmitmel/cmp-cmdline-history'

    " if executable('rg')
    "     Plug 'lukas-reineke/cmp-rg'
    " endif

    " Plug 'uga-rosa/cmp-dictionary'
    " Plug 'quangnguyen30192/cmp-nvim-tags'

    Plug 'hrsh7th/nvim-cmp'
endif

if get(g:, 'use_nvim_lsp', 0) && has('nvim-0.5.0')
    Plug 'neovim/nvim-lspconfig'
    Plug 'simrat39/symbols-outline.nvim'
endif

if get(g:, 'use_coc', 0)
    if (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
    endif
endif

if get(g:, 'use_vim_lsp', 0)
    if has('timers') && has('lambda')
        Plug 'mattn/vim-lsp-settings'
        Plug 'prabirshrestha/vim-lsp'
    endif
endif

if get(g:, 'use_asyncomplete', 0)
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

if get(g:, 'use_copilot', 0) && has('nvim-0.6.0')
    Plug 'github/copilot.vim'
    " if get(g:, 'use_nvim_cmp', 0) && has('nvim-0.7.0')
    "     Plug 'zbirenbaum/copilot.lua'
    "     Plug 'zbirenbaum/copilot-cmp'
    " endif
endif

" if (has('nvim-0.3.0') || v:version >= 800) && has('python3')
"     if has('nvim')
"         Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
"     else
"         Plug 'Shougo/denite.nvim'
"         Plug 'roxma/nvim-yarp'
"         Plug 'roxma/vim-hug-neovim-rpc'
"     endif
" endif

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
Plug 'junegunn/fzf', {'dir': '~/.fzf_' . g:os}
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'
if get(g:, 'use_nvim_lsp', 0) && has('nvim-0.5.0')
    Plug 'ojroques/nvim-lspfuzzy'
endif

Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'

Plug 'mbbill/undotree'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

if exists(':terminal')
    if has('nvim')
        Plug 'rbgrouleff/bclose.vim'
    endif
    Plug 'francoiscabrol/ranger.vim'
endif

Plug 'sbdchd/neoformat'

" Plug 'lfilho/cosco.vim'

Plug 'FooSoft/vim-argwrap'

" Plug 'AndrewRadev/splitjoin.vim'

Plug 'easymotion/vim-easymotion'

Plug 'deris/vim-shot-f'

Plug 'skywind3000/asyncrun.vim'

" Plug 'janko/vim-test'

Plug 'airblade/vim-gitgutter'

if v:version >= 720
    Plug 'nathanaelkane/vim-indent-guides'
endif

if exists('##TextYankPost')
    Plug 'machakann/vim-highlightedyank'
endif

Plug 'editorconfig/editorconfig-vim'

if exists(':terminal')
    if has('nvim-0.4.0') || has('patch-8.2.191')
        Plug 'chengzeyi/multiterm.vim'
    elseif has('nvim') || has('patch-8.0.1593')
        Plug 'Lenovsky/nuake'
    endif
endif

" if (has('job') && has('channel')) || has('nvim')
"     Plug 'metakirby5/codi.vim'
" endif

" if has('nvim')
"     Plug 'edluffy/hologram.nvim'
" endif

" if has('nvim-0.7.0')
"     Plug 'rcarriga/nvim-notify'
" endif

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
        for name in g:use_colorschemes
            if name ==# a:name
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

if has('nvim')
    Plug 't-troebst/perfanno.nvim'
endif

call plug#end()

" if has('patch-7.4.2201')
"     set signcolumn=yes
" endif

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

" if UseFtplugin('markdown')
"     let g:vim_markdown_conceal = 1
"     let g:vim_markdown_conceal_code_blocks = 1
"     let g:vim_markdown_fenced_languages = [
"                 \ 'c++=cpp',
"                 \ 'viml=vim',
"                 \ 'bash=sh',
"                 \ 'ini=dosini',
"                 \ 'csharp=cs'
"                 \ ]
" endif

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

" if has('nvim-0.5.0')
"     if luaeval('pcall(require, "aerial")')
" lua << EOF
" local aerial = require'aerial'

" aerial.register_attach_cb(function(bufnr)
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>tt', '<cmd>AerialToggle!<CR>', {})
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>tT', '<cmd>AerialToggle<CR>', {})
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '(', '<cmd>AerialPrev<CR>', {})
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', ')', '<cmd>AerialNext<CR>', {})
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '{', '<cmd>AerialPrevUp<CR>', {})
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '}', '<cmd>AerialNextUp<CR>', {})
" end)

" vim.g.aerial = {
"     max_width = 30,
"     min_width = 30,
"     close_behavior = 'global',
"     placement_editor_edge = true,
" }
" EOF
"     endif
" endif

if get(g:, 'use_treesitter', 0) && has('nvim-0.5.0')
    function! InitTS() abort
lua << EOF
require("nvim-treesitter.install").prefer_git = true

for _, key in ipairs(require'nvim-treesitter.configs'.available_modules()) do
    require'nvim-treesitter.configs'.setup {
        [key] = {
            disable = function(lang, bufnr)
                local size = vim.fn.getfsize(vim.api.nvim_buf_get_name(0))
                return size == -2 or size > 1024 * 1024 or vim.api.nvim_buf_line_count(bufnr) > 50000
            end,
        }
    }
end

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
            scope_incremental = "_",
            node_decremental = "-",
        },
    },
}
-- This dose not correctly handle 'shiftwidth'
-- require'nvim-treesitter.configs'.setup {
    -- indent = {
        -- enable = true
    -- }
-- }

-- local queries = require 'nvim-treesitter.query'
-- require'nvim-treesitter'.define_modules {
--     my_statusline = {
--         enable = true,
--         attach = function(bufnr, lang)
--             if vim.g.statusline_extra_left_2 then
--                 return
--             end
--             vim.b.statusline_extra_left_2 = {
--                 "luaeval",
--                 {
--                     "require'util'.treesitter_statusline()"
--                 }
--             }
--         end,
--         detach = function(bufnr)
--             vim.b.statusline_extra_left_2 = nil
--         end,
--         is_supported = queries.has_locals
--     }
-- }

local queries = require 'nvim-treesitter.query'
require'nvim-treesitter'.define_modules {
    my_auto_enable_fold = {
        enable = false,
        attach = function(bufnr, lang)
            vim.api.nvim_command('if !exists("b:saved_fd") | let b:saved_fd = [&l:fdm, &l:fde] | setl fdm=expr fde=nvim_treesitter#foldexpr() | endif')
            -- vim.api.nvim_command(string.format('augroup MyAutoEnableFold_%d', bufnr))
            -- vim.api.nvim_command(string.format('au BufEnter <buffer=%d> if !exists("w:saved_fd") | let w:saved_fd = [&fdm, &fde] | setl fdm=expr fde=nvim_treesitter#foldexpr() | endif', bufnr))
            -- vim.api.nvim_command(string.format('au BufLeave <buffer=%d> if exists("w:saved_fd") | let &l:fdm = w:saved_fd[0] | let &l:fde = w:saved_fd[1] | unlet w:saved_fd | endif', bufnr))
            -- vim.api.nvim_command('augroup END')
        end,
        detach = function(bufnr)
            vim.api.nvim_command('if exists("b:saved_fd") | let [&l:fdm, &l:fde] = b:saved_fd | unlet b:saved_fd | endif')
            -- vim.api.nvim_command(string.format('augroup MyAutoEnableFold_%d', bufnr))
            -- vim.api.nvim_command('au!')
            -- vim.api.nvim_command('augroup END')
            -- vim.api.nvim_command(string.format('augroup! MyAutoEnableFold_%d', bufnr))
        end,
        is_supported = queries.has_folds
    }
}

require'nvim-treesitter.configs'.setup {
    textobjects = {
        select = {
            enable = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["if"] = "@function.inner",
                ["af"] = "@function.outer",
                ["iF"] = "@class.inner",
                ["aF"] = "@class.outer",
                -- ["i,"] = "@parameter.inner",
                -- ["a,"] = "@parameter.outer",
                -- ["igf"] = "@function.inner",
                -- ["agf"] = "@function.outer",
                -- ["igF"] = "@class.inner",
                -- ["agF"] = "@class.outer",
                -- ["igp"] = "@parameter.inner",
                -- ["agp"] = "@parameter.outer",
                -- ["igs"] = "@statement.outer",
                -- ["ags"] = "@statement.outer",
                -- ["igb"] = "@block.inner",
                -- ["agb"] = "@block.outer",
                -- ["igC"] = "@call.inner",
                -- ["agC"] = "@call.outer",
                -- ["igi"] = "@conditional.inner",
                -- ["agi"] = "@conditional.outer",
                -- ["igl"] = "@loop.inner",
                -- ["agl"] = "@loop.outer",
                -- ["igc"] = "@comment.outer",
                -- ["agc"] = "@comment.outer",

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
                -- ["]sif"] = "@function.inner",
                -- ["]saf"] = "@function.outer",
                -- ["]siF"] = "@class.inner",
                -- ["]saF"] = "@class.outer",
                -- ["]sip"] = "@parameter.inner",
                -- ["]sap"] = "@parameter.outer",
                -- ["]sis"] = "@statement.outer",
                -- ["]sas"] = "@statement.outer",
                -- ["]sib"] = "@block.inner",
                -- ["]sab"] = "@block.outer",
                -- ["]siC"] = "@call.inner",
                -- ["]saC"] = "@call.outer",
                -- ["]sii"] = "@conditional.inner",
                -- ["]sai"] = "@conditional.outer",
                -- ["]sil"] = "@loop.inner",
                -- ["]sal"] = "@loop.outer",
                -- ["]sic"] = "@comment.outer",
                -- ["]sac"] = "@comment.outer",
            },
            swap_previous = {
                ["[s"] = "@parameter.inner",
                ["[S"] = "@statement.outer",
                -- ["[sif"] = "@function.inner",
                -- ["[saf"] = "@function.outer",
                -- ["[siF"] = "@class.inner",
                -- ["[saF"] = "@class.outer",
                -- ["[sip"] = "@parameter.inner",
                -- ["[sap"] = "@parameter.outer",
                -- ["[sis"] = "@statement.outer",
                -- ["[sas"] = "@statement.outer",
                -- ["[sib"] = "@block.inner",
                -- ["[sab"] = "@block.outer",
                -- ["[siC"] = "@call.inner",
                -- ["[saC"] = "@call.outer",
                -- ["[sii"] = "@conditional.inner",
                -- ["[sai"] = "@conditional.outer",
                -- ["[sil"] = "@loop.inner",
                -- ["[sal"] = "@loop.outer",
                -- ["[sic"] = "@comment.outer",
                -- ["[sac"] = "@comment.outer",
            },
        },
    },
}
require'nvim-treesitter.configs'.setup {
    textobjects = {
        move = {
            enable = true,
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
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
-- This has some performance issues and is duplicated by lsp's same functionality
require'nvim-treesitter.configs'.setup {
    refactor = {
        highlight_definitions = {
            -- enable = true,
        },
    },
}
-- This might be slow and is disturbing
require'nvim-treesitter.configs'.setup {
    refactor = {
        highlight_current_scope = {
            -- enable = true,
        },
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
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
    },
}
EOF
    endfunction

    augroup MyNvimTreesitter
        autocmd!
        if v:vim_did_enter
            if exists('g:loaded_nvim_treesitter') | call InitTS() | endif
        else
            au VimEnter * if exists('g:loaded_nvim_treesitter') | call InitTS() | endif
        endif
    augroup END


    " let g:statusline_extra_left_2 = ['nvim_treesitter#statusline', []]
    nnoremap gss <cmd>echo nvim_treesitter#statusline()<cr>
endif

if get(g:, 'use_nvim_cmp', 0) && has('nvim-0.7.0')
    imap <expr> <c-l> vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<c-l>'
    smap <expr> <c-l> vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<c-l>'
    imap <expr> <c-j> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<c-j>'
    smap <expr> <c-j> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<c-j>'
    imap <expr> <c-k> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<c-k>'
    smap <expr> <c-k> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<c-k>'

    " nmap s <Plug>(vsnip-select-text)
    " xmap s <Plug>(vsnip-select-text)
    " nmap S <Plug>(vsnip-cut-text)
    " xmap S <Plug>(vsnip-cut-text)

    function! InitNvimCmp() abort
        if !luaeval('pcall(require, "cmp")')
            return
        endif

        nnoremap <silent> <leader>oa :ToggleCmpAutoComplete<cr>
        command! -nargs=0 ToggleCmpAutoComplete call ToggleCmpAutoComplete()

        function! ToggleCmpAutoComplete() abort
            if luaeval('require"cmp.config".get().completion.autocomplete == false')
lua << EOF
local cmp = require'cmp'

cmp.setup {
    completion = {
        autocomplete = require'cmp.config.default'().completion.autocomplete
    }
}
EOF
            else
lua << EOF
local cmp = require'cmp'

cmp.setup {
    completion = {
        autocomplete = false
    }
}
EOF
            endif
        endfunction

lua << EOF
-- Setup nvim-cmp.
local cmp = require'cmp'
local keymap = require'cmp.utils.keymap'

if pcall(require, 'cmp_tabnine.config') then
    local tabnine = require('cmp_tabnine.config')
    tabnine:setup({})
    -- tabnine:setup({
    --     max_lines = 1000;
    --     max_num_results = 20;
    --     sort = true;
    --     run_on_every_keystroke = true;
    --     snippet_placeholder = '..';
    --     ignored_file_types = { -- default is not to ignore
    --         -- uncomment to ignore in lua:
    --         -- lua = true
    --     };
    -- })
end

local kind_icons = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

local source_names = {
    buffer = "[Buffer]",
    copilot = "[Copilot]",
    nvim_lsp = "[LSP]",
    nvim_lsp_signature_help = "[Signature]",
    cmp_tabnine = "[TN]",
    vsnip = "[Vsnip]",
    luasnip = "[LuaSnip]",
    nvim_lua = "[Lua]",
    latex_symbols = "[LaTeX]",
    tags = "[Tag]",
    path = "[Path]",
    rg = "[RG]",
    dictionary = "[Dict]",
}

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local get_bufnrs = function()
    local bufs = {}
    for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local bufnr = vim.api.nvim_win_get_buf(win)
        if vim.api.nvim_buf_line_count(bufnr) <= 50000 and vim.fn.getfsize(vim.api.nvim_buf_get_name(bufnr)) <= 1e6 then
            bufs[vim.api.nvim_win_get_buf(win)] = true
        end
    end
    return vim.tbl_keys(bufs)
end

-- local get_bufnrs = function()
--     local bufs = {}
--     local bufnr = vim.api.nvim_get_current_buf()
--     if vim.api.nvim_buf_line_count(bufnr) <= 50000 then
--         bufs[bufnr] = true
--     end
--     return vim.tbl_keys(bufs)
-- end

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
        end,
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4)),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4)),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete()),
        ['<C-y>'] = cmp.mapping(cmp.mapping.close()),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping(function(fallback)
            if cmp.visible() and cmp.get_active_entry() then
                cmp.confirm({}, function()
                    cmp.close()
                end)
            else
                fallback()
            end
        end),
        -- ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            -- elseif vim.fn["vsnip#available"](1) == 1 then
                -- feedkey("<Plug>(vsnip-expand-or-jump)", "")
            elseif has_words_before() then
                cmp.complete()
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            -- elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                -- feedkey("<Plug>(vsnip-jump-prev)", "")
            elseif has_words_before() then
                cmp.complete()
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end),
    },
    sources = cmp.config.sources({
        { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lua' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
        -- { name = 'tags' },
        -- { name = 'buffer' },
        { name = 'buffer',
          option = {
              get_bufnrs = get_bufnrs,
          },
          max_item_count = 5,
        },
        { name = 'path',
          max_item_count = 5,
        },
        -- { name = 'dictionary', keyword_length = 2 },
        { name = 'cmp_tabnine' },
        -- { name = 'rg' },
    }),
    formatting = {
        format = function(entry, vim_item)
            -- Kind icons
            -- local kind = string.format('%s %s', kind_icons[vim_item.kind] or '', vim_item.kind) -- This concatonates the icons with the name of the item kind
            local kind = vim_item.kind
            -- Source
            local name = entry.source.name
            local menu = source_names[name] or ""
            if name == 'cmp_tabnine' then
                -- kind = string.format('%s %s', '', vim_item.kind) -- This concatonates the icons with the name of the item kind
                kind = vim_item.kind
                if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
                    menu = menu .. ' ' .. entry.completion_item.data.detail
                end
            elseif name == 'copilot' then
                -- kind = string.format('%s %s', '', vim_item.kind) -- This concatonates the icons with the name of the item kind
                kind = vim_item.kind
                vim_item.kind_hl_group = 'CmpItemKindCopilot'
            end
            vim_item.kind = kind
            vim_item.menu = menu
            return vim_item
        end
    },
    -- view = {                                                        
    --     entries = {
    --         name = 'custom',
    --         selection_order = 'near_cursor',
    --     },
    -- },
})

local cmdline_search_configs = {
    -- view = {                                                
    --     entries = {
    --         name = 'wildmenu',
    --         separator = '|'
    --     }       
    -- },
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'nvim_lsp_document_symbol' }
    }, {
        -- { name = 'buffer' },
        { name = 'buffer', option = {
                get_bufnrs = get_bufnrs
            }
        },
        { name = 'cmdline_history' }
    })
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', cmdline_search_configs)
cmp.setup.cmdline('?', cmdline_search_configs)

local function delay(fn, time)
    local timer = vim.loop.new_timer()
    timer:start(time, 0, vim.schedule_wrap(function()
        fn()
        timer:stop()
    end))
end

cmd_mapping = cmp.mapping.preset.cmdline()
cmd_mapping_override = {
    ['<Tab>'] = {
        c = function()
            if vim.api.nvim_get_mode().mode == "c" and cmp.get_selected_entry() == nil then
                local text = vim.fn.getcmdline()
                local expanded = vim.fn.expandcmd(text)
                if expanded ~= text then
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, true, true) .. expanded, "n", false)
                    -- triggering right away won't work, need to wait a cycle
                    delay(cmp.complete, 0)
                elseif cmp.visible() then
                    cmp.select_next_item()
                else
                    cmp.complete()
                end
            else
                if cmp.visible() then
                    cmp.select_next_item()
                else
                    cmp.complete()
                end
            end -- in the real mapping there are other elseif clauses
        end,
    },
    ['<S-Tab>'] = {
        c = function()
            if vim.api.nvim_get_mode().mode == "c" and cmp.get_selected_entry() == nil then
                local text = vim.fn.getcmdline()
                local expanded = vim.fn.expandcmd(text)
                if expanded ~= text then
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, true, true) .. expanded, "n", false)
                    -- triggering right away won't work, need to wait a cycle
                    delay(cmp.complete, 0)
                elseif cmp.visible() then
                    cmp.select_prev_item()
                else
                    cmp.complete()
                end
            else
                if cmp.visible() then
                    cmp.select_prev_item()
                else
                    cmp.complete()
                end
            end
        end
    }
}
for k, v in pairs(cmd_mapping_override) do
    cmd_mapping[k] = v
end

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmd_mapping,
    sources = cmp.config.sources({
        { name = 'cmdline' },
        { name = 'path' },
        { name = 'cmdline_history' }
    })
})
EOF
    endfunction

    call InitNvimCmp()
endif

if get(g:, 'use_nvim_lsp', 0) && has('nvim-0.5.0')
    augroup MyNvimLsp
        autocmd!
        " if v:vim_did_enter
        "     if exists('g:lspconfig') | call InitNvimLsp() | endif
        " else
        "     au VimEnter * if exists('g:lspconfig') | call InitNvimLsp() | endif
        " endif
        " autocmd User LspProgressUpdate redrawstatus
        " autocmd User LspRequest redrawstatus
    augroup END

    function! InitNvimLsp() abort
        if !luaeval('pcall(require, "lspconfig")')
            return
        endif
lua << EOF
vim.g.symbols_outline = {
    width = 30
}

local on_attach = function(client, bufnr)
    -- if pcall(require, 'aerial') then
    --     require'aerial'.on_attach(client, bufnr, { preserve_callback = true })
    -- end

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    vim.api.nvim_buf_set_keymap(bufnr, 'i', '<c-o>', 'complete_info(["mode"])["mode"] ==# "eval" ? "<c-n>" : "<c-o>"', {
        noremap = true,
        silent = true,
        expr = true,
    })
    -- require'diagnostic'.on_attach()
    -- require'completion'.on_attach()

    -- Mappings.
    local opts = {
        noremap = true,
        silent = true,
    }

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gH', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'i', '<c-g>h', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'i', '<c-g><c-h>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<s-leftmouse>', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<s-rightmouse>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gm', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gy', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'go', '<cmd>lua vim.lsp.buf.document_symbol()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gO', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gl', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'g(', '<cmd>lua vim.lsp.buf.incoming_calls()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'g)', '<cmd>lua vim.lsp.buf.outgoing_calls()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']g', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[e', '<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']e', '<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[w', '<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.WARN})<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']w', '<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.WARN})<cr>', opts)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gL', '<cmd>lua require"lsp_ext".peek_declaration()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua require"lsp_ext".peek_definition()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gY', '<cmd>lua require"lsp_ext".peek_type_definition()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gM', '<cmd>lua require"lsp_ext".peek_implementation()<cr>', opts)

    vim.api.nvim_command [[augroup MyNvimLspBuffer]]
    
    local has_document_highlight
    if vim.fn.has('nvim-0.7.0') == 1 then
        has_document_highlight = client.server_capabilities.documentHighlightProvider
    else
        has_document_highlight = client.resolved_capabilities.document_highlight
    end
    if has_document_highlight then
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd CursorHold <buffer> silent! lua vim.lsp.buf.document_highlight()]]
        -- vim.api.nvim_command [[autocmd CursorHoldI <buffer> silent! lua vim.lsp.buf.document_highlight()]]
        vim.api.nvim_command [[autocmd CursorMoved <buffer> silent! lua vim.lsp.buf.clear_references()]]
        -- vim.api.nvim_command [[autocmd CompleteDone <buffer> silent! lua require"lsp_ext".on_complete_done()]]
        -- vim.api.nvim_command [[autocmd CompleteChanged <buffer> lua require"lsp_ext".on_complete_changed()]]
    end
    local has_codelens
    if vim.fn.has('nvim-0.7.0') == 1 then
        has_codelens = client.server_capabilities.codeLensProvider
    else
        has_codelens = client.resolved_capabilities.code_lens
    end
    if has_codelens then
        vim.api.nvim_command [[autocmd BufEnter,CursorHold,InsertLeave <buffer> silent! lua vim.lsp.codelens.refresh()]]
    end
    -- vim.api.nvim_command [[autocmd CursorHoldI <buffer> silent! lua vim.lsp.buf.signature_help()]]
    -- vim.api.nvim_command [[autocmd CompleteDone <buffer> silent! lua vim.lsp.buf.signature_help()]]
    vim.api.nvim_command [[autocmd CursorHold <buffer> silent! lua vim.diagnostic.open_float(nil, { focusable = false })]]
    vim.api.nvim_command [[augroup END]]

    if vim.lsp.tagfunc then
        vim.cmd [[setl tagfunc=v:lua.vim.lsp.tagfunc]]
    end

    for _, group in ipairs(vim.fn.getcompletion("@lsp.type.comment", "highlight")) do
        vim.api.nvim_set_hl(0, group, {})
    end
end

local config = {
    on_attach = on_attach,
    handlers = { ['textDocument/signatureHelp'] = require'lsp_ext'.signature_help_callback }
}
local capabilities = nil
if pcall(require, 'cmp_nvim_lsp') then
    capabilities = require('cmp_nvim_lsp').default_capabilities()
end
if capabilities then
    config['capabilities'] = capabilities
end

local lspconfig = require'lspconfig'
lspconfig.util.default_config = vim.tbl_extend(
    'force',
    lspconfig.util.default_config,
    config
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Disable virtual_text
        virtual_text = false,
        -- update_in_insert = true,
    }
)

for _, server in ipairs(vim.g.use_nvim_lsp_configs or {}) do
    local config = {}
    if server == 'clangd' then
        config['filetypes'] = {
            'c', 'cpp', 'objc', 'objcpp', 'cuda', 'arduino'
        }
        config['cmd'] = {
            'clangd',
            '--compile-commands-dir=build',
            '--background-index',
            '--all-scopes-completion'
        }
    end
    require'lspconfig'[server].setup(config)
end

EOF
    endfunction

    call InitNvimLsp()

    let g:statusline_extra_left_1 = ['LspStatus', []]

    function! LspStatus() abort
        let sl = ''
        if luaeval('not vim.tbl_isempty(vim.lsp.buf_get_clients(0))')
            let sl .= 'E'
            if has('nvim-0.6.0')
                let sl .= luaeval('#vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })')
            else
                let sl .= luaeval('vim.lsp.diagnostic.get_count(0, [[Error]])')
            endif
            let sl .= ' W'
            if has('nvim-0.6.0')
                let sl .= luaeval('#vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })')
            else
                let sl .= luaeval('vim.lsp.diagnostic.get_count(0, [[Warning]])')
            endif
            let progress = luaeval('require"lsp_ext".lsp_progress()')
            if !empty(progress)
                let sl .= ' '
                let sl .= progress
            endif
        endif
        return sl
    endfunction

    " function! ShowDocumentation() abort
    "     if (index(['vim', 'help'], &filetype) >= 0)
    "         try
    "             execute 'h' expand('<cword>')
    "         catch
    "             echohl ErrorMsg | echo v:exception | echohl None
    "         endtry
    "         return
    "     endif
    "     lua vim.lsp.buf.hover()
    " endfunction

    nnoremap <silent> <leader><cr><cr> <cmd>LspInfo<cr>
    " nnoremap <silent> <leader><cr><cr> <cmd>lua print(vim.inspect(vim.lsp.buf_get_clients()))<cr>
    nnoremap <silent> <leader><cr>a <cmd>lua vim.lsp.buf.code_action()<cr>
    nnoremap <silent> <leader><cr>A <cmd>lua vim.lsp.buf.range_code_action()<cr>
    xnoremap <silent> <leader><cr>A <cmd>lua vim.lsp.buf.range_code_action()<cr>
    nnoremap <silent> <leader><cr>q <cmd>lua vim.lsp.buf.code_action({ only = 'quickfix' })<cr>
    nnoremap <silent> <leader><cr>Q <cmd>lua vim.lsp.buf.range_code_action({ only = 'quickfix' })<cr>
    xnoremap <silent> <leader><cr>Q <cmd>lua vim.lsp.buf.range_code_action({ only = 'quickfix' })<cr>
    nnoremap <silent> <leader><cr>f <cmd>lua (vim.lsp.buf.format or vim.lsp.buf.formatting)()<cr>
    nnoremap <silent> <leader><cr>F <cmd>lua (vim.lsp.buf.format or vim.lsp.buf.range_formatting)()<cr>
    xnoremap <silent> <leader><cr>F <cmd>lua (vim.lsp.buf.format or vim.lsp.buf.range_formatting)()<cr>
    nnoremap <silent> <leader><cr>r <cmd>lua vim.lsp.buf.rename()<cr>
    nnoremap <silent> <leader><cr>e <cmd>lua vim.diagnostic.enable()<cr>
    nnoremap <silent> <leader><cr>E <cmd>lua vim.diagnostic.disable()<cr>
    nnoremap <silent> [G <cmd>lua vim.diagnostic.open_float(nil, { scope = "line" })<cr>
    nnoremap <silent> ]G <cmd>lua vim.diagnostic.open_float(nil, { scope = "line" })<cr>
    nnoremap <silent> [E <cmd>lua vim.diagnostic.open_float(nil, { scope = "line", severity = vim.diagnostic.severity.ERROR })<cr>
    nnoremap <silent> ]E <cmd>lua vim.diagnostic.open_float(nil, { scope = "line", severity = vim.diagnostic.severity.ERROR })<cr>
    nnoremap <silent> [W <cmd>lua vim.diagnostic.open_float(nil, { scope = "line", severity = vim.diagnostic.severity.WARN })<cr>
    nnoremap <silent> ]W <cmd>lua vim.diagnostic.open_float(nil, { scope = "line", severity = vim.diagnostic.severity.WARN })<cr>
    nnoremap <silent> <leader><cr>d <cmd>lua vim.diagnostic.setloclist()<cr>
    nnoremap <silent> <leader><cr>D <cmd>lua vim.diagnostic.setqflist()<cr>
    nnoremap <silent> <leader><cr>w <cmd>lua vim.lsp.buf.add_workspace_folder()<cr>
    nnoremap <silent> <leader><cr>W <cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>
    nnoremap <silent> <leader><cr><c-w> <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>

    " command! -nargs=0 LspStop lua vim.lsp.stop_client(vim.lsp.get_active_clients())
    command! -nargs=0 LspDebug lua vim.lsp.set_log_level('debug')
    command! -nargs=0 LspOpenLog lua vim.cmd('e '..vim.fn.fnameescape(vim.lsp.get_log_path()))

    augroup MySymbolsOutline
        autocmd!
        autocmd BufEnter * if (winnr('$') == 1 && &filetype ==# 'Outline') | q | endif
        autocmd FileType Outline setl nowrap
    augroup END

    nnoremap <silent> <leader>tt <cmd>SymbolsOutline<cr>
endif

if get(g:, 'use_coc', 0)
    if (has('patch-8.0.1453') || has('nvim-0.3.1')) && executable('npm')
        let g:statusline_extra_left_1 = ['coc#status', []]
        let g:statusline_extra_left_2 = ['CocCurrentFunction']

        function! CocCurrentFunction(...) abort
            return get(b:, 'coc_current_function', '')
        endfunction

        let g:coc_config_home = expand('~/.vim_runtime/config')

        if exists('+tagfunc')
            set tagfunc=MyCocTagFunc

            function! MyCocTagFunc(pattern, flags, info) abort
                silent! let result = CocTagFunc(a:pattern, a:flags, a:info)
                if !empty(result)
                    return result
                endif
                return v:null
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
            au ColorScheme * hi! link CocHintSign SpecialKey
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
                call coc#config('suggest.keepCompleteopt', v:false)
                " let g:refresh_pum = ['coc#refresh', []]
            else
                let s:coc_suggest_auto_trigger = 'none'
                call coc#config('suggest.keepCompleteopt', v:true)
                " unlet g:refresh_pum
            endif
            call coc#config('suggest.autoTrigger', s:coc_suggest_auto_trigger)
        endfunction

        let g:refresh_pum = ['coc#refresh', []]
        inoremap <silent> <expr> <c-l> pumvisible() ? '<c-l>' : coc#refresh()
        inoremap <silent> <expr> <c-space> pumvisible() ? '<c-e>' : coc#refresh()
        inoremap <silent> <expr> <nul> pumvisible() ? '<c-e>' : coc#refresh()

        " Use tab for trigger completion with characters ahead and navigate
        " NOTE: There's always complete item selected by default, you may want to enable
        " no select by `"suggest.noselect": true` in your configuration file
        " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
        " other plugin before putting this into your config
        inoremap <silent><expr> <TAB>
              \ coc#pum#visible() ? coc#pum#next(1) :
              \ CheckBackspace() ? "\<Tab>" :
              \ coc#refresh()
        inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

        " Make <CR> to accept selected completion item or notify coc.nvim to format
        " <C-g>u breaks current undo, please make your own choice
        inoremap <silent><expr> <CR> coc#pum#visible() && coc#pum#has_item_selected() ? coc#pum#confirm()
                                      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

        function! CheckBackspace() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        nmap <silent> [g <Plug>(coc-diagnostic-prev)
        nmap <silent> ]g <Plug>(coc-diagnostic-next)
        nmap <silent> [e <Plug>(coc-diagnostic-prev-error)
        nmap <silent> ]e <Plug>(coc-diagnostic-next-error)
        nmap <silent> <expr> gl CocHasProvider('declaration') ? '<Plug>(coc-declaration)' : 'gl'
        nmap <silent> <expr> gd CocHasProvider('definition') ? '<Plug>(coc-definition)' : 'gd'
        nmap <silent> <expr> gy CocHasProvider('typeDefinition') ? '<Plug>(coc-type-definition)' : 'gy'
        nmap <silent> <expr> gm CocHasProvider('implementation') ? '<Plug>(coc-implementation)' : 'gm'
        nmap <silent> <expr> gr CocHasProvider('reference') ? '<Plug>(coc-references)' : 'gr'
        nnoremap <expr> <silent> gL CocHasProvider('declaration') ? ':call CocActionAsync("jumpDeclaration", v:false)<cr>' : 'gL'
        nnoremap <expr> <silent> gD CocHasProvider('definition') ? ':call CocActionAsync("jumpDefinition", v:false)<cr>' : 'gD'
        nnoremap <expr> <silent> gY CocHasProvider('typeDefinition') ? ':call CocActionAsync("jumpTypeDefinition", v:false)<cr>' : 'gY'
        nnoremap <expr> <silent> gM CocHasProvider('implementation') ? ':call CocActionAsync("jumpImplementatiIn", v:false)<cr>' : 'gM'
        nnoremap <expr> <silent> gR CocHasProvider('reference') ? ':call CocActionAsync("jumpReferences", v:false)<cr>' : 'gR'
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
        nnoremap <expr> <silent> go CocHasProvider('documentSymbol') ? ':CocList -A outline<cr>' : (v:count == 0 ? '' : v:count) . 'go'
        nnoremap <expr> <silent> gO CocHasProvider('workspaceSymbols') ? ':CocList -I -A symbols<cr>' : 'gO'
        nnoremap <silent> ]<cr> :CocNext<cr>
        nnoremap <silent> [<cr> :CocPrev<cr>
        nnoremap <silent> ]<bs> :CocLast<cr>
        nnoremap <silent> ]<c-h> :CocLast<cr>
        nnoremap <silent> [<bs> :CocFirst<cr>
        nnoremap <silent> [<c-h> :CocFirst<cr>
        if has('nvim-0.4.0') || has('patch-8.2.0750')
            nnoremap <silent> <expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : '<c-f>'
            nnoremap <silent> <expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : '<c-b>'
            inoremap <silent> <expr> <c-f> coc#float#has_scroll() ? '<c-r>=coc#float#scroll(1)<cr>' : '<c-f>'
            inoremap <silent> <expr> <c-b> coc#float#has_scroll() ? '<c-r>=coc#float#scroll(0)<cr>' : '<c-b>'
            vnoremap <silent> <expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : '<c-f>'
            vnoremap <silent> <expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : '<c-b>'
        endif

        nnoremap <expr> <silent> gh CocHasProvider('hover') ? ':call CocActionAsync("doHover")<cr>' : 'gh'
        nnoremap <expr> <silent> gH CocHasProvider('hover') ? ':call CocActionAsync("definitionHover")<cr>' : 'gH'
        inoremap <expr> <silent> <c-g>h CocHasProvider('signature') ? '<cmd>call CocActionAsync("showSignatureHelp")<cr>' : '<c-g>h'
        inoremap <expr> <silent> <c-g><c-h> CocHasProvider('signature') ? '<cmd>call CocActionAsync("showSignatureHelp")<cr>' : '<c-g><c-h>'
        nnoremap <expr> <silent> <s-leftmouse> '<leftmouse>' . (CocHasProvider('hover') ? ':call CocActionAsync("doHover")<cr>' : '<s-leftmouse>')
        nnoremap <expr> <silent> <s-rightmouse> '<leftmouse>' . (CocHasProvider('signature') ? ':call CocActionAsync("showSignatureHelp")<cr>' : '<s-rightmouse>')

        " function! ShowDocumentation(count) abort
        "     if (index(['vim', 'help'], &filetype) >= 0)
        "         try
        "             execute 'h' expand('<cword>')
        "         catch
        "             echohl ErrorMsg | echo v:exception | echohl None
        "         endtry
        "         return
        "     endif
        "     if CocHasProvider('hover')
        "         call CocActionAsync('doHover')
        "     else
        "         exe 'normal!' (a:count > 0 ? a:count : '') 'K'
        "     endif
        " endfunction

        command! -nargs=0 CocInstallBasic call CocInstallBasic()

        function! CocInstallBasic() abort
            let exts = [
                        \ 'coc-marketplace',
                        \ 'coc-json',
                        \ 'coc-vimlsp',
                        \ 'coc-neosnippet'
                        \ ]
            execute 'CocInstall' join(exts)
        endfunction
    endif
endif

if get(g:, 'use_vim_lsp', 0)
    if has('timers') && has('lambda')
        let statusline_extra_left_1 = ['VimLspDiagnostics']
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
        let g:lsp_virtual_text_enabled = 0
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
                setl tagfunc=lsp#tagfunc
            endif

            nmap <silent> <buffer> gL <Plug>(lsp-peek-declaration)
            nmap <silent> <buffer> gl <Plug>(lsp-declaration)
            nmap <silent> <buffer> gD <Plug>(lsp-peek-definition)
            nmap <silent> <buffer> gd <Plug>(lsp-definition)
            nmap <silent> <buffer> gI <Plug>(lsp-peek-implementation)
            nmap <silent> <buffer> gi <Plug>(lsp-implementation)
            nmap <silent> <buffer> gY <Plug>(lsp-peek-type-definition)
            nmap <silent> <buffer> gy <Plug>(lsp-type-definition)
            nmap <silent> <buffer> g<c-y> <Plug>(lsp-type-hierarchy)
            nmap <silent> <buffer> gr <Plug>(lsp-references)
            nmap <silent> <buffer> go <Plug>(lsp-document-symbol)
            nmap <silent> <buffer> gO <Plug>(lsp-workspace-symbol)

            nmap <silent> <buffer> gh <Plug>(lsp-hover)
            nmap <silent> <buffer> gH <Plug>(lsp-signature-help)
            imap <silent> <buffer> <c-g>h <c-o><Plug>(lsp-signature-help)
            imap <silent> <buffer> <c-g><c-h> <c-o><Plug>(lsp-signature-help)
            nmap <silent> <buffer> <s-leftmouse> <Plug>(lsp-hover)
            nmap <silent> <buffer> <s-rightmouse> <Plug>(lsp-signature-help)

            nmap <silent> ]g <Plug>(lsp-next-diagnostic)
            nmap <silent> [g <Plug>(lsp-previous-diagnostic)
            nmap <silent> ]e <Plug>(lsp-next-error)
            nmap <silent> [e <Plug>(lsp-previous-error)
            nmap <silent> ]w <Plug>(lsp-next-warning)
            nmap <silent> [w <Plug>(lsp-previous-warning)
            nmap <silent> ]r <Plug>(lsp-next-reference)
            nmap <silent> [r <Plug>(lsp-previous-reference)
        endfunction

        " if exists('+tagfunc')
        "     function! MyTagFunc(pattern, flags, info) abort
        "         let result = lsp#tagfunc(a:pattern, a:flags, a:info)
        "         if !empty(result)
        "             return result
        "         endif
        "         if !empty(tagfiles())
        "             return taglist(a:pattern, a:info.buf_ffname)
        "         endif
        "         return []
        "     endfunc
        " endif

        " function! ShowDocumentation() abort
        "     if (index(['vim', 'help'], &filetype) >= 0)
        "         try
        "             execute 'h' expand('<cword>')
        "         catch
        "             echohl ErrorMsg | echo v:exception | echohl None
        "         endtry
        "         return
        "     endif
        "     LspHover
        " endfunction
    endif
endif

if get(g:, 'use_asyncomplete', 0)
    if has('timers')
        nnoremap <silent> <leader>oa :ToggleAsyncompleteAutoComplete<cr>
        command! -nargs=0 ToggleAsyncompleteAutoComplete call ToggleAsyncompleteAutoComplete()

        function! ToggleAsyncompleteAutoComplete() abort
            let g:asyncomplete_auto_popup = !get(g:, 'asyncomplete_auto_popup', 1)
            if g:asyncomplete_auto_popup
                set completeopt+=noinsert,noselect
                " let g:refresh_pum = ['asyncomplete#force_refresh', []]
            else
                set completeopt-=noinsert,noselect
                " unlet g:refresh_pum
            endif
        endfunction

        augroup MyAsyncomplete
            autocmd!
            au CmdwinEnter [:>] let b:asyncomplete_enable = 0
        augroup END

        set completeopt+=noinsert,noselect
        let g:refresh_pum = ['asyncomplete#force_refresh', []]
        let g:asyncomplete_auto_completeopt = 0
        inoremap <silent> <expr> <c-l> pumvisible() ? '<c-l>' : asyncomplete#force_refresh()
        inoremap <silent> <expr> <c-space> pumvisible() ? '<c-e>' : asyncomplete#force_refresh()
        inoremap <silent> <expr> <nul> pumvisible() ? '<c-e>' : asyncomplete#force_refresh()

        if exists('*complete_info')
            inoremap <silent> <expr> <cr> complete_info()['selected'] != '-1' ? asyncomplete#close_popup() : '<c-g>u' . ICR()
        else
            inoremap <silent> <expr> <cr> pumvisible() ? asyncomplete#close_popup() : '<c-g>u' . ICR()
        endif
        inoremap <silent> <expr> <c-y> pumvisible() ? asyncomplete#close_popup() : '<c-y>'
        inoremap <silent> <expr> <c-e> pumvisible() ? asyncomplete#cancel_popup() : '<c-e>'

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

if get(g:, 'use_copilot', 0) && has('nvim-0.6.0')
    inoremap <silent> <script> <expr> <m-l> copilot#Accept('')
    inoremap <silent> <script> <expr> <m-o> copilot#AcceptWord('')
    imap <silent> <m-h> <Plug>(copilot-dismiss)
    imap <silent> <expr> <m-j> empty(copilot#GetDisplayedSuggestion().text) ? '<Plug>(copilot-suggest)' : '<Plug>(copilot-next)'
    imap <silent> <m-k> <Plug>(copilot-previous)
    let g:copilot_no_tab_map = v:true
    " if get(g:, 'use_nvim_cmp', 0) && has('nvim-0.7.0')
    "     augroup MyCopilot
    "         autocmd!
    "         au BufEnter * let b:copilot_enabled = v:false
    "         au VimEnter * lua vim.defer_fn(function() require('copilot').setup() end, 100)
    "     augroup END
    " endif

    let g:copilot_filetypes = {
                \ '*': v:true,
                \ }
endif

" if (v:version >= 800 || has('nvim-0.3.0')) && has('python3')
"     nnoremap <leader>dd :Denite<space>
"     nnoremap <silent> <leader>dp :Denite -resume<cr>
"     nnoremap <silent> <leader>dD :Denite directory_rec<cr>
"     nnoremap <silent> <leader>db :Denite buffer<cr>
"     nnoremap <silent> <leader>dc :Denite command<cr>
"     nnoremap <silent> <leader>dC :Denite colorscheme<cr>
"     nnoremap <silent> <leader>d: :Denite command_history<cr>
"     nnoremap <silent> <leader>de :Denite change<cr>
"     nnoremap <silent> <leader>dh :Denite file/old<cr>
"     nnoremap <silent> <leader>dH :Denite help<cr>
"     nnoremap <silent> <leader>dv :Denite file<cr>
"     nnoremap <silent> <leader>dV :Denite file/point<cr>
"     nnoremap <silent> <leader>df :Denite file/rec<cr>
"     nnoremap <silent> <leader>dF :Denite file/rec/git<cr>
"     nnoremap <silent> <leader>dt :Denite outline<cr>
"     nnoremap <silent> <leader>dT :Denite tag<cr>
"     nnoremap <silent> <leader>dy :Denite filetype<cr>
"     nnoremap <silent> <leader>dg :Denite grep<cr>
"     nnoremap <silent> <leader>dG :Denite grep/git<cr>
"     nnoremap <silent> <leader>dr :Denite grep/rg<cr>
"     nnoremap <silent> <leader>da :Denite grep/ag<cr>
"     nnoremap <silent> <leader>dA :Denite grep/ack<cr>
"     nnoremap <silent> <leader>dj :Denite jump<cr>
"     nnoremap <silent> <leader>dl :Denite line<cr>
"     nnoremap <silent> <leader>dL :Denite line/external<cr>
"     nnoremap <silent> <leader>dm :Denite mark<cr>
"     nnoremap <silent> <leader>dM :Denite menu<cr>
"     nnoremap <leader>do :Denite output:
"     nnoremap <silent> <leader>d" :Denite register<cr>
"     nnoremap <silent> <leader>d@ :Denite register<cr>
"     nnoremap <silent> <leader>ds :Denite source<cr>
"     nnoremap <silent> <leader>dS :Denite spell<cr>
"     nnoremap <silent> <leader>dn :Denite neosnippet<cr>

"     nnoremap <leader>DD :Denite directory_rec:
"     nnoremap <leader>Db :Denite buffer:
"     nnoremap <leader>Dv :Denite file:
"     nnoremap <leader>Df :Denite file/rec:
"     nnoremap <leader>DF :Denite file/rec/git:
"     nnoremap <leader>Dt :Denite outline:
"     nnoremap <leader>Dg :Denite grep:
"     nnoremap <leader>DG :Denite grep/git:
"     nnoremap <leader>Dr :Denite grep/rg:
"     nnoremap <leader>Da :Denite grep/ag:
"     nnoremap <leader>DA :Denite grep/ack:
"     nnoremap <leader>Dl :Denite line:
"     nnoremap <leader>DM :Denite menu:
"     nnoremap <leader>DS :Denite spell:

"     augroup MyDenite
"         autocmd!
"         autocmd FileType denite call s:denite_my_settings()
"         autocmd FileType denite-filter call s:denite_filter_my_settings()
"         " autocmd User denite-preview setlocal nonumber norelativenumber
"         " autocmd FileType denite-filter let b:coc_suggest_disable = 1
"         " autocmd FileType denite-filter autocmd BufEnter <buffer> let g:asyncomplete_auto_popup = 0
"         " autocmd FileType denite-filter autocmd BufLeave <buffer> let g:asyncomplete_auto_popup = 1
"     augroup END

"     function! s:denite_my_settings() abort
"         nnoremap <silent> <nowait><silent><buffer><expr> <c-\>
"                     \ denite#do_map('choose_action')
"         nnoremap <silent> <nowait><silent><buffer><expr> <cr>
"                     \ denite#do_map('do_action')
"         nnoremap <silent> <nowait><silent><buffer><expr> a
"                     \ denite#do_map('do_action', 'append')
"         nnoremap <silent> <nowait><silent><buffer><expr> r
"                     \ denite#do_map('do_action', 'replace')
"         nnoremap <silent> <nowait><silent><buffer><expr> y
"                     \ denite#do_map('do_action', 'yank')
"         nnoremap <silent> <nowait><silent><buffer><expr> d
"                     \ denite#do_map('do_action', 'delete')
"         nnoremap <silent> <nowait><silent><buffer><expr> p
"                     \ denite#do_map('do_action', 'preview')
"         nnoremap <silent> <nowait><silent><buffer><expr> h
"                     \ denite#do_map('do_action', 'highlight')
"         nnoremap <silent> <nowait><silent><buffer><expr> t
"                     \ denite#do_map('do_action', 'tabopen')
"         nnoremap <silent> <nowait><silent><buffer><expr> s
"                     \ denite#do_map('do_action', 'split')
"         nnoremap <silent> <nowait><silent><buffer><expr> v
"                     \ denite#do_map('do_action', 'vsplit')
"         nnoremap <silent> <nowait><silent><buffer><expr> R
"                     \ denite#do_map('do_action', 'redraw')
"         nnoremap <silent> <nowait><silent><buffer><expr> '
"                     \ denite#do_map('do_action', 'quick_move')
"         nnoremap <silent> <nowait><silent><buffer><expr> c
"                     \ denite#do_map('do_action', 'cd')
"         nnoremap <silent> <nowait><silent><buffer><expr> e
"                     \ denite#do_map('do_action', 'edit')
"         nnoremap <silent> <nowait><silent><buffer><expr> E
"                     \ denite#do_map('do_action', 'echo')
"         nnoremap <silent> <nowait><silent><buffer><expr> o
"                     \ denite#do_map('do_action', 'open')
"         nnoremap <silent> <nowait><silent><buffer><expr> q
"                     \ denite#do_map('quit')
"         nnoremap <silent> <nowait><silent><buffer><expr> <esc>
"                     \ denite#do_map('quit')
"         nnoremap <silent> <nowait><silent><buffer><expr> <c-c>
"                     \ denite#do_map('quit')
"         nnoremap <silent> <nowait><silent><buffer><expr> i
"                     \ denite#do_map('open_filter_buffer')
"         nnoremap <silent> <nowait><silent><buffer><expr> /
"                     \ denite#do_map('open_filter_buffer')
"         nnoremap <silent> <nowait><silent><buffer><expr> <space>
"                     \ denite#do_map('toggle_select')
"         nnoremap <silent> <nowait><silent><buffer><expr> <tab>
"                     \ denite#do_map('toggle_select') . 'j'
"         nnoremap <silent> <nowait><silent><buffer><expr> <s-tab>
"                     \ denite#do_map('toggle_select') . 'k'
"     endfunction

"     function! s:denite_filter_my_settings() abort
"         imap <silent> <nowait><silent><buffer> <c-y>
"                     \ <Plug>(denite_filter_update)
"         imap <silent> <nowait><silent><buffer> <esc>
"                     \ <Plug>(denite_filter_quit)
"         imap <silent> <nowait><silent><buffer> <c-o>
"                     \ <Plug>(denite_filter_quit)
"         inoremap <silent> <nowait><silent><buffer><expr> <c-c>
"                     \ denite#do_map('quit')
"         inoremap <silent> <nowait><silent><buffer><expr> <cr>
"                     \ denite#do_map('do_action')
"         inoremap <silent> <nowait><silent><buffer><expr> <c-\>
"                     \ denite#do_map('choose_action')
"         inoremap <silent> <nowait><silent><buffer><expr> <c-space>
"                     \ denite#do_map('toggle_select')
"         inoremap <silent> <nowait><silent><buffer><expr> <tab>
"                     \ denite#do_map('toggle_select') .
"                     \ "\<esc>\<c-w>p:call cursor(line('.')+1,0)\<cr>\<c-w>pA"
"         inoremap <silent> <nowait><silent><buffer><expr> <s-tab>
"                     \ denite#do_map('toggle_select') .
"                     \ "\<esc>\<c-w>p:call cursor(line('.')-1,0)\<cr>\<c-w>pA"
"         inoremap <silent> <nowait><silent><buffer> <c-n>
"                     \ <esc><c-w>p:call cursor(line('.')+1,0)<cr><c-w>pA
"         inoremap <silent> <nowait><silent><buffer> <c-p>
"                     \ <esc><c-w>p:call cursor(line('.')-1,0)<cr><c-w>pA
"         inoremap <silent> <nowait><silent><buffer> <down>
"                     \ <esc><c-w>p:call cursor(line('.')+1,0)<cr><c-w>pA
"         inoremap <silent> <nowait><silent><buffer> <up>
"                     \ <esc><c-w>p:call cursor(line('.')-1,0)<cr><c-w>pA
"     endfunction

"     try
"         call denite#custom#option('_', {
"                     \ 'prompt': '❯',
"                     \ 'auto_resume': 1,
"                     \ 'smartcase': 1,
"                     \ 'max_dynamic_update_candidates': 100000,
"                     \ 'filter_updatetime': 500,
"                     \ 'empty': 0
"                     \ })
"         if has('nvim-0.4.0')
"             call denite#custom#option('_', {
"                         \ 'split': 'floating'
"                         \ })
"             " call denite#custom#option('_', {
"             "             \ 'split': 'floating',
"             "             \ 'vertical_preview': 1,
"             "             \ 'floating_preview': 1
"             "             \ })
"         endif

"         call denite#custom#source('grep',
"                     \ 'converters', ['converter/abbr_word'])
"         call denite#custom#source('file/rec',
"                     \ 'matchers', ['matcher/hide_hidden_files', 'matcher/project_files', 'matcher/fuzzy'])

"         call denite#custom#alias('source', 'file/rec/git', 'file/rec')
"         call denite#custom#var('file/rec/git', 'command',
"                     \ ['git', 'ls-files', '-c', '--exclude-standard'])

"         call denite#custom#alias('source', 'file/rec/py', 'file/rec')
"         call denite#custom#var('file/rec/py', 'command',
"                     \ ['scantree.py', '--path', ':directory'])

"         call denite#custom#alias('source', 'grep/git', 'grep')
"         call denite#custom#var('grep/git', 'command',
"                     \ ['git', 'grep'])
"         call denite#custom#var('grep/git', 'default_opts',
"                     \ ['-I', '--line-number', '--color=never'])

"         call denite#custom#alias('source', 'grep/rg', 'grep')
"         call denite#custom#var('grep/rg', {
"                     \ 'command': ['rg'],
"                     \ 'default_opts': ['-i', '--vimgrep', '--no-heading'],
"                     \ 'recursive_opts': [],
"                     \ 'pattern_opt': ['--regexp'],
"                     \ 'separator': ['--'],
"                     \ 'final_opts': [],
"                     \ })

"         call denite#custom#alias('source', 'grep/ag', 'grep')
"         call denite#custom#var('grep/ag', {
"                     \ 'command': ['ag'],
"                     \ 'default_opts': ['-i', '--vimgrep'],
"                     \ 'recursive_opts': [],
"                     \ 'pattern_opt': [],
"                     \ 'separator': ['--'],
"                     \ 'final_opts': [],
"                     \ })

"         call denite#custom#alias('source', 'grep/ack', 'grep')
"         call denite#custom#var('grep/ack', {
"                     \ 'command': ['ack'],
"                     \ 'default_opts': [
"                     \   '--ackrc', $HOME.'/.ackrc', '-H', '-i',
"                     \   '--nopager', '--nocolor', '--nogroup', '--column'
"                     \ ],
"                     \ 'recursive_opts': [],
"                     \ 'pattern_opt': ['--match'],
"                     \ 'separator': ['--'],
"                     \ 'final_opts': [],
"                     \ })
"     catch
"     endtry
" endif

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

inoremap <silent> <expr> <c-x><c-\> NeoSnippetExpand()
inoremap <silent> <expr> <c-x><bslash> NeoSnippetExpand()
imap <silent> <c-\> <Plug>(neosnippet_expand_or_jump)
smap <silent> <c-\> <Plug>(neosnippet_expand_or_jump)
xmap <silent> <c-\> <Plug>(neosnippet_expand_target)
imap <silent> <c-]> <Plug>(neosnippet_jump_or_expand)
smap <silent> <c-]> <Plug>(neosnippet_jump_or_expand)
let g:neosnippet#snippets_directory = '~/.vim_snippets'
let g:neosnippet#expand_word_boundary = 1
let g:neosnippet#disable_runtime_snippets = {'_': 1}

nnoremap <silent> <leader>ne :NeoSnippetEdit<cr>
nnoremap <leader>nE :NeoSnippetEdit<space>

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
vmap <silent> <c-_> <Plug>Commentary
nmap <silent> <c-/> <Plug>CommentaryLine
vmap <silent> <c-/> <Plug>Commentary

nnoremap <leader>sv :%S/
xnoremap <leader>sv :S/
nnoremap <leader>qv :cdo .S/
nnoremap <leader>qV :cfdo %S/
nnoremap <leader>lv :ldo .S/
nnoremap <leader>lV :lfdo %S/

" let statusline_extra_right_0 = ['SleuthIndicator']
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
" let g:fzf_preview_window = ['up:50%', 'ctrl-/', 'ctrl-^']
let g:fzf_preview_window = ['right,50%,<80(up,40%)', 'ctrl-/', 'ctrl-^']

function! s:build_quickfix_list(lines) abort
    call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
    copen
    cc
endfunction

let g:fzf_action = {
            \ 'ctrl-q': function('s:build_quickfix_list'),
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }
let g:fzf_colors = {
            \ 'fg':      ['fg', 'Pmenu'],
            \ 'bg':      ['bg', 'Pmenu'],
            \ 'hl':      ['fg', 'Title'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'PmenuSel'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Title'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'VertSplit'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment']
            \ }
" if has('nvim-0.4.0') || has('patch-8.2.191')
"     let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
" endif
let g:fzf_layout = {'down': '40%'}
let g:fzf_history_dir = '~/.local/share/fzf-history'

imap <silent> <c-x>k <plug>(fzf-complete-word)
imap <silent> <c-x>p <plug>(fzf-complete-path)
imap <silent> <c-x>f <plug>(fzf-complete-file)
imap <silent> <c-x>F <plug>(fzf-complete-file-ag)
imap <silent> <c-x>l <plug>(fzf-complete-buffer-line)
imap <silent> <c-x>L <plug>(fzf-complete-line)
inoremap <silent> <expr> <c-x>g fzf#vim#complete(fzf#wrap({
            \ 'prefix': '^.*$',
            \ 'source': 'grep -n --color=always -r ^ .',
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

command! -nargs=* -bang FZFRG call RipgrepFzf(<q-args>, <bang>0)

function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, s:p(a:fullscreen, spec), a:fullscreen)
endfunction

command! -nargs=* -bang FZFAG call AgFzf(<q-args>, <bang>0)

function! AgFzf(query, fullscreen)
    let command_fmt = 'ag --column --numbers --noheading --color --smart-case -- "$([[ -z %s ]] && echo "^(?=.)" || echo %s)" || true'
    let initial_command = printf(command_fmt, shellescape(a:query), shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}', '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, s:p(a:fullscreen, spec), a:fullscreen)
endfunction

command! -nargs=* -bang FZFGREP call GrepFzf(<q-args>, <bang>0)

function! GrepFzf(query, fullscreen)
    let command_fmt = 'grep -I --line-number --color=always -r -- %s . || true'
    let initial_command = printf(command_fmt, shellescape(empty(a:query) ? '^' : a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command, '--delimiter=:', '--nth=3..']}
    call fzf#vim#grep(initial_command, 0, s:p(a:fullscreen, spec), a:fullscreen)
endfunction

command! -nargs=* -bang FZFGGREP call GGrepFzf(<q-args>, <bang>0)

function! GGrepFzf(query, fullscreen)
    let command_fmt = 'git grep -I --line-number --color=always -- %s || true'
    let initial_command = printf(command_fmt, shellescape(empty(a:query) ? '^' : a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': [
                \ '--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command, '--delimiter=:', '--nth=3..'
                \ ], 'dir': systemlist('git rev-parse --show-toplevel')[0]}
    call fzf#vim#grep(initial_command, 0, s:p(a:fullscreen, spec), a:fullscreen)
endfunction

function! s:p(bang, ...) abort
    let preview_args = get(g:, 'fzf_preview_window', ['right:%50', 'ctrl-/'])
    if empty(preview_args)
        return { 'options': ['--preview-window', 'hidden'] }
    endif

    " For backward-compatiblity
    if type(preview_args) == type('')
        let preview_args = [preview_args]
    endif
    return call('fzf#vim#with_preview', extend(copy(a:000), preview_args))
endfunction

nmap <silent> <a-m> <plug>(fzf-maps-n)
xmap <silent> <a-m> <plug>(fzf-maps-x)
omap <silent> <a-m> <plug>(fzf-maps-o)
imap <silent> <a-m> <plug>(fzf-maps-i)
nmap <silent> g<c-m> <plug>(fzf-maps-n)
xmap <silent> g<c-m> <plug>(fzf-maps-x)
omap <silent> g<c-m> <plug>(fzf-maps-o)
imap <silent> <c-g>m <plug>(fzf-maps-i)
imap <silent> <c-g><c-m> <plug>(fzf-maps-i)
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
nnoremap <silent> <leader>fA :FZFAG<cr>
nnoremap <silent> <leader>fr :FZFRg<cr>
nnoremap <silent> <leader>fR :FZFRG<cr>
nnoremap <silent> <leader>fl :FZFBLines<cr>
nnoremap <silent> <leader>fL :FZFLines<cr>
nnoremap <silent> <leader>ft :FZFBTags<cr>
nnoremap <silent> <leader>fT :FZFTags<cr>
nnoremap <silent> <leader>fm :FZFMarks<cr>
nnoremap <silent> <leader>fM :FZFMaps<cr>
nnoremap <silent> <leader>fw :FZFWindows<cr>
if executable('locate')
    nnoremap <leader>fe :FZFLocate<space>
endif
nnoremap <silent> <leader>fh :FZFHistory<cr>
nnoremap <silent> <leader>f/ :FZFHistory/<cr>
nnoremap <silent> <leader>f: :FZFHistory:<cr>
nnoremap <silent> <leader>fH :FZFHelptags<cr>
nnoremap <silent> <leader>fg :FZFGrep<cr>
nnoremap <silent> <leader>fG :FZFGREP<cr>
nnoremap <silent> <leader>fp :FZFGGrep<cr>
nnoremap <silent> <leader>fP :FZFGGREP<cr>
nnoremap <silent> <leader>fq :FZFQuickFix<cr>
nnoremap <silent> <leader>fQ :FZFLocList<cr>

nnoremap <leader>Ff :FZFFiles<space>
nnoremap <leader>FF :FZFGFiles<space>
nnoremap <leader>F? :FZFGFiles?<space>
nnoremap <leader>Fb :FZFBuffers<space>
nnoremap <leader>Fa :FZFAg<space>
nnoremap <leader>FA :FZFAG<space>
nnoremap <leader>Fr :FZFRg<space>
nnoremap <leader>FR :FZFRG<space>
nnoremap <leader>Fl :FZFBLines<space>
nnoremap <leader>FL :FZFLines<space>
nnoremap <leader>Ft :FZFBTags<space>
nnoremap <leader>FT :FZFTags<space>
nnoremap <leader>Fg :FZFGrep<space>
nnoremap <leader>FG :FZFGREP<space>
nnoremap <leader>Fp :FZFGGrep<space>
nnoremap <leader>FP :FZFGGREP<space>

if get(g:, 'use_nvim_lsp', 0) && has('nvim-0.5.0')
    function! InitLspFuzzy() abort
        try
            call fzf#exec()
        catch
            return
        endtry
lua << EOF
if pcall(require, 'lspfuzzy') then
    require'lspfuzzy'.setup {
        save_last = false,
        fzf_preview = {
            'right,50%,+{2}-/2,<80(up,40%,+{2}-/2)', 'ctrl-/', 'ctrl-^'
        },
    }
end
EOF
    endfunction

    augroup MyLspFuzzy
        autocmd!
        if v:vim_did_enter
            if exists('g:loaded_lspfuzzy') | call InitLspFuzzy() | endif
        else
            au VimEnter * if exists('g:loaded_lspfuzzy') | call InitLspFuzzy() | endif
        endif
    augroup END
endif

nnoremap <silent> <c-g> :Grepper<cr>
if !exists('g:grepper')
    let g:grepper = {}
endif
let g:grepper.prompt_mapping_tool = '<c-g>'

" This is 'lcd', not what I want.
let g:startify_change_to_dir = 0
" let g:startify_change_to_vcs_root = 1
" if has('nvim') || has('patch-8.1.1218')
"     let g:startify_change_cmd = 'tcd'
" else
"     let g:startify_change_cmd = 'cd'
" endif
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
                    \     'if empty(expand("%")) && empty(&l:buftype) && &l:modifiable && line("$") == 1 && empty(getline(1)) | ' .
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
                            \         'if empty(expand("%")) && empty(&l:buftype) && &l:modifiable && line("$") == 1 && empty(getline(1)) | ' .
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
" let g:undotree_WindowLayout = 4
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
nnoremap <silent> <leader>nn :NERDTreeToggleVCS<cr>
nnoremap <silent> <leader>nN :NERDTreeToggle<cr>
nnoremap <silent> <leader>nt :NERDTree<cr>
nnoremap <silent> <leader>nT :NERDTreeClose<cr>
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

if exists(':terminal')
    if executable('ranger')
        let g:NERDTreeHijackNetrw = 0
        " let g:ranger_replace_netrw = 1
        augroup ReplaceNetrwByRangerVim
            autocmd VimEnter * silent! autocmd! FileExplorer
            autocmd BufEnter * ++nested if isdirectory(expand("%")) | call OpenRangerOnVimLoadDir("%") | endif
        augroup END
    endif
    let g:ranger_map_keys = 0
    nnoremap <silent> <leader>rg :Ranger<cr>
    nnoremap <silent> <leader>rG :RangerCurrentDirectory<cr>
endif

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
nnoremap <silent> g<c-f> :Neoformat<cr>
xnoremap <silent> g<c-f> :Neoformat<cr>
nnoremap <silent> <a-f> :Neoformat<cr>
xnoremap <silent> <a-f> :Neoformat<cr>

" nmap <silent> <a-;> <Plug>(cosco-commaOrSemiColon)
" imap <silent> <a-;> <c-o><Plug>(cosco-commaOrSemiColon)
" nmap <silent> <a-,> <Plug>(cosco-commaOrSemiColon)
" imap <silent> <a-,> <c-o><Plug>(cosco-commaOrSemiColon)
" nmap <silent> <a-cr> <Plug>(cosco-commaOrSemiColon):put =nr2char(10)<cr>
" imap <silent> <a-cr> <c-o><Plug>(cosco-commaOrSemiColon)<c-o>o

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

" nnoremap <silent> <leader>Tn :TestNearest<CR>
" nnoremap <leader>TN :TestNearest<Space>
" nnoremap <silent> <leader>Tf :TestFile<CR>
" nnoremap <leader>TF :TestFile<Space>
" nnoremap <silent> <leader>Ts :TestSuite<CR>
" nnoremap <leader>TS :TestSuite<Space>
" nnoremap <silent> <leader>Tl :TestLast<CR>
" nnoremap <silent> <leader>Tv :TestVisit<CR>
" let test#strategy = 'asyncrun'

function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction

let g:statusline_extra_left_0 = ['GitStatus']
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_map_keys = 0
" let g:gitgutter_use_location_list = 1
" let g:gitgutter_sign_added = '█|'
" let g:gitgutter_sign_modified = '█⫶'
" let g:gitgutter_sign_removed = '█▁'
" let g:gitgutter_sign_removed_first_line = '█▔'
" let g:gitgutter_sign_modified_removed = "█▟"
let g:gitgutter_sign_priority = 1
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '◢'
let g:gitgutter_sign_removed_first_line = '◥'
let g:gitgutter_sign_modified_removed = '◢'
" let g:gitgutter_sign_added = "\u00a0┃"
" let g:gitgutter_sign_modified = "\u00a0┃"
" let g:gitgutter_sign_removed = "\u00a0◢"
" let g:gitgutter_sign_removed_first_line = "\u00a0◥"
" let g:gitgutter_sign_modified_removed = "\u00a0◢"
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
nnoremap <silent> <leader>hq :GitGutterQuickFix <bar> cw<cr>
nnoremap <silent> <leader>hf :GitGutterFold<cr>
if has('nvim-0.3.2')
    nnoremap <silent> <leader>hn <cmd>GitGutterLineNrHighlightsToggle<cr>
endif
nnoremap <silent> <leader>hq :GitGutterQuickFix<cr>

if v:version >= 720
    " let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 1
    let g:indent_guides_start_level = 2
endif

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
nnoremap <silent> <leader>er :EditorConfigReload<cr>
nnoremap <silent> <leader>ec :e <c-r>=GetVcsRoot()<cr>/.eidtorconfig<cr>
nnoremap <silent> <leader>eC :e %:p:h/.editorconfig<cr>
augroup MyEditorConfig
    autocmd!
    au FileType gitcommit let b:EditorConfig_disable = 1
augroup END

if exists(':terminal')
    if has('nvim-0.4.0') || has('patch-8.2.191')
        nmap <silent> <c-space> <Plug>(Multiterm)
        nmap <silent> <nul> <Plug>(Multiterm)
        tmap <silent> <c-space> <Plug>(Multiterm)
        tmap <silent> <nul> <Plug>(Multiterm)
        vmap <silent> <c-space> <Plug>(Multiterm)
        vmap <silent> <nul> <Plug>(Multiterm)
        " imap <silent> <c-space> <Plug>(Multiterm)
        " imap <silent> <nul> <Plug>(Multiterm)

        nmap <silent> <F12> <Plug>(Multiterm)
        tmap <silent> <F12> <Plug>(Multiterm)
        vmap <silent> <F12> <Plug>(Multiterm)
    elseif has('nvim') || has('patch-8.0.1593')
        let g:nuake_position = 'top'
        " let g:nuake_size = 0.2
        let g:nuake_per_tab = 1

        nnoremap <silent> <c-space> :Nuake<cr>
        nnoremap <silent> <nul> :Nuake<cr>
        if has('nvim')
            tnoremap <silent> <c-space> <cmd>Nuake<cr>
            tnoremap <silent> <nul> <cmd>Nuake<cr>
        else
            tnoremap <silent> <c-space> <c-w>:Nuake<cr>
            tnoremap <silent> <nul> <c-w>:Nuake<cr>
        endif
        vnoremap <silent> <c-space> :<c-u>Nuake<cr>
        vnoremap <silent> <nul> :<c-u>Nuake<cr>
        " inoremap <silent> <c-space> <c-o>:Nuake<cr>
        " inoremap <silent> <nul> <c-o>:Nuake<cr>

        nnoremap <silent> <F12> :Nuake<cr>
        if has('nvim')
            tnoremap <silent> <F12> <cmd>Nuake<cr>
        else
            tnoremap <silent> <F12> <c-w>:Nuake<cr>
        endif
        vnoremap <silent> <F12> :<c-u>Nuake<cr>
    endif
endif

" if has('nvim') || has('job') || has('channel')
"     if executable('python3')
"         let g:codi#interpreters = {
"                     \     'python': {
"                     \         'bin': 'python3'
"                     \     }
"                     \ }
"     endif
"     nnoremap <silent> <leader>co :Codi!!<cr>
"     nnoremap <leader>cO :Codi!!<space>
" endif

" if has('nvim')
"     if luaeval('pcall(require, "hologram")')
" lua << EOF
"         require('hologram').setup{
"             auto_display = true -- WIP automatic markdown image display, may be prone to breaking
"         }
" EOF
"     end
" end

" if has('nvim-0.7.0')
"     if luaeval('pcall(require, "notify")')
" lua << EOF
" local notify = require('notify')
" vim.notify = notify

" print = function(...)
"     local print_safe_args = {}
"     local _ = { ... }
"     for i = 1, #_ do
"         table.insert(print_safe_args, tostring(_[i]))
"     end
"     notify(table.concat(print_safe_args, ' '), "info")
" end

" notify.setup({
"     render = 'compact',
"     -- top_down = false,
" })
" EOF
"     endif
" endif

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

nnoremap <leader>cx :XtermColorTable<cr>

nmap <silent> <leader>cc <Plug>Colorizer
xmap <silent> <leader>cc <Plug>Colorizer

if has('nvim')
    if luaeval('pcall(require, "perfanno")')
lua << EOF
require("perfanno").setup()
EOF
    endif
endif
