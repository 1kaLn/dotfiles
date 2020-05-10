" kaLn's init.vim
"
" Plugs
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
