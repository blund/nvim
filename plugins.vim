
" Installer plug automagisk på alle platformer
let g:VIM_PLUG_PATH = expand(g:config_root . '/autoload/plug.vim')
if executable('curl')
    if empty(glob(g:VIM_PLUG_PATH))
        echomsg 'Installing Vim-plug on your system'
        silent execute '!curl -fLo ' . g:VIM_PLUG_PATH . ' --create-dirs '
            \ . 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

        augroup plug_init
            autocmd!
            autocmd VimEnter * PlugInstall --sync | quit |source $MYVIMRC
        augroup END
    endif
else
    echoerr 'You have to install curl to install vim-plug, or install '
            \ . 'vim-plug by yourself.'
    finish
endif

" Set up directory to install the plugins based on whether you are installing
" neovim system wide or for personal use.
let g:PLUGIN_HOME=expand(stdpath('data') . '/plugged')

call plug#begin(PLUGIN_HOME)
"Plug 'junegunn/goyo.vim'
Plug 'lambdalisue/fern.vim'
" Plug 'jreybert/vimagit'
" Plug 'wincent/command-t'
" Plug 'hattya/vcvars.vim'
"Plug 'bling/vim-airline'
call plug#end()
