set nocompatible
set encoding=utf-8
set nu
set backspace=indent,eol,start " backspace over everything in insert mode
syntax on
filetype off

let mapleader="-"

""""""" Blugins """""""""""""""""""""""""""""""""""""""
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

""""""" Mapping """"""""""""""""""""""""""""""""""""""
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
inoremap <S-Tab> <C-d>

" Syntax and colors
syntax enable
set background=dark
colorscheme solarized
