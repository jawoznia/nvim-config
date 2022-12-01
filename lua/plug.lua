-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins, Go Here ]]

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use { "ellisonleao/gruvbox.nvim" }                 -- theme
  use { 'Yggdroot/indentLine' }                      -- see indentation

  -- tree manager
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Telescope --
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Coding
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.

  -- LSP
use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'

  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'

-- Debugging
use 'nvim-lua/plenary.nvim'
use 'mfussenegger/nvim-dap'
end)

