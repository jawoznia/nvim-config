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

  -- tree manager
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
end)

