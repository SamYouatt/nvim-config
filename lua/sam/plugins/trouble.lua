return {
	"folke/trouble.nvim",
	config = function()
		local trouble = require("trouble")

		trouble.setup({
			icons = false,
			indent_lines = false,
		})

		vim.keymap.set("n", "<leader>tw", function()
			trouble.toggle("workspace_diagnostics")
		end)
		vim.keymap.set("n", "<leader>td", function()
			trouble.toggle("document_diagnostics")
		end)
	end,
}
