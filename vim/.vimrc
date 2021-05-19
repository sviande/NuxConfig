set nocompatible              " be iMproved
filetype off                  " required!

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
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
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'w0rp/ale'
Plug 'avakhov/vim-yaml'
Plug 'othree/html5.vim'
Plug 'dpelle/vim-LanguageTool'
Plug 'leafgarland/typescript-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'
Plug 'bumaociyuan/vim-swift'
Plug 'tpope/vim-surround'
Plug 'maximbaz/lightline-ale'

Plug 'maxmellon/vim-jsx-pretty'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()            " required

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

runtime macros/matchit.vim

let g:lsp_document_code_action_signs_enabled = 0

let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx' : 1,
    \}

" Language spell
au BufRead *.txt setlocal spell spelllang=fr
let g:languagetool_jar="/usr/share/java/languagetool/languagetool-commandline.jar"

"LightLine
set laststatus=2
" Lightline
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ 'active': {
\   'left': [['mode', 'paste', 'spell'], ['fileencoding', 'relativepath', 'modified']],
\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_checking', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component_expand': {
\   'linter_checking': 'lightline#ale#checking',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\   'linter_ok': 'lightline#ale#ok',
\ },
\ 'component_type': {
\   'linter_checking': 'left',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error',
\   'linter_ok': 'left',
\ },
\ }

let g:lightline#ale#indicator_checking = "⟳ "
let g:lightline#ale#indicator_warnings = "⚠ "
let g:lightline#ale#indicator_errors = "☠ "
let g:lightline#ale#indicator_ok = "☑ "

"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"Gigutter
let g:gitgutter_sign_added = '●'
let g:gitgutter_sign_modified = '●'
let g:gitgutter_sign_removed = '●'
let g:gitgutter_sign_modified_removed = '●'

"Ale
let g:ale_sign_error="☠"
let g:ale_sign_warning="⚠"
let g:ale_sign_column_always=1
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
let g:ale_echo_msg_format = '%severity%-%linter%: %s '

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

"fzf
let g:fzf_layout = {}
let g:fzf_preview_window = []

" disable complete preview
set completeopt-=preview

" csv
let g:csv_no_conceal = 1

syntax on
set background=dark

execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
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
nnoremap <Leader>bd :bufdo bdelete<CR>
nnoremap <Leader>n :ALENext<CR>

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>t :Tags<CR>

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
