set nocompatible
set encoding=utf-8
set nu
set ruler
set backspace=indent,eol,start " backspace over everything in insert mode
syntax on

let mapleader="-"

""""""" Plugins """""""""""""""""""""""""""""""""""""""
"Replace plugged with bundle in order to re-use vundle location
call plug#begin('~/.vim/bundle') 
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot.git'
call plug#end()

""""""" Mapping """"""""""""""""""""""""""""""""""""""""
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
inoremap <S-Tab> <C-d>

" Syntax and colors
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

