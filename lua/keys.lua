--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- remap the key usedto leave insert mode
-- map('i', 'jk', '', {})
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope config
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
--map('n', 'ff', [[:Telescope find_files]], {})

-- Copy to clipboard
vim.keymap.set("n", "<c-c>", '"*y :let @+=@*<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<c-v>", '"+p', { noremap = true, silent = true })

-- auto-save toggle
vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})
