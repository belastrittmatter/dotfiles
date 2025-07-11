return {
	"xiyaowong/transparent.nvim",
	lazy = false, -- do NOT lazy-load this plugin
	config = function()
		require("transparent").setup({
			-- default highlight groups (already included)
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			-- make floating panels and popular UI panels transparent
			extra_groups = {
				"NormalFloat", -- floating windows like Lazy, Mason, etc.
				"NvimTreeNormal", -- NvimTree
				"FloatBorder", -- borders of floating windows
				"Pmenu", -- popup menu
				"TelescopeNormal", -- Telescope
				"TelescopeBorder", -- Telescope border
				"TelescopePromptNormal",
				"TelescopePromptBorder",
				"TelescopeResultsNormal",
				"TelescopeResultsBorder",
				"WhichKeyFloat", -- WhichKey popup
				"NeoTreeNormal", -- neo-tree
				"NeoTreeNormalNC", -- neo-tree inactive
			},
			exclude_groups = {}, -- don't exclude anything
		})

		-- Clear dynamic prefix-based highlight groups (icons, bufferline, etc.)
		local clear_prefix = require("transparent").clear_prefix
		clear_prefix("BufferLine")
		clear_prefix("NeoTree")
		clear_prefix("lualine")

		-- Optional: Set this so themes can detect the transparency
		vim.g.transparent_enabled = true
	end,
}
