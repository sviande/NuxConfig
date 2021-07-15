vim.o.completeopt="menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.api.nvim_set_var('completion_trigger_keyword_length', 3)

vim.cmd[[
autocmd BufEnter * lua require'completion'.on_attach()
]]
