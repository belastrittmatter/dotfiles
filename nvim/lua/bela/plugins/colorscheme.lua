return {
	{
		"zaldih/themery.nvim",
		dependencies = {
			"folke/tokyonight.nvim",
			"catppuccin/nvim",
			"Shatur/neovim-ayu",
			"rose-pine/neovim",
			"ellisonleao/gruvbox.nvim",
		},
		config = function()
			require("themery").setup({
				themes = {
					"tokyonight",
					"catppuccin",
					"ayu",
					"rose-pine",
					"gruvbox",
				},
				livePreview = true,
			})
			vim.api.nvim_set_keymap("n", "<leader>ts", ":Themery<CR>", { noremap = true, silent = true })
		end,
	},
}
