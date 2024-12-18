return {
	{
		"echasnovski/mini.nvim",
		version = false,

		config = function()
			local cursorword = require "mini.cursorword"
			cursorword.setup { delay = 1000 }
		end,

		-- Make mini-icons function as a replacement for all nvim-web-devicons uses
		-- source: https://www.reddit.com/r/neovim/comments/1duf3w7/miniicons_general_icon_provider_several/
		specs = {
			{ "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
		},
		init = function()
			package.preload["nvim-web-devicons"] = function()
				require("mini.icons").mock_nvim_web_devicons()
				return package.loaded["nvim-web-devicons"]
			end
		end,
	},
}
