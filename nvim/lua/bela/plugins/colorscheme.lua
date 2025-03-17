return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			})
			-- require("catppuccin").setup({
			-- 	flavor = "mocha",
			-- 	transparent_background = true,
			-- 	default_integrations = true,
			-- 	integrations = {
			-- 		gitsigns = true,
			-- 		nvimtree = true,
			-- 		treesitter = true,
			-- 	},
			-- })

			-- Transparent Background
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

			-- For NvimTree
			vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
