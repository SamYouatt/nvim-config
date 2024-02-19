return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = {
					"stylua",
				},
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
			},
		})

		vim.keymap.set("n", "<space>cf", function()
			conform.format({ async = true, lsp_fallback = true })
		end)
	end,
}
