--[[ init.lua ]]

-- User section
require("user/vars") -- Variables
require("user/keys") -- Keymaps
require("user/opts") -- Options
require("user/colorscheme") -- Options
require("user/cmp") -- completion
require("user/lsp") -- lsp config

-- Plugins specific
require("plug") -- Plugins
--require("nullls")
-- require("lsp-config.language-servers")
-- require("lsp")
require("lsp-config/treesitter-config")

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
require("nvim-autopairs").setup({})

require("impatient")

vim.notify = require("notify")
require("plugins/nvim-comment-config")
