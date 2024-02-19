return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = {
					"stylua",
				},
				javascript = { "eslint_d", "prettierd" },
				typescript = { "eslint_d", "prettierd" },
				javascriptreact = { "eslint_d", "prettierd" },
				typescriptreact = { "eslint_d", "prettierd" },
			},
		})

		vim.keymap.set("n", "<space>cf", function()
			conform.format({ async = true, lsp_fallback = true })
		end)
	end,
}
