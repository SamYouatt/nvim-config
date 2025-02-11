return {
	"ibhagwan/fzf-lua",
	enabled = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local fzf = require "fzf-lua"

		fzf.setup({})

		vim.keymap.set("n", "<C-p>", fzf.files, {})
		vim.keymap.set("n", "<leader>ps", function()
			fzf.grep({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>pg", fzf.live_grep, {})
		vim.keymap.set("n", "<leader>ds", fzf.lsp_document_symbols)
	end
}
