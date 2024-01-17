local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Install plugins here

    -- Editor essentials
    'tpope/vim-fugitive',

    -- Color scheme
    { 'rose-pine/neovim', name = 'rose-pine', lazy = true },
})

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
