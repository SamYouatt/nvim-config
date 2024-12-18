vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-c>", '"+y')
vim.keymap.set("v", "<C-c>", '"+y')

-- like paste but won't replace buffer with what was deleted
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<nop>")

-- Quick fix navigation
vim.keymap.set("n", "]q", ":cn<CR>")
vim.keymap.set("n", "[q", ":cp<CR>")
vim.keymap.set("n", "<leader>cx", ":cclose<CR>")

-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist) -- opens the quickfix list with all the diagnostics in the buffer

-- better window management
vim.keymap.set("n", "<C-Left>", "<c-w><c-h>")
vim.keymap.set("n", "<C-Right>", "<c-w><c-l>")
vim.keymap.set("n", "<C-Down>", "<c-w><c-j>")
vim.keymap.set("n", "<C-Up>", "<c-w><c-k>")
