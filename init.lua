--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = " "

-- User section
require("user/vars") -- Variables
require("user/keys") -- Keymaps
require("user/opts") -- Options

-- Plugins specific
require("plug") -- Plugins
require("nullls")
require("lsp-config.language-servers")
require("lsp")
require("lsp-config/cmp-config")
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
