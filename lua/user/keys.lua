--[[ keys.lua ]]
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap the key usedto leave insert mode
-- map('i', 'jk', '', {})
map("n", "<leader>nt", ":NvimTreeToggle<CR>", opts)

-- Telescope config
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>fg", builtin.live_grep, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})
