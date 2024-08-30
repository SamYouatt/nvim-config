vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*.md",
    command = "setlocal wrap textwidth=80 linebreak",
})
