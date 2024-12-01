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
					styles = {
						comments = 'italic',
					},
				},
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "moon",
				light_style = "day",
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					sidebars = "normal",
					floats = "normal",
				},
				-- Just can't get the light mode to not look shit
				-- on_colors = function(colors)
				-- 	if vim.o.background == "dark" then
				-- 		colors.bg = "#000000" -- Black background for "night"
				-- 	else
				-- 		colors.bg = "#FFFFFF" -- White background for "day"
				-- 	end
				-- end,
			})
		end,
	},
	{ "rose-pine/neovim",                        name = "rose-pine", },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			undercurl = true,
			dim_inactive = { enabled = true },
			color_overrides = {
				mocha = {
					base = "#101019",
					mantle = "#0a0a10",
					crust = "#040406",
				},
			},
			integrations = {
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
			},
		}
	},
	{ dir = "/Users/samyouatt/Developer/fleety", name = "fleety",    opts = {} },
}
