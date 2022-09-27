vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
use 'wbthomason/packer.nvim'
use 'tpope/vim-fugitive'
use 'junegunn/fzf'
use 'junegunn/fzf.vim'
use 'w0rp/ale'
use {
  'fatih/vim-go',
  ft = {'go'},
  cmd = ':GoUpdateBinaries'
}
use 'tpope/vim-surround'
use 'RRethy/nvim-base16'
use {
  'nvim-treesitter/nvim-treesitter',
  run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
}
use 'neovim/nvim-lspconfig'
use 'nvim-lua/completion-nvim'
use 'hoob3rt/lualine.nvim'

end)
