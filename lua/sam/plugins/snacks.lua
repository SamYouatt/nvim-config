return {
	"folke/snacks.nvim",
	enabled = true,
	priority = 1000,
	lazy = false,
	opts = {
		input = { enabled = true },
		picker = { enabled = true },
	},
	keys = {
		{ "<leader><space>", function() Snacks.picker.smart() end,                                            desc = "Smart Find Files" },
		{ "<C-p>",           function() Snacks.picker.git_files({ untracked = true, submodules = true }) end, desc = "Git files" },
		{ "<leader>pg",      function() Snacks.picker.grep() end,                                             desc = "Live grep" },
		{ "<leader>ds",      function() Snacks.picker.lsp_symbols() end,                                      desc = "Document symbols" },
	},
}
