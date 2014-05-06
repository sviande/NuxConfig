set number

set expandtab
set shiftwidth=2
set softtabstop=2

set nocompatible              " be iMproved
filetype off                  " required!
set t_Co=256
syntax on
colorscheme slate

" Add keyboard shortcuts
let mapleader = ","

nnoremap <Leader>rtw :%s/\s\+$//e<CR>

nnoremap <C-t>     :tabnew<CR>
map <Esc>[27;5;9~ :tabnext<cr>
map <Esc>[27;6;9~ :tabprevious<cr>
map <F7> mzgg=G`z<CR>

" Airline
set laststatus=2
let g:airline_theme='laederon'
let g:airline_powerline_fonts=1

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 0

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
