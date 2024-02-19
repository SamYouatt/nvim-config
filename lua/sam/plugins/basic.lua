-- All plugins which don't require any additional setup live in here
return {
    "tpope/vim-vinegar",

    -- Colourschemes
    { "rose-pine/neovim",           name = "rose-pine" },
    { "projekt0n/github-nvim-theme" },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "night",
                light_style = "day",
                styles = {
                    comments = { italic = true },
                    keywords = { italic = true},
                    sidebars = "normal",
                    floats = "normal",
                },
            })
        end
    },
}
