set nocompatible              " be iMproved
filetype off                  " required!

call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'shawncplus/phpcomplete.vim'
Plug 'jamessan/vim-gnupg'
Plug 'kurayama/systemd-vim-syntax'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/csv.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'diepm/vim-rest-console'
Plug 'w0rp/ale'
Plug 'avakhov/vim-yaml'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'dpelle/vim-LanguageTool'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()            " required

" Language spell
au BufRead *.txt setlocal spell spelllang=fr
let g:languagetool_jar="/usr/share/java/languagetool/languagetool-commandline.jar"

set encoding=utf-8

" Airline
set laststatus=2

"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"ctrlp
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_multiple_files = 'i'

"tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

"NerdTree
nmap <F2> :Vexplore<CR>

"Ale
let g:ale_sign_error='XX'
let g:ale_sign_warning='>>'
let g:ale_sign_column_always=1

" disable complete preview
set completeopt-=preview

" csv
let g:csv_no_conceal = 1

"go
let g:go_fmt_autosave = 0

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

syntax on
set background=dark
let base16colorspace=256
colorscheme base16-dracula

set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
set list

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

set wildmenu
set wildmode=longest:full,full

set lazyredraw
set ttyfast

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
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
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
nnoremap <Leader>n :ALENext<CR>

map <F7> mzgg=G`z<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nmap <c-n> :bnext<CR>

vnoremap // y/<C-R>"<CR>

com! FormatJSON %!python -m json.tool

set secure
