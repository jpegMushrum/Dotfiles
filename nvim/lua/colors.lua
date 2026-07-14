local M = {}

M.colors = {
	-- Backgrounds
	bg       = "#08100C",
	bg_1     = "#0E1713",
	bg_2     = "#16211C",
	bg_3     = "#223029",

	-- Green accents
	green    = "#4FA878",
	green_b  = "#67D89A",
	green_m  = "#368A61",

	-- Forest / UI variants
	forest   = "#234434",
	soft     = "#6E9C86",
	teal     = "#59AFA6",

	-- Text
	fg       = "#F2FFF7",
	fg_2     = "#D2E7DA",
	fg_3     = "#9AB7A6",

	-- Status
	success  = "#67D89A",
	warn     = "#D8C36A",
	error    = "#D97575",

	-- Blue / teal
	blue     = "#5FA8C9",
	blue_b   = "#84C8E8",
	blue_bg  = "#18313C",
	blue_m   = "#3E7A96",
	cyan     = "#73D1C8",

	-- Yellow / warm
	yellow   = "#D6C96B",
	yellow_b = "#F0DE7A",
	gold     = "#BDA84D",
	yellow_m = "#8A7A3A",
	amber    = "#E0B86B",

	-- Utility
	none     = "NONE",
}

function M.setup()
	local c = M.colors

	vim.cmd("highlight clear")
	vim.o.termguicolors = true
	vim.o.background = "dark"

	local hl = vim.api.nvim_set_hl

	-- Core UI
	hl(0, "Normal", { fg = c.fg, bg = c.bg_1, blend = 0 })
	hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_1 })
	hl(0, "FloatBorder", { fg = c.soft, bg = c.bg_1 })

	hl(0, "CursorLine", { bg = c.bg_2 })
	hl(0, "CursorColumn", { bg = c.bg_2 })
	hl(0, "LineNr", { fg = c.fg_3 })
	hl(0, "CursorLineNr", { fg = c.green_b, bold = true })

	hl(0, "Visual", { bg = c.forest })
	hl(0, "Search", { fg = c.bg, bg = c.yellow })
	hl(0, "IncSearch", { fg = c.bg, bg = c.green_b })

	hl(0, "VertSplit", { fg = c.bg_3 })
	hl(0, "WinSeparator", { fg = c.bg_3 })

	hl(0, "StatusLine", { fg = c.fg, bg = c.bg_2 })
	hl(0, "StatusLineNC", { fg = c.fg_3, bg = c.bg_1 })

	hl(0, "Pmenu", { fg = c.fg, bg = c.bg_1 })
	hl(0, "PmenuSel", { fg = c.bg, bg = c.green })
	hl(0, "PmenuSbar", { bg = c.bg_2 })
	hl(0, "PmenuThumb", { bg = c.soft })

	-- Syntax
	hl(0, "Comment", { fg = c.fg_3, italic = true })
	hl(0, "String", { fg = c.green_b })
	hl(0, "Number", { fg = c.amber })
	hl(0, "Boolean", { fg = c.yellow_b })

	hl(0, "Function", { fg = c.blue_b })
	hl(0, "Keyword", { fg = c.green })
	hl(0, "Type", { fg = c.teal })
	hl(0, "Identifier", { fg = c.fg })
	hl(0, "Constant", { fg = c.yellow })

	hl(0, "Operator", { fg = c.soft })

	-- Diagnostics
	hl(0, "DiagnosticError", { fg = c.error })
	hl(0, "DiagnosticWarn", { fg = c.warn })
	hl(0, "DiagnosticInfo", { fg = c.blue })
	hl(0, "DiagnosticHint", { fg = c.teal })

	-- Git
	hl(0, "DiffAdd", { bg = c.forest })
	hl(0, "DiffChange", { bg = c.blue_bg })
	hl(0, "DiffDelete", { bg = "#3A1F1F" })

	-- Telescope
	hl(0, "TelescopeNormal", { bg = c.bg_1 })
	hl(0, "TelescopeBorder", { fg = c.bg_3, bg = c.bg_1 })
	hl(0, "TelescopeSelection", { bg = c.bg_2 })
	hl(0, "TelescopeMatching", { fg = c.green_b })

	-- NvimTree / Neo-tree
	hl(0, "Directory", { fg = c.blue_b })

	-- LSP references
	hl(0, "LspReferenceText", { bg = c.bg_3 })
	hl(0, "LspReferenceRead", { bg = c.bg_3 })
	hl(0, "LspReferenceWrite", { bg = c.green_m })

	hl(0, "Conceal", { fg = c.cyan, bold = true })
	hl(0, "SpecialChar", { fg = c.blue_b })
end

return M
