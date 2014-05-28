set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/syntastic'
Plugin 'groenewege/vim-less'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'

call vundle#end()            " required
filetype plugin indent on    " required

" Airline
set laststatus=2
let g:airline_powerline_fonts=1

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

"mustache
let g:mustache_abbreviations = 1

set exrc
set number
set relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
set scrolloff=15
set tw=0
set t_Co=256

syntax on
colorscheme koehler

" Add keyboard shortcuts
let mapleader = ","

nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <c-b> :CtrlPBuffer<CR>

map <F7> mzgg=G`z<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>

"Tab
nnoremap tt  :tabnew<CR>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

set secure
