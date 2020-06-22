
" Sett variabler for ulike platformer, kan være nyttig
let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

let g:config_root = expand('<sfile>:p:h')

let g:config_files = [ 'options.vim',
            \ 'autocommands.vim',
            \ 'mappings.vim',
            \ 'plugins.vim',
            \ ]

for s:fname in g:config_files
    execute 'source ' . g:config_root . '/' . s:fname
endfor
