--[[ init.lua ]]

-- User section
require("user/vars") -- Variables
require("user/keys") -- Keymaps
require("user/opts") -- Options
require("user/colorscheme") -- Options
require("user/cmp") -- completion
require("user/lsp") -- lsp
require("user/gitsigns") -- git support
require("user/telescope")
require("user/treesitter")
require("user/autopairs")
require("user/nvim-comment")

-- Plugins specific
require("plug") -- Plugins
--require("nullls")
-- require("lsp-config.language-servers")
-- require("lsp")

require("nvim-tree").setup({
	diagnostics = {
		enable = true,
	},
})
require("lualine").setup({
	options = {
		theme = "gruvbox_dark",
	},
})

require("impatient")

vim.notify = require("notify")
