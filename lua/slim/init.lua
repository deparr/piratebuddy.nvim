-- ColorColumn	Used for the columns set with 'colorcolumn'.
-- Conceal		Placeholder characters substituted for concealed
-- CurSearch	Used for highlighting a search pattern under the cursor
-- Cursor		Character under the cursor.
-- CursorColumn	Screen-column at the cursor, when 'cursorcolumn' is set.
-- CursorIM	Like Cursor, but used when in IME mode. *CursorIM*
-- CursorLine	Screen-line at the cursor, when 'cursorline' is set.
-- CursorLineFold	Like FoldColumn when 'cursorline' is set for the cursor line.
-- CursorLineNr	Like LineNr when 'cursorline' is set and 'cursorlineopt'
-- CursorLineSign	Like SignColumn when 'cursorline' is set for the cursor line.
-- DiffAdd		Diff mode: Added line. |diff.txt|
-- DiffChange	Diff mode: Changed line. |diff.txt|
-- DiffDelete	Diff mode: Deleted line. |diff.txt|
-- DiffText	Diff mode: Changed text within a changed line. |diff.txt|
-- Directory	Directory names (and other special names in listings).
-- EndOfBuffer	Filler lines (~) after the end of the buffer.
-- ErrorMsg	Error messages on the command line.
-- FloatBorder	Border of floating windows.
-- FloatTitle	Title of floating windows.
-- FoldColumn	'foldcolumn'
-- Folded		Line used for closed folds.
-- IncSearch	'incsearch' highlighting; also used for the text replaced with
-- LineNr		Line number for ":number" and ":#" commands, and when 'number'
-- LineNrAbove	Line number for when the 'relativenumber'
-- LineNrBelow	Line number for when the 'relativenumber'
-- MatchParen	Character under the cursor or just before it, if it
-- Menu		Current font, background and foreground colors of the menus.
-- ModeMsg		'showmode' message (e.g., "-- INSERT --").
-- MoreMsg		|more-prompt|
-- MsgArea		Area for messages and cmdline.
-- MsgSeparator	Separator for scrolled messages |msgsep|.
-- NonText		'@' at the end of the window, characters from 'showbreak'
-- Normal		Normal text.
-- NormalFloat	Normal text in floating windows.
-- NormalNC	Normal text in non-current windows.
-- Pmenu		Popup menu: Normal item.
-- PmenuExtra	Popup menu: Normal item "extra text".
-- PmenuExtraSel	Popup menu: Selected item "extra text".
-- PmenuKind	Popup menu: Normal item "kind".
-- PmenuKindSel	Popup menu: Selected item "kind".
-- PmenuSbar	Popup menu: Scrollbar.
-- PmenuSel	Popup menu: Selected item.
-- PmenuThumb	Popup menu: Thumb of the scrollbar.
-- Question	|hit-enter| prompt and yes/no questions.
-- QuickFixLine	Current |quickfix| item in the quickfix window. Combined with
-- Scrollbar	Current background and foreground of the main window's
-- Search		Last search pattern highlighting (see 'hlsearch').
-- SignColumn	Column where |signs| are displayed.
-- SpecialKey	Unprintable characters: Text displayed differently from what
-- SpellBad	Word that is not recognized by the spellchecker. |spell|
-- SpellCap	Word that should start with a capital. |spell|
-- SpellLocal	Word that is recognized by the spellchecker as one that is
-- SpellRare	Word that is recognized by the spellchecker as one that is
-- StatusLine	Status line of current window.
-- StatusLineNC	Status lines of not-current windows.
-- Substitute	|:substitute| replacement text highlighting.
-- TabLine		Tab pages line, not active tab page label.
-- TabLineFill	Tab pages line, where there are no labels.
-- TabLineSel	Tab pages line, active tab page label.
-- TermCursor	Cursor in a focused terminal.
-- TermCursorNC	Cursor in an unfocused terminal.
-- Title		Titles for output from ":set all", ":autocmd" etc.
-- Tooltip		Current font, background and foreground of the tooltips.
-- Visual		Visual mode selection.
-- VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
-- WarningMsg	Warning messages.
-- Whitespace	"nbsp", "space", "tab", "multispace", "lead" and "trail"
-- WildMenu	Current match in 'wildmenu' completion.
-- WinBar		Window bar of current window.
-- WinBarNC	Window bar of not-current windows.
-- WinSeparator	Separators between window splits.
-- lCursor		Character under the cursor when |language-mapping|

-- *Comment	any comment
--
-- *Constant	any constant
--  String		a string constant: "this is a string"
--  Character	a character constant: 'c', '\n'
--  Number		a number constant: 234, 0xff
--  Boolean	a boolean constant: TRUE, false
--  Float		a floating point constant: 2.3e10
--
-- *Identifier	any variable name
--  Function	function name (also: methods for classes)
--
-- *Statement	any statement
--  Conditional	if, then, else, endif, switch, etc.
--  Repeat		for, do, while, etc.
--  Label		case, default, etc.
--  Operator	"sizeof", "+", "*", etc.
--  Keyword	any other keyword
--  Exception	try, catch, throw
--
-- *PreProc	generic Preprocessor
--  Include	preprocessor #include
--  Define		preprocessor #define
--  Macro		same as Define
--  PreCondit	preprocessor #if, #else, #endif, etc.
--
-- *Type		int, long, char, etc.
--  StorageClass	static, register, volatile, etc.
--  Structure	struct, union, enum, etc.
--  Typedef	A typedef
--
-- *Special	any special symbol
--  SpecialChar	special character in a constant
--  Tag		you can use CTRL-] on this
--  Delimiter	character that needs attention
--  SpecialComment	special things inside a comment
--  Debug		debugging statements
--
-- *Underlined	text that stands out, HTML links
--
-- *Ignore		left blank, hidden  |hl-Ignore|
--
-- *Error		any erroneous construct
--
-- *Todo		anything that needs extra attention; mostly the
-- keywords TODO FIXME and XXX
--[[
require("colorbuddy").setup()

local Color = require('colorbuddy').Color

Color.new('white',     '#f2e5bc')
Color.new('red',       '#cc6666')
Color.new('pink',      '#fef601')
Color.new('green',     '#99cc99') -- check this
Color.new('yellow',    '#f8fe7a')
Color.new('blue',      '#81a2be')
Color.new('aqua',      '#8ec07c')
Color.new('cyan',      '#8abeb7')
Color.new('purple',    '#8e6fbd')
Color.new('violet',    '#b294bb')
Color.new('orange',    '#de935f')
Color.new('brown',     '#a3685a')

Color.new('seagreen',  '#698b69')
Color.new('turquoise', '#698b69')

return {
  vulgaris = {
    black = '#111210',
    bg0 = '#252623',
    bg1 = '#2f312c',
    bg2 = '#383b35',
    bg3 = '#3a3d37',
    bg_d = '#1c1e1b',
    bg_blue = '#68aee8',
    bg_yellow = '#e2c792',
    fg = '#f1e9d2',
    purple = '#aaaaff',
    green = '#8fb573',
    orange = '#ff9966',
    blue = '#57a5e5',
    yellow = '#dbb671',
    cyan = '#70c2be',
    red = '#e75a7c',
    coral = '#f08080',
    grey = '#5b5e5a',
    light_grey = '#838781',
    dark_cyan = '#2b5d63',
    dark_red = '#833b3b',
    dark_yellow = '#7c5c20',
    dark_purple = '#79428a',
    diff_add = '#40531b',
    diff_delete = '#893f45',
    diff_change = '#2a3a57',
    diff_text = '#3a4a67',
  },
  multiplex = {
    black = '#101210',
    bg0 = '#232923',
    bg1 = '#2d312c',
    bg2 = '#363b35',
    bg3 = '#383d37',
    bg_d = '#171f17',
    bg_blue = '#68aee8',
    bg_yellow = '#dcbf84',
    fg = '#ece1c0',
    purple = '#ae93e0',
    green = '#81af58',
    orange = '#d99058',
    blue = '#5692c4',
    yellow = '#cebe69',
    cyan = '#71ada2',
    red = '#dc4f62',
    coral = '#e07870',
    grey = '#5a5e5a',
    light_grey = '#818781',
    dark_cyan = '#2b635a',
    dark_red = '#823b46',
    dark_yellow = '#7c5c20',
    dark_purple = '#79428a',
    diff_add = '#40531b',
    diff_delete = '#893f45',
    diff_change = '#2a3a57',
    diff_text = '#3a4a67',
  },
  light = {
    black = '#111210',
    bg0 = '#fafae0',
    bg1 = '#eaead0',
    bg2 = '#e4e4cc',
    bg3 = '#dadac2',
    bg_d = '#c7c7af',
    bg_blue = '#589ed8',
    bg_yellow = '#956515',
    fg = '#3a4238',
    purple = '#8a4adf',
    green = '#4fa533',
    orange = '#df7946',
    blue = '#1765d5',
    yellow = '#bb9651',
    cyan = '#00a2be',
    red = '#c72a3c',
    coral = '#d06060',
    grey = '#a1a7a0',
    light_grey = '#838781',
    dark_cyan = '#2b5d63',
    dark_red = '#833b3b',
    dark_yellow = '#7c5c20',
    dark_purple = '#79428a',
    diff_add = '#c0e3ab',
    diff_delete = '#f9afb5',
    diff_change = '#d2dceb',
    diff_text = '#c2ccdb',
  },
}
--]]

-- TODO
--	Need a good color for operator, one that is a little more hc but not white_bright
--  Lsp and diagnostic highlights
--	plugins????
--		fidget
--		lazy
--		fugitive
--		
local c = {
	bg = "#151515",
	bg_brighter = "#1d2021", -- gruvbox dark bg0_h
	bg_brightest = "#282828", -- gruvbox dark bg
	gray = "#696969",      -- tairiki gray
	gray_bright = "#969896", -- tairiki gray+light
	aqua = "#8ec07c",      -- gruvbox dark aqua light
	white = "#a89984",     -- tairiki comment
	--white_bright = "#f2e5bc", -- gruvbox light bg0_s
	white_bright = "#fbf1c7", -- gruvbox light bg0_s
	blue = "#81a2be",      -- not sure about this blue -- tairiki blue
	blue_bright = "#8abeb7",
	purple = "#ae93e0",    -- gruvbuddy purple -- this color sucks
	purple_bright = "#b294bb",
	green = "#b5bd68",     -- tairiki green
	red = "#cc6666",       -- tomorrow night red
	red_bright = "#fb4934", -- gruvbox dark red bright
	-- yellow = "#f8fe7a",
	-- yellow = "#f0c674", tairiki yellow
	yellow = "#facd4f",        -- brightened gruvbox dark yellow
	yellow_bright = "#f8fe7a",
	yellow_brightest = "#fef601", -- gruvbuddy 'pink'
	orange = "#de935f",
	orange_gruv = "#fe9019",        -- gruvbox dark orange
	orange_bright = "#e78c45", -- tairiki light_orange
	coral = "#a16a45",
	coral_bright = "#e8bd90",
	none = "none",
}



local M = {}
local default_opts = {}

local function highlight()
	local hl = vim.api.nvim_set_hl
	-- hl( 0, "Name", { fg, bg, sp, blend, bold, underline, italic, reverse, link, }

	-- vim highlights
	hl(0, "ColorColumn", { fg = c.none, bg = c.bg_brightest })
	hl(0, "Conceal", { fg = c.white, bg = c.none })
	hl(0, "CurSearch", { link = "Search" })
	hl(0, "Cursor", { fg = c.bg })
	hl(0, "CursorColumn", { bg = c.gray })
	hl(0, "CursorIM", { fg = "#ffff00", bg = "#ff0000" })
	hl(0, "CursorLine", { bg = c.gray })
	-- hl(0, "CursorLineFold", { bg = "#ff0000" })    -- check this -- clear these for now
	hl(0, "CursorLineNr", { fg = c.yellow, bold = true })
	hl(0, "CursorLineSign", {})
	hl(0, "DiffAdd", { fg = c.green }) -- maybe make specific colors for diffs
	hl(0, "DiffChange", { fg = c.blue }) -- maybe make specific colors for diffs
	hl(0, "DiffDelete", { fg = c.red }) -- maybe make specific colors for diffs
	hl(0, "DiffText", { fg = c.white }) -- maybe make specific colors for diffs
	hl(0, "Directory", { fg = c.blue })
	hl(0, "EndOfBuffer", { fg = c.gray })
	hl(0, "ErrorMsg", { fg = c.red })
	hl(0, "FloatBoarder", { fg = c.gray, bg = c.none })
	hl(0, "FloatTitle", { fg = c.white_bright })
	-- hl(0, "FoldColumn", { fg = c.red_bright }) -- check this -- clear these for now
	-- hl(0, "Folded", { fg = c.red_bright })  -- check this
	hl(0, "IncSearch", { link = "Search" })
	hl(0, "LineNr", { fg = c.yellow, bold = true })
	hl(0, "LineNrAbove", { fg = c.gray_bright })
	hl(0, "LineNrBelow", { link = "LineNrAbove" })
	hl(0, "MatchParen", { fg = c.aqua, underline = true })
	hl(0, "Menu", { fg = c.white_bright })
	hl(0, "ModeMsg", { link = "Normal" })
	hl(0, "MoreMsg", { fg = c.purple_bright })
	hl(0, "MsgArea", { bg = c.bg })
	hl(0, "MsgSeparator", { fg = c.white }) -- check this
	hl(0, "NonText", { fg = c.gray })
	hl(0, "Normal", { fg = c.white_bright, bg = c.bg })
	hl(0, "NormalFloat", { link = "Normal" })
	hl(0, "NormalNc", { link = "Normal" })                     -- keep non focused the same
	hl(0, "Pmenu", { fg = c.gray_bright, bg = c.bg_brighter })
	hl(0, "PmenuExtra", { fg = c.red_bright, bg = c.bg_brighter })   -- check this
	hl(0, "PmenuExtraSel", { fg = c.red_bright, bg = c.bg_brightest }) -- check this
	hl(0, "PmenuKind", { fg = c.blue, bg = c.bg_brighter })    -- check this
	hl(0, "PmenuKindSel", { fg = c.blue, bg = c.bg_brightest }) -- check this
	hl(0, "PmenuSel", { fg = c.blue, bg = c.bg_brightest })
	hl(0, "PmenuSbar", { fg = c.none, bg = c.bg_brighter })
	hl(0, "PmenuThumb", { fg = c.none, bg = "#404040" })
	hl(0, "Question", { link = "Normal" })
	hl(0, "QuickFixLine", { fg = c.blue_bright, underline = true })
	hl(0, "qfSeparator", { fg = c.white_bright })
	hl(0, "qfLineNr", { fg = c.white })
	hl(0, "qfFileName", { fg = c.blue_bright })
	hl(0, "Scrollbar", {})
	hl(0, "Search", { fg = c.bg, bg = c.orange_bright })
	hl(0, "SignColumn", { fg = c.red, bg = c.bg })
	hl(0, "SpecialKey", { fg = c.red_bright })
	hl(0, "SpellBad", { fg = c.red_bright, underline = true }) -- check this
	hl(0, "SpellCap", { fg = c.red_bright, underline = true }) -- check this
	hl(0, "SpellLocal", { fg = c.red_bright, underline = true }) -- check this
	hl(0, "SpellRare", { fg = c.red_bright, underline = true }) -- check this
	hl(0, "StatusLine", { fg = c.white_bright, bg = c.bg_brighter })
	hl(0, "StatusLineNC", {})
	hl(0, "Substitute", { link = "Search" })
	hl(0, "TabLine", { link = "StatusLine" })
	hl(0, "TabLineFill", { link = "StatusLine" })
	hl(0, "TabLineSel", { link = "StatusLine" })
	hl(0, "TermCursor", { link = "StatusLine" })
	hl(0, "TermCursorNC", { link = "StatusLine" })
	hl(0, "Title", { fg = c.purple, bold = true })
	hl(0, "ToolTip", { link = "StatusLine" })
	hl(0, "Visual", { bg = c.bg_brightest, bold = true })
	hl(0, "VisualNOS", { link = "StatusLine" })
	hl(0, "WarningMsg", { link = "StatusLine" })
	hl(0, "Whitespace", { fg = c.white })
	hl(0, "WildMenu", { fg = c.red })
	hl(0, "WinBar", { link = "StatusLine" })
	hl(0, "WinBarNc", { link = "StatusLine" })
	hl(0, "WinSeparator", { fg = c.bg_brightest, bg = c.bg })
	hl(0, "lCursor", { fg = c.gray, bg = c.bg })

	-- base syntax highlights
	hl(0, "Comment", { fg = c.white })

	hl(0, "Constant", { fg = c.orange_bright })
	hl(0, "String", { fg = c.aqua })
	hl(0, "Number", { fg = c.orange })
	hl(0, "Boolean", { fg = c.orange_bright })
	hl(0, "Float", { link = "Number" })

	hl(0, "Identifier", { fg = c.red })
	hl(0, "Function", { fg = c.yellow_bright, bold = true })

	hl(0, "Statement", { fg = c.blue })
	hl(0, "Conditional", { link = "Keyword" })
	hl(0, "Repeat", { link = "Keyword" })
	hl(0, "Label", { link = "Keyword" })
	hl(0, "Operator", { fg = c.coral_bright })
	hl(0, "Keyword", { fg = c.purple_bright })
	hl(0, "Exception", { fg = c.bright_red })

	hl(0, "PreProc", { fg = c.purple }) -- check this
	hl(0, "Include", { fg = c.purple }) -- check this
	hl(0, "Define", { fg = c.purple }) -- check this
	hl(0, "Macro", { fg = c.orange_bright })
	hl(0, "PreCondit", { fg = c.purple }) -- check this

	hl(0, "Type", { fg = c.yellow })   -- check this
	hl(0, "StorageClass", { fg = c.red })
	hl(0, "Structure", { fg = c.orange }) -- chekc this
	hl(0, "Typedef", { fg = c.purple }) -- check this

	hl(0, "Special", { fg = c.purple_bright, bold = true })   -- check this
	hl(0, "SpecialChar", { fg = c.coral })
	hl(0, "Tag", { fg = c.red_bright }) -- check this
	hl(0, "Delimiter", { fg = c.gray })
	hl(0, "SpecialComment", { fg = c.white_bright })
	hl(0, "Debug", { fg = c.orange })

	hl(0, "Underlined", { fg = c.aqua, underline = true })

	hl(0, "Ignore", { fg = c.gray })

	hl(0, "Error", { fg = c.red })

	hl(0, "Todo", { fg = c.bright_red, bold = true })

	-- treesitter
	hl(0, "@module", { fg = c.blue })

	-- lsp semantic highlights get outta here
	hl(0, "@lsp.type.function", {})
	hl(0, "@lsp.type.variable", {})
	hl(0, "@lsp.type.property", {})
	hl(0, "@lsp.mod", {})
end

function M.setup(opts)
	if opts then
		opts = vim.tbl_deep_extend("force", default_opts, opts)
	else
		opts = default_opts
	end

	vim.cmd "hi clear"
	if vim.fn.exists("syntax_on") then
		vim.cmd "syntax reset"
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "slim"
	-- todo modularize this maybe
	highlight()
	-- term colors?
end

function M.load()
	vim.api.nvim_command("colorscheme slim")
end

return M
