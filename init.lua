--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = " "

-- IMPORTS
require('vars')      -- Variables
require('keys')      -- Keymaps
require('opts')      -- Options
require('plug')      -- Plugins

-- PLUGINS --
require('nvim-tree').setup {}
require('lualine').setup {
    options = {
        theme = 'gruvbox_dark'
    }
}
require('nvim-autopairs').setup {}
