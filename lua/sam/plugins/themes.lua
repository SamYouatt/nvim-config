return {
	-- { dir = "/Users/samyouatt/Developer/fleety", name = "fleety",    opts = {} },
	{ "navarasu/onedark.nvim" },
	{ "rose-pine/neovim",     name = "rose-pine", },
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
				}
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			style = "moon",
			light_style = "day",
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				sidebars = "normal",
				floats = "dark",
			},
			dim_inactive = "true",
			on_colors = function(colors)
				-- colors.bg = "#191B27"
			end,
		}
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			undercurl = true,
			dim_inactive = { enabled = true },
			color_overrides = {
				mocha = {
					base = "#101019",
					mantle = "#0c0c13",
					crust = "#08080d",
				},
				latte = {
					base = "#fcfcfd",
					mantle = "#f6f6f9",
					crust = "#f0f0f5",
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
}
