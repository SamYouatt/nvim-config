return {
  "nvim-java/nvim-java",
  enabled = false,
  config = function()
	require('java').setup()
	require('lspconfig').jdtls.setup({})
  end
}
