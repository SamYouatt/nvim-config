return {
    "jmederosalvarado/roslyn.nvim",
    config = function()
	require("roslyn").setup({
	    dotnet = "dotnet",
	    on_attach = function() end,
	    capabilities = function() end,
	})
    end,
}
