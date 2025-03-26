vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Auto-centre next / search result in the view
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Ctrl C to yank to system clipboard
vim.keymap.set("n", "<C-c>", '"+y')
vim.keymap.set("v", "<C-c>", '"+y')

-- like paste but won't replace buffer with what was deleted
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<nop>")

-- Quick fix navigation
vim.keymap.set("n", "<C-Down>", ":cn<CR>")
vim.keymap.set("n", "<C-Up>", ":cp<CR>")
vim.keymap.set("n", "<C-n>", ":cn<CR>")
vim.keymap.set("n", "<C-p>", ":cp<CR>")

vim.keymap.set("n", "<leader>cx", ":cclose<CR>")

-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist) -- opens the quickfix list with all the diagnostics in the buffer

-- better window management
vim.keymap.set("n", "<C-Left>", "<c-w><c-h>")
vim.keymap.set("n", "<C-Right>", "<c-w><c-l>")
