return {
	"epwalsh/obsidian.nvim",
	tag = "v3.7.0",
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "digital garden",
				path = "~/Documents/digital-garden",
			},
		},
	},
}
