return {
	"dmtrKovalenko/fff.nvim",
	build = function()
		require("fff.download").download_or_build_binary()
	end,
	lazy = false,
	opts = {
		base_path = vim.fn.getcwd(),
		git = {
			status_text_color = true,
		},
		layout = {
			anchor = "bottom",
			height = 0.4,
			prompt_position = "bottom",
			width = 1,
		},
	},
	keys = {
		{ "<C-p>",      function() require("fff").find_files() end,                                    desc = "Git files" },
		{ "<leader>fm", function() require("fff").find_files({ query = "git:modified " }) end,         desc = "Modified files" },
		{ "<leader>fw", function() require("fff").live_grep({ query = vim.fn.expand("<cword>") }) end, desc = "Find word" },
		{ "<leader>pg", function() require("fff").live_grep({ query = "!dist/ " }) end,                desc = "Live grep" },
		{ "<leader>pf", function() require("fff").find_files() end,                                    desc = "Find files" },
		{ "gO",         vim.lsp.buf.document_symbol,                                                   desc = "LSP outline" },
	},
}
