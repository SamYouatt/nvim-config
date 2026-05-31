-- test
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
						vim.cmd.normal({ "]c", bang = true })
					else
						gitsigns.nav_hunk("next")
					end
				end, { buffer = bufnr, desc = "Next git hunk" })

				vim.keymap.set("n", "[c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[c", bang = true })
					else
						gitsigns.nav_hunk("prev")
					end
				end, { buffer = bufnr, desc = "Previous git hunk" })
			end,
		},
	},
	"sindrets/diffview.nvim",
	{ "j-hui/fidget.nvim",                  opts = {} },
	{ "brenoprata10/nvim-highlight-colors", opts = {} },
	"sindrets/diffview.nvim",
}
