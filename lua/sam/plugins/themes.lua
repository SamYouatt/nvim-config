return {
	-- { "rose-pine/neovim", name = "rose-pine" },
	{ "projekt0n/github-nvim-theme" },
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "night",
				light_style = "day",
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					sidebars = "normal",
					floats = "normal",
				},
			})
		end,
	},
	-- { "catppuccin/nvim", name = "catppuccin" },
	--    { dir = "/Users/samyouatt/Developer/catppuccin", name = "catppuccin" },
	-- { "mcchrish/zenbones.nvim", dependencies = { "rktjmp/lush.nvim" } },
	-- { "shaunsingh/nord.nvim" },
	-- { "navarasu/onedark.nvim" },
	-- { "rmehri01/onenord.nvim" },
    -- { "ellisonleao/gruvbox.nvim", opts = {} },
    -- { "samyouatt/fleety.nvim", name = "fleety", opts = {} },
    { dir = "/Users/samyouatt/Developer/fleety", name="fleety", opts = {} },
}
