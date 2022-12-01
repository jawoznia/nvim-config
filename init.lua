--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = " "

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- IMPORTS
require('vars')      -- Variables
require('keys')      -- Keymaps
require('opts')      -- Options
require('plug')      -- Plugins
require('lsp')

-- PLUGINS --
require('nvim-tree').setup {}
require('lualine').setup {
    options = {
        theme = 'gruvbox_dark'
    }
}
require('nvim-autopairs').setup {}
require('mason').setup {}
require('mason-lspconfig').setup {}


