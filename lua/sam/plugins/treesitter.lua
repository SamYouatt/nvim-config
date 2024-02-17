return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "typescript", "rust",
                "c_sharp", "sql", "json", "toml", "markdown" },

            sync_install = true,
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
