local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

return {
    "jmederosalvarado/roslyn.nvim",
    config = function()
	require("roslyn").setup({
	    dotnet = "dotnet",
	    on_attach = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
	    end,
	    capabilities = capabilities,
	})
    end,
}
