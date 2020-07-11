" kaLn's init.vim
"
" Plugs
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'neomake/neomake'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" Sets
"
set number
set clipboard=unnamed
set mouse=a
set tabstop=4
set shiftwidth=4
set noexpandtab
color dracula

" Airline
"
let g:airline_theme='dracula'

" Deoplete
" 
let g:deoplete#enable_at_startup=1

" Neomake
"
call neomake#configure#automake('w')

