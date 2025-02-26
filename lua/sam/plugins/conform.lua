return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require "conform"

		conform.setup({
			formatters_by_ft = {
				lua = {
					"stylua",
				},
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				html = { "prettier" },
				htmldjango = { "prettier" },
			},
			log_level = vim.log.levels.TRACE,
		})

		vim.keymap.set("n", "<leader>f", function()
			conform.format({ async = true, lsp_fallback = true })
		end)
	end,
}
