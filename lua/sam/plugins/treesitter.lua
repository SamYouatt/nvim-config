local parsers = {
    "c",
    "c_sharp",
    "css",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "query",
    "rust",
    "sql",
    "toml",
    "typescript",
    "vim",
    "vimdoc",
}

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
        {
            "nvim-treesitter/nvim-treesitter-textobjects",
            branch = "main",
        },
    },
    config = function()
        local treesitter = require("nvim-treesitter")

        treesitter.setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
        })
        treesitter.install(parsers)

        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })

        require("nvim-treesitter-textobjects").setup({
            select = {
                lookahead = true,
            },
        })

        local select = require("nvim-treesitter-textobjects.select")
        for lhs, query in pairs({
            aa = "@parameter.outer",
            ia = "@parameter.inner",
            af = "@function.outer",
            ["if"] = "@function.inner",
            ac = "@class.outer",
            ic = "@class.inner",
        }) do
            vim.keymap.set({ "x", "o" }, lhs, function()
                select.select_textobject(query, "textobjects")
            end)
        end
    end,
}
