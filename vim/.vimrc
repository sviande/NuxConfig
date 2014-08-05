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
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'majutsushi/tagbar'
Plugin 'vim-php/tagbar-phpctags.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

" Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='understated'

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

"mustache
let g:mustache_abbreviations = 1

"tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

"NerdTree
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

syntax on
colorscheme peachpuff

set cursorline
hi CursorLine cterm=NONE ctermbg=237

set hidden "hide non save buffer

set exrc "source vimrc project

set showcmd
set number
set relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
set scrolloff=15
set tw=0
set t_Co=256
set encoding=utf-8

"ESC
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase

"Persistent undo
set undofile
set undodir=~/tmp/vim-undo

" Add keyboard shortcuts
let mapleader = ","

nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <Leader>bd :bufdo bdelete<CR>
nnoremap <c-b> :CtrlPBuffer<CR>

map <F7> mzgg=G`z<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set secure
