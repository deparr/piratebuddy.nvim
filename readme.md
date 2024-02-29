# piratebuddy.nvim
---
*the result of hours of pouring over dotfiles and vods: a badly written colorscheme*

A simple and clean Neovim theme (mostly) stolen from the one and only [TGDV](https://github.com/tjdevries)  

## Configuration
You can customize the colors and highlights by passing tables to the setup function. The highlight options are passed directly to `vim.api.nvim_set_hl`.  

The available named colors and set highlights can be seen in [init.lua](lua/slim/init.lua).
For example, my own config looks like this:
```lua
require("piratebuddy").setup {
	colors = {
		tairiki_gray = "#a89984",
	},
	highlights = {
		["DiffChange"] = { fg = "$blue" },
		["DiffText"] = { fg = "$tairiki_gray" },
		["FloatBorder"] = { fg = "$bg_dark", bg = "$bg_dark" },
		["StatusLine"] = { fg = "$white_light", bg = "$bg_light"  },
		["SpecialChar"] = { fg = "$orange" },
		["LspInfoBorder"] = { fg = "$bg_dark", bg = "$bg_dark" },

		["netrwDir"] = { fg = "$blue_dark" },
		["netrwClassify"] = { fg = "$yellow_light" },
		["netrwSymLink"] = { fg = "$cyan" },
		["netrwLink"] = { fg = "$cyan" },
		["netrwExe"] = { fg = "$aqua" },

		["fugitiveHeader"] = { link = "Macro" },
		["fugitiveHelpHeader"] = { fg = "$gray_light" },
		["fugitiveHelpTag"] = { link = "fugitiveHelpHeader" },
		["fugitiveHunk"] = { fg = "$tairiki_gray" },
		["fugitiveSymbolicRef"] = { link = "Identifier" },
		["fugitiveStagedHeading"] = { link = "Macro" },
		["fugitiveStagedModifier"] = { link = "Structure" },
		["diffLine"] = { fg = "$yellow_light" },
		["diffSubname"] = { fg = "$blue_dark" },

		["@constant.builtin"] = { fg = "$orange" },
		["@function.call.rust"] = { fg = "$blue_dark" },
		["@lsp.type.decorator"] = { link = "Macro" },
	}
}
```



