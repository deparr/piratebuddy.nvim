-- TODO
--	plugins????
--		fidget -- looks pretty dece already
--		lazy -- also llooks pretty good
--		fugitive -- prob not woth
--		true
local M = {}
local default_opts = {
	colors = {
		bg = "#111111",
		bg_light = "#1d2021", -- gruvbox dark bg0_h
		bg_light_2 = "#282828", -- gruvbox dark bg
		bg_dark = "#080808",
		white = "#ebdbb2",
		white_light = "#e0e0e0",
		white_light_2 = "#fafafa",
		gray = "#696969", -- tairiki gray,
		gray_light = "#9c9c9c", -- tairiki gray, lightened
		gray_dark = "#404040", -- tairiki gray, darkened
		red = "#cc6666", -- tomorrow night red
		red_light = "#d98c8c",
		red_light_2 = "#e6b3b3",
		red_dark = "#bf4040",
		pink = "#fef601",
		green = "#99cc99",
		yellow = "#f8fe7a",
		yellow_light = "#fbffae",
		yellow_dark = "#f5fe48",
		blue = "#81a2be", -- not sure about this blue -- tairiki blue,
		blue_light = "#a4bcd0",
		blue_dark = "#618aae",
		aqua = "#8ec07c", -- gruvbox dark aqua light,
		cyan = "#8abeb7",
		purple = "#8e6fbd",
		purple_light = "#aa93cd",
		purple_light_2 = "#c5b6dd",
		violet = "#b294bb",
		violet_dark = "#9c76a7",
		orange = "#de935f",
		orange_light = "#e7b088",
		orange_light_2 = "#efccb3",
		orange_dark = "#d57734",
		orange_sat = "#f1904b",
		brown = "#a3685a",
		seagreen = "#698b69",
	},
}

function M.highlight()
	local hi = vim.api.nvim_set_hl
	local c = vim.g.piratebdy_config.colors

	-- hi( 0, "Name", { fg, bg, sp, blend, bold, underline, italic, reverse, link, }
	-- vim highlights
	hi(0, "ColorColumn", { fg = c.none, bg = c.bg_light_2 })
	hi(0, "Conceal", { fg = c.gray, bg = c.none })
	hi(0, "CurSearch", { link = "Search" })
	hi(0, "Cursor", { fg = c.bg, bg = c.white_light }) -- check this
	hi(0, "CursorColumn", { bg = c.bg_light_2 })
	hi(0, "CursorIM", { fg = "#ffff00", bg = "#ff0000" })
	hi(0, "CursorLine", { bg = c.bg_light_2 })
	-- hi(0, "CursorLineFold", { bg = "#ff0000" })    -- check this -- clear these for now
	hi(0, "CursorLineNr", { fg = c.yellow, bold = true })
	hi(0, "CursorLineSign", {})
	hi(0, "DiffAdd", { fg = c.green })
	hi(0, "diffAdded", { link = "DiffAdd" })
	hi(0, "DiffChange", { fg = c.yellow_light })
	hi(0, "DiffDelete", { fg = c.red })
	hi(0, "diffRemoved", { link = "DiffDelete" })
	hi(0, "DiffText", { fg = c.gray })
	hi(0, "Directory", { fg = c.blue }) -- is orange:light in orig
	hi(0, "EndOfBuffer", { fg = c.gray })
	hi(0, "ErrorMsg", { fg = c.red })
	hi(0, "FloatBorder", { fg = c.white_light_2, bg = c.bg_dark })
	hi(0, "FloatTitle", { fg = c.white_light })
	-- hi(0, "FoldColumn", { fg = c.red_bright }) -- check this -- clear these for now
	-- hi(0, "Folded", { fg = c.red_bright })  -- check this
	hi(0, "IncSearch", { link = "Search" })
	hi(0, "InvNormal", { fg = c.bg, bg = c.white })
	hi(0, "LineNr", { fg = c.yellow, bold = true })
	hi(0, "LineNrAbove", { fg = c.gray_light })
	hi(0, "LineNrBelow", { link = "LineNrAbove" })
	hi(0, "MatchParen", { fg = c.cyan })
	hi(0, "Menu", { fg = c.white_light })
	hi(0, "ModeMsg", { link = "Normal" })
	hi(0, "MoreMsg", { fg = c.purple_bright })
	hi(0, "MsgArea", { bg = c.bg })
	hi(0, "MsgSeparator", { fg = c.white }) -- check this
	hi(0, "NonText", { fg = c.gray_dark })
	hi(0, "Normal", { fg = c.white_light, bg = c.bg })
	hi(0, "NormalFloat", { fg = c.white_light_2, bg = c.bg_dark })
	hi(0, "NormalNc", { link = "Normal" })
	hi(0, "Pmenu", { fg = c.gray_light, bg = c.bg_light_2 })
	hi(0, "PmenuSel", { fg = c.bg, bg = c.yellow_light })
	hi(0, "PmenuSbar", { fg = c.none, bg = c.bg })
	hi(0, "PmenuThumb", { fg = c.none, bg = c.gray_dark })
	hi(0, "PmenuExtra", { fg = c.red_bright, bg = c.bg_light }) -- check this not sure where these extra and kind are used
	hi(0, "PmenuExtraSel", { fg = c.red_bright, bg = c.bg_light_2 }) -- check this
	hi(0, "PmenuKind", { fg = c.blue, bg = c.bg_light }) -- check this
	hi(0, "PmenuKindSel", { fg = c.blue, bg = c.bg_light_2 }) -- check this
	hi(0, "Question", { link = "Normal" })
	hi(0, "QuickFixLine", { fg = c.blue, underline = true })
	hi(0, "qfSeparator", { fg = c.gray })
	hi(0, "qfLineNr", { fg = c.gray })
	hi(0, "qfFileName", { fg = c.blue })
	hi(0, "Scrollbar", {})
	hi(0, "Search", { fg = c.bg, bg = c.yellow })
	hi(0, "SignColumn", { fg = c.gray, bg = c.bg })
	hi(0, "SpecialKey", { fg = c.red_bright })
	hi(0, "SpellBad", { fg = c.red_bright, underline = true }) -- check this
	hi(0, "SpellCap", { fg = c.red_bright, underline = true }) -- check this
	hi(0, "SpellLocal", { fg = c.red_bright, underline = true }) -- check this
	hi(0, "SpellRare", { fg = c.red_bright, underline = true }) -- check this
	hi(0, "StatusLine", { fg = c.bg, bg = c.blue })
	hi(0, "StatusLineNC", { fg = c.gray, bg = c.bg_light_2 })
	hi(0, "Substitute", { link = "Search" })
	hi(0, "TabLine", { fg = c.blue_dark, bg = c.bg_light })
	hi(0, "TabLineFill", { fg = c.white, bg = c.bg_light_2 }) -- check this
	hi(0, "TabLineSel", { fg = c.white_light_2, bg = c.bg_light, bold = true })
	hi(0, "TermCursor", { fg = c.bg, bg = c.gray }) -- check this can't get this to appear
	hi(0, "TermCursorNC", {}) -- check this
	hi(0, "Title", { fg = c.white_light_2, bold = true }) -- does this change based on the term colors?
	hi(0, "ToolTip", { link = "StatusLine" })
	hi(0, "Visual", { bg = c.bg_light_2 })
	hi(0, "VisualNOS", { link = "StatusLine" })
	hi(0, "WarningMsg", { link = "StatusLine" })
	hi(0, "Whitespace", { fg = c.gray })
	hi(0, "WildMenu", { fg = c.red })
	hi(0, "WinBar", { link = "StatusLine" })
	hi(0, "WinBarNc", { link = "StatusLine" })
	-- hi(0, "WinSeparator", { fg = c.bg_brightest, bg = c.bg })
	hi(0, "WinSeparator", {}) -- just clear this to normal
	hi(0, "lCursor", { fg = c.gray, bg = c.bg }) -- not sure what this does -- check this

	-- base syntax highlights
	hi(0, "Comment", { fg = c.gray_light, italic = true }) -- approx to orig with what I have

	hi(0, "Constant", { fg = c.orange })
	hi(0, "String", { fg = c.green })
	hi(0, "Character", { fg = c.red })
	hi(0, "Number", { fg = c.red })
	hi(0, "Boolean", { fg = c.orange })
	hi(0, "Float", { link = "Number" })

	hi(0, "Identifier", { fg = c.red, bold = true })
	hi(0, "Function", { fg = c.yellow })

	hi(0, "Statement", { fg = c.red_dark })
	hi(0, "Conditional", { fg = c.red })
	hi(0, "Repeat", { fg = c.red })
	hi(0, "Label", { fg = c.yellow })
	hi(0, "Operator", { fg = c.red_light_2 })
	hi(0, "Keyword", { fg = c.violet })
	hi(0, "Exception", { fg = c.bright_red })

	hi(0, "PreProc", { fg = c.yellow }) -- check this
	hi(0, "Include", { fg = c.cyan }) -- check this
	hi(0, "Define", { fg = c.cyan }) -- check this
	hi(0, "Macro", { fg = c.orange })
	hi(0, "PreCondit", { fg = c.purple }) -- check this

	hi(0, "Type", { fg = c.violet, italic = true }) -- check this
	hi(0, "StorageClass", { fg = c.yellow })
	hi(0, "Structure", { fg = c.violet }) -- check this
	hi(0, "Typedef", { fg = c.yellow }) -- check this

	hi(0, "Special", { fg = c.purple_light, bold = true })
	hi(0, "SpecialChar", { fg = c.brown })
	hi(0, "Tag", { fg = c.yellow })
	hi(0, "Delimiter", { fg = c.violet, bold = true })
	hi(0, "SpecialComment", { fg = c.white_light })
	hi(0, "Debug", { fg = c.orange })

	hi(0, "Underlined", { fg = c.blue, underline = true })

	hi(0, "Ignore", { fg = c.gray })

	hi(0, "Error", { fg = c.red_light, bold = true })

	hi(0, "Todo", { fg = c.yellow })

	-- lang specific
	-- these might not be canon anymore
	-- lua
	hi(0, "luaStatement", { fg = c.yellow_dark, bold = true })
	hi(0, "luaKeyword", { fg = c.orange_dark, bold = true })
	hi(0, "luaMyKeyword", { fg = c.purple_light, bold = true })
	hi(0, "luaFunctionCall", { fg = c.blue_dark })
	hi(0, "luaSpecialFunctions", { fg = c.blue_light })
	hi(0, "luaMetaTableEvents", { fg = c.purple })
	hi(0, "luaMetaTableAritmetic", { link = "luaMetaTableEvents" })
	hi(0, "luaMetaTableEquivalence", { link = "luaMetaTableEvents" })
	hi(0, "@function.call.lua", { link = "luaFunctionCall" })
	hi(0, "@function.builtin.lua", { link = "luaFunctionCall" })
	hi(0, "@punctuation.bracket.lua", {})
	hi(0, "@field.lua", {})
	hi(0, "@lsp.type.method.lua", { link = "luaFunctionCall" })
	hi(0, "@lsp.type.function.lua", { link = "luaFunctionCall" })

	-- python
	hi(0, "@type.python", { fg = c.red, italic = true })

	-- go
	hi(0, "@type.go", { fg = c.red_dark, italic = true })
	hi(0, "@type.go", { fg = c.violet_dark, italic = true })

	-- ocaml
	hi(0, "@constructor.ocaml", { fg = c.orange })

	-- typescript
	hi(0, "@constructor.typescript", { fg = c.red })

	-- html
	-- check this, dont know how I want to handle this quite yet
	-- hi(0, "htmlH1", { fg = c.blue_dark, bold = true })

	-- vimdoc
	hi(0, "@text.reference.vimdoc", { underline = true })
	hi(0, "@text.literal.vimdoc", { fg = c.purple_light, bold = true })
	hi(0, "@text.literal.block.vimdoc", { fg = c.purple_light, bold = true })
	hi(0, "@text.note.vimdoc", { fg = c.blue_light })

	-- diagnostic
	hi(0, "DiagnosticError", { fg = c.red, bold = true })
	-- hi(0, "DiagnosticWarn", { fg = c.orange })
	---hi(0, "DiagnosticInfo", { fg = c.blue })
	-- hi(0, "DiagnosticHint", { fg = c.violet })
	hi(0, "DiagnosticDeprecated", { strikethrough = true })

	-- treesitter
	hi(0, "@module", { fg = c.blue })
	hi(0, "@include", { link = "Include" })
	hi(0, "@keyword", { link = "Keyword" })
	hi(0, "@keyword.conditional", { link = "Conditional" })
	hi(0, "@keyword.faded", { fg = c.gray })
	hi(0, "@variable", { fg = c.white_light, bg = c.none })
	hi(0, "@variable.builtin", { fg = c.purple_light_2 })
	hi(0, "@function", { link = "Function" })
	hi(0, "@function.builtin", { link = "Function" })
	hi(0, "@function.bracket", { link = "Normal" })
	hi(0, "@_operator", { link = "Function" })
	hi(0, "@property", { fg = c.blue })
	hi(0, "@namespace", { fg = c.blue_light })
	hi(0, "@normal", { link = "Normal" })
	hi(0, "@punctuation.bracket", { fg = c.violet, bold = true })
	hi(0, "@text.title", { link = "Title" })

	-- lsp semantic highlights get outta here
	hi(0, "@lsp.type.variable", {})
	hi(0, "@lsp.type.property", {})
	hi(0, "@lsp.type.parameter", { italic = true })
	hi(0, "@lsp.type.namespace", { link = "@namespace" })
	hi(0, "@lsp.mod", {})
	hi(0, "VirtNonText", { fg = c.gray, italic = true }) -- I think this is mostly lsp stuff?

	-- plugins
	-- telescope
	hi(0, "TelescopeMatching", { fg = c.orange_sat, bg = c.none, bold = true })

	-- treesitter context
	hi(0, "TreesitterContext", { bg = c.bg_light })
	hi(0, "TreesitterContextLineNumber", { fg = c.blue })

	-- do user overrides
	if vim.g.piratebdy_config.highlights then
		for group, opts in pairs(vim.g.piratebdy_config.highlights) do
			hi(0, group, opts)
		end
	end
end

---It can't be changed directly by modifying that field due to a Neovim lua bug with global variables (tairiki_config is a global variable)
function M.set_option(key, value)
	local conf = vim.g.piratebdy_config
	conf[key] = value
	vim.g.piratebdy_config = conf
end

function M.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "piratebuddy"

	M.highlight()
end

-- setups up config
-- does not load colors
function M.setup(opts)
	if not vim.g.piratebdy_config or not vim.g.piratebdy_config.loaded then
		vim.g.piratebdy_config = vim.tbl_deep_extend("force", vim.g.piratebdy_config or {}, default_opts)
		M.set_option("loaded", true)
	end

	if opts then
		if opts.colors then
			opts.colors = vim.tbl_deep_extend("keep", opts.colors, vim.g.piratebdy_config.colors)
		end

		-- hacky way to use the predefined colors on new highlights
		if opts.highlights then
			for _, hl_opts in pairs(opts.highlights) do
				for opt, val in pairs(hl_opts) do
					if type(val) == "string" and val:sub(1, 1) == "$" then
						hl_opts[opt] = opts.colors[val:sub(2)]
					end
				end
			end
		end

		vim.g.piratebdy_config = vim.tbl_deep_extend("force", vim.g.piratebdy_config, opts)
	end
end

function M.colorscheme()
	vim.api.nvim_command("colorscheme piratebuddy")
end

return M
