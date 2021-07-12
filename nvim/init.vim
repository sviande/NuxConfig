call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'

Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-surround'
Plug 'chriskempson/base16-vim'

call plug#end()            " required

syntax on
set background=dark

set termguicolors
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
set list

set hidden "hide non save buffer

set exrc "source vimrc project
set showcmd
set expandtab
set shiftwidth=2
set softtabstop=2
set scrolloff=15
set tw=0

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

nnoremap <Leader>tw :%s/\s\+$//e<CR>
nnoremap <Leader>bd :bufdo bdelete<CR>
nnoremap <Leader>n :ALENext<CR>

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>te :tabedit<CR>
nnoremap <Leader>tp :tabprev<CR>

nnoremap <Leader>r :LspReferences<CR>

nnoremap <Leader>a :Rg<Space>

nmap <F2> :Vexplore<CR>

map <F7> mzgg=G`z<CR>

noremap <F4> :set hlsearch! hlsearch?<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

vnoremap // y/<C-R>"<CR>

com! FormatJSON %!python -m json.tool

set secure
