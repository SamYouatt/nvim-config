return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = {
					"stylua",
				},
				javascript = { "eslint_d", "prettier" },
				typescript = { "eslint_d", "prettier" },
				javascriptreact = { "eslint_d", "prettier" },
				typescriptreact = { "eslint_d", "prettier" },
			},
            log_level = vim.log.levels.TRACE,
		})

		vim.keymap.set("n", "<space>cf", function()
			conform.format({ async = true, lsp_fallback = false })
		end)
	end,
}
