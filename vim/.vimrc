set nocompatible
set encoding=utf-8
set nu
set rnu
set ruler
set backspace=indent,eol,start " backspace over everything in insert mod
syntax on

let mapleader=","

""""""" Plugins """""""""""""""""""""""""""""""""""""""
"Replace plugged with bundle in order to re-use vundle location
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug 'nanotech/jellybeans.vim'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

""""""" Mapping """"""""""""""""""""""""""""""""""""""""
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
inoremap <S-Tab> <C-d>

"Syntax and colors
set background=dark
let g:solarized_termcolors=256
colorscheme jellybeans 
set expandtab

"Indent with 2 spaces
"set tabstop=2
set softtabstop=2
set shiftwidth=2

set autoindent
set smartindent

" Don't create swp files
set noswapfile

let NERDTreeShowHidden=1
" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Run prettier on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.ts,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync
