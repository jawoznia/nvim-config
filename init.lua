--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = " "

vim.g.noswapfile = 1

-- IMPORTS
require("vars") -- Variables
require("keys") -- Keymaps
require("opts") -- Options
require("plug") -- Plugins
require("nullls")
require('lsp-config.language-servers')
require("lsp")
require('lsp-config/cmp-config')

-- PLUGINS --
require("nvim-tree").setup{
    diagnostics = {
        enable = true,
    }
}
require("lualine").setup({
	options = {
		theme = "gruvbox_dark",
	},
})
require("nvim-autopairs").setup({})

-- Treesitter Plugin Setup
require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "rust", "toml" },
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	ident = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
})

require("impatient")
