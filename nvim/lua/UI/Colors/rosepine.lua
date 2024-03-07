-- vim.opt.statusline = " %f %m %= %l:%c ♥ "

require("rose-pine").setup({
	highlight_groups = {
		StatusLine = { fg = "love", bg = "love", blend = 10 },
		StatusLineNC = { fg = "subtle", bg = "surface" },
		-- Telescope
		TelescopeBorder = { fg = "highlight_high", bg = "none" },
		TelescopeNormal = { bg = "none" },
		TelescopePromptNormal = { bg = "base" },
		TelescopeResultsNormal = { fg = "subtle", bg = "none" },
		TelescopeSelection = { fg = "text", bg = "base" },
		TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
	},
})
