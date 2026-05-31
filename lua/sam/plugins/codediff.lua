return {
	"esmuellert/codediff.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	cmd = "CodeDiff",
	keys = {
		{ "<leader>vd", "<cmd>CodeDiff<cr>", desc = "Toggle CodeDiff" },
	},
}
