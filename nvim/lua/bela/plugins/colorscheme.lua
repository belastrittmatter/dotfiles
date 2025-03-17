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

			local function set_transparency()
				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
				vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
				vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
				vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
				vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
				vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

				vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
				vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none" })
				vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
				vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
				vim.api.nvim_set_hl(0, "LspInfoBorder", { bg = "none" })
				vim.api.nvim_set_hl(0, "CmpNormal", { bg = "none" })
			end

			local function configure_themes()
				-- Tokyonight
				require("tokyonight").setup({
					style = "night",
					transparent = true,
					styles = {
						sidebars = "transparent",
						floats = "transparent",
					},
				})

				-- Catppuccin
				require("catppuccin").setup({
					flavor = "mocha",
					transparent_background = true,
					integrations = {
						gitsigns = true,
						nvimtree = true,
						treesitter = true,
					},
				})

				-- Rose Pine
				require("rose-pine").setup({
					disable_background = true,
					disable_float_background = true,
				})

				-- Ayu
				require("ayu").setup({
					mirage = false,
					overrides = {
						Normal = { bg = "none" },
						NormalFloat = { bg = "none" },
						SignColumn = { bg = "none" },
						LineNr = { fg = "#808080" },
					},
				})

				require("gruvbox").setup({
					transparent_mode = true,
				})
			end

			configure_themes()

			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "*",
				callback = set_transparency,
			})

			set_transparency()

			vim.api.nvim_set_keymap("n", "<leader>ts", ":Themery<CR>", { noremap = true, silent = true })
		end,
	},
}
