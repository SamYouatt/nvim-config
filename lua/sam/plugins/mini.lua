return {
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			local cursorword = require "mini.cursorword"
			cursorword.setup { delay = 1000 }
		end
	},
}
