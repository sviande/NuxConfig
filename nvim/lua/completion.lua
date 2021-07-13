vim.o.completeopt="menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"

require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

