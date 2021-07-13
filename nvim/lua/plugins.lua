vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
use 'wbthomason/packer.nvim'
use 'tpope/vim-fugitive'
use 'junegunn/fzf'
use 'junegunn/fzf.vim'
use 'w0rp/ale'
use {
  'fatih/vim-go',
  cmd = ':GoUpdateBinaries',
}
use 'tpope/vim-surround'
use 'chriskempson/base16-vim'
use 'neovim/nvim-lspconfig'
use 'nvim-lua/completion-nvim'

end)
