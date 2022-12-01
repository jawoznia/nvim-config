--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key usedto leave insert mode
-- map('i', 'jk', '', {})
map('n', 'n', [[:NvimTreeToggle]], {})

-- Telescope config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--map('n', 'ff', [[:Telescope find_files]], {})
