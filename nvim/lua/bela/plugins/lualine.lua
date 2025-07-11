return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- Lazy pending updates count

		local colors = {
			blue = "#65D1FF",
			green = "#3EFFDC",
			violet = "#FF61EF",
			yellow = "#FFDA7B",
			red = "#FF4A4A",
			fg = "#c3ccdc",
			bg = "#112638", -- Dark background
			semi_transparent_bg = nil, -- Transparent
			inactive_bg = "#22273b", -- More subtle background for inactive
		}

		local function make_theme(bg_color)
			return {
				a = { bg = bg_color, fg = colors.bg, gui = "bold" },
				b = { bg = colors.semi_transparent_bg, fg = colors.fg },
				c = { bg = colors.semi_transparent_bg, fg = colors.fg },
			}
		end

		local my_lualine_theme = {
			normal = make_theme(colors.blue),
			insert = make_theme(colors.green),
			visual = make_theme(colors.violet),
			command = make_theme(colors.yellow),
			replace = make_theme(colors.red),
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.fg, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.fg },
				c = { bg = colors.inactive_bg, fg = colors.fg },
			},
		}

		lualine.setup({
			options = { theme = "solarized_light", disabled_filetypes = { "NvimTree" } },
			sections = {
				lualine_b = { "diagnostics" },
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					"encoding",
					"fileformat",
					"filetype",
				},
			},
		})
	end,
}
