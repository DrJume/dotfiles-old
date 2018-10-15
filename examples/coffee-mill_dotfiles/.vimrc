call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

colorscheme onedark
syntax on
set termguicolors

set mouse=a

set ignorecase
set hlsearch

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

nmap ## :confirm quit<CR>
