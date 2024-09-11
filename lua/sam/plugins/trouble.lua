return {
	"folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local trouble = require("trouble")

		trouble.setup({
			indent_lines = false,
		})

		vim.keymap.set("n", "<leader>tw", "<cmd>Trouble diagnostics toggle<cr>")
		vim.keymap.set("n", "<leader>tb", "<cmd>Trouble diagnostics filter.buf=0<cr>")
	end,
}
