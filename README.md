# .vim_runtime
Yet a highly customized universal vim/neovim configuration.

Clone it into the home directory and run `install_ultimate.sh` or
`install_basic.sh` to install.

If `install_ultimate.sh` is used, execute the command `PlugInstall` after
launching Vim to finish installation.

## Enable LSP and Auto Completion

By default LSP and auto completion plugins are not enabled. Put `let g:use_coc = 1` or `let g:use_vim_lsp = 1` in `before.vim` by hitting `<space>e[` to enable those heavy plugins.
