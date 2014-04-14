set number

set expandtab
set shiftwidth=2
set softtabstop=2

set nocompatible              " be iMproved
filetype off                  " required!
set t_Co=256
syntax on
colorscheme slate

" Airline 
set laststatus=2
let g:airline_theme='laederon'
let g:airline_powerline_fonts=1

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
