call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'

Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-surround'
Plug 'chriskempson/base16-vim'

call plug#end()            " required
