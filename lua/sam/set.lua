vim.opt.nu = true
vim.opt.relativenumber = true

vim.o.termguicolors = true

-- highlight current line number in sidebar but don't highlight whole row
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- already in status line
vim.opt.showmode = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.inccommand = 'split'

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "
