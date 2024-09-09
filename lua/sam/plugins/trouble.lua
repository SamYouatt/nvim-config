return {
	"folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local trouble = require("trouble")

		trouble.setup({
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
