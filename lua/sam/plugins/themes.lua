return {
	{
		"projekt0n/github-nvim-theme",
		config = function()
			require("github-theme").setup({
				options = {
					dim_inactive = true,
					darken = {
						floats = true,
					},
				},
			})
		end,
	},
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
	{ "catppuccin/nvim",                         name = "catppuccin" },
	{ dir = "/Users/samyouatt/Developer/fleety", name = "fleety",    opts = {} },
}
