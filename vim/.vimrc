set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'majutsushi/tagbar'
Plugin 'vim-php/tagbar-phpctags.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'shawncplus/phpcomplete.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='molokai'

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_multiple_files = 'i'

"mustache
let g:mustache_abbreviations = 1

"tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

"NerdTree
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

"Syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list=1

" disable complete preview
set completeopt-=preview

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']


" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

syntax on
colorscheme kruby

set cursorline

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

"Highlight trailing spaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

"Persistent undo
set undofile
set undodir=~/tmp/vim-undo

" Add keyboard shortcuts
let mapleader = ","

nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <Leader>t :CtrlPTag<CR>
nnoremap <Leader>bd :bufdo bdelete<CR>
nnoremap <c-b> :CtrlPBuffer<CR>

map <F7> mzgg=G`z<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nmap <c-n> :bnext<CR>

set secure
