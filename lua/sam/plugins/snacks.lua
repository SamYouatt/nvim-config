return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		input = { enabled = true },
		picker = { enabled = true },
	},
	keys = {
		{ "<C-p>",      function() Snacks.picker.git_files({ untracked = true, submodules = true }) end, desc = "Git files" },
		{ "<leader>pg", function() Snacks.picker.grep({ exclude = { "dist/" } }) end,                    desc = "Live grep" },
		{ "<leader>pf", function() Snacks.picker.files({ cwd = vim.fn.getcwd() }) end,                   desc = "Find files" },
		{ "gO",         function() Snacks.picker.lsp_symbols() end,                                      desc = "LSP outline" },
	},
}
