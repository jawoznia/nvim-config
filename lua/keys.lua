--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key usedto leave insert mode
-- map('i', 'jk', '', {})
map('n', 'n', [[:NvimTreeToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
