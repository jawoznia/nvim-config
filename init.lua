--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = " "

-- IMPORTS
require("vars") -- Variables
require("keys") -- Keymaps
require("opts") -- Options
require("plug") -- Plugins
require("nullls")
require("lsp-config.language-servers")
require("lsp")
require("lsp-config/cmp-config")
require("lsp-config/treesitter-config")

-- PLUGINS --
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
