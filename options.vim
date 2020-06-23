
" La , til å være "leader"-tast, som kan brukes til hurtigtaster
let mapleader = ","


"" UTSEENDE

syntax enable

" Sett font
"set gfn=Source\ Code\ Pro:h12

colorscheme slate

" Sett tallvisning på siden, relative tall med absolutt på peker
set rnu nu

set showbreak=↪

" Fremhev valgte linje med blå bakgrunn
set cursorline
hi CursorLine guibg=darkblue  " guifg=white

" Legg til en kolonne på venstre side
" set foldcolumn=1

" Marker fra linje 80 og ut
" set colorcolumn=80

" TODO se på
set scrolloff=3



"" NYTTE

filetype plugin on

set splitbelow splitright

" Få hjelp på menyer med "wildcards"
set wildmenu
set wildmode=list:full

" TODO se på dette.. men sikkert smart!
set ignorecase smartcase

" Skru av automatisk backup/swap-filer
set nobackup
set nowb
set noswapfile

" TODO noe usikker på dette..
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Tolk tab som 4 mellomrom
set tabstop=4
" En indent har 4 i bredde
set shiftwidth=4
" Antall kolonner for en tab er 4
set softtabstop=4
" TAB utvides til mellomrom
set expandtab


" Fiks kopiering i windows
set clipboard^=unnamed,unnamedplus
