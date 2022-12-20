--[[ init.lua ]]

-- User section
require("user/vars") -- Variables
require("user/keys") -- Keymaps
require("user/opts") -- Options
require("user/plugins") -- plugins list
require("user/colorscheme") -- Options
require("user/cmp") -- completion
require("user/lsp") -- lsp
require("user/gitsigns") -- git support
require("user/telescope") -- search engine
require("user/treesitter") -- syntax highlighting
require("user/autopairs") -- autopairs
require("user/nvim-comment") -- line/range commenting
require("user/nvim-tree") -- file explorer
require("user/lualine") -- bottom line with multiple infos
require("user/toggleterm") -- terminal in nvim
require("user/impatient")
require("user/project")
require("user/nvim-transparent")
require("user/notify")
-- require("user/whichkey")

-- vim.notify = require("notify")
