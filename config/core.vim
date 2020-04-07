if get(g:, 'installed_basic', 0)
    let s:configs = ['core', 'before', 'gui', 'setting', 'autocmd', 'mapping', 'extra', 'after']
else
    let s:configs = ['core', 'before', 'gui', 'setting', 'autocmd', 'mapping', 'plugin', 'after']
endif

let s:paths = []
for config_name in s:configs
     call add(s:paths, expand('<sfile>:h') . '/' . config_name . '.vim')
endfor

function! MapEdit(configs, paths) abort
    for idx in range(len(a:configs))
        let config_name = a:configs[idx]
        let path = a:paths[idx]
        if config_name ==# 'before'
            let key = '['
        elseif config_name ==# 'after'
            let key = ']'
        else
            let key = config_name[0]
        endif
        exe 'nnoremap <leader>e' . key . ' :e ' . fnameescape(path) . '<cr>'
    endfor
endfunction

function! AutoSource(paths) abort
    let name = expand('%:t:r')
    let camel_name = toupper(name[0]) . name[1:]
    exe 'augroup My' . camel_name
    augroup MyBasic
        autocmd!
        for path in a:paths
            let path = fnameescape(path)
            exe 'au ' . 'BufWritePost ' . path . ' source ' . path
        endfor
    augroup END
endfunction

function! Source(paths) abort
    let paths = copy(a:paths)
    call remove(paths, 0)
    for path in paths
        if filereadable(path)
            exe 'source ' . fnameescape(path)
        endif
    endfor
endfunction

call Source(s:paths)
call AutoSource(s:paths)
call MapEdit(s:configs, s:paths)
