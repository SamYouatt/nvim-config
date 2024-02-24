return {
	{ "rose-pine/neovim", name = "rose-pine" },
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
	{ "catppuccin/nvim", name = "catppuccin" },
}
