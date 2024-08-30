return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- "nvim-tree/nvim-web-devicons",

		-- native c implementation of fzf for faster sorting
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		},
	},
	config = function()
		require("telescope").setup({
			defaults = {
				-- file_ignore_patterns = { "app_head.js", "/dist", "package-lock.json" },
				-- preview = {
				-- 	treesitter = false,
				-- },
			},
			extensions = {
				fzf = {
					fuzzy = true,
					-- requires telescope-fzf-native.nvim to be built
					override_generic_sorter = true,
					override_filter_sorter = true,
					case_mode = "smart_case",
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
	end,
}
