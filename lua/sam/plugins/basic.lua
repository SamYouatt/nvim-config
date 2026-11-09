-- All plugins which don't require any additional setup live in here
return {
	"tpope/vim-sleuth",
	"tpope/vim-fugitive",
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")

				vim.keymap.set("n", "]c", function()
					if vim.wo.diff then
						return "]c"
					end
					vim.schedule(function()
						gitsigns.nav_hunk("next")
					end)
					return "<Ignore>"
				end, { buffer = bufnr, expr = true, desc = "Next git hunk" })

				vim.keymap.set("n", "[c", function()
					if vim.wo.diff then
						return "[c"
					end
					vim.schedule(function()
						gitsigns.nav_hunk("prev")
					end)
					return "<Ignore>"
				end, { buffer = bufnr, expr = true, desc = "Previous git hunk" })
			end,
		},
	},
	{ "j-hui/fidget.nvim",                  opts = {} },
	{ "brenoprata10/nvim-highlight-colors", opts = {} },
}
