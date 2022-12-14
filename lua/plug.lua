-- [[ plug.lua ]]

return require("packer").startup(function(use)
    -- [[ Plugins, Go Here ]]

    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- [[ Theme ]]
    use({ "mhinz/vim-startify" }) -- start screen
    use({ "DanilaMihailov/beacon.nvim" }) -- cursor jump
    use({
        "nvim-lualine/lualine.nvim", -- statusline
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({ "ellisonleao/gruvbox.nvim" }) -- theme
    use({ "Yggdroot/indentLine" }) -- see indentation

    -- tree manager
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
    })

    -- Telescope --
    use({
        "nvim-telescope/telescope.nvim", -- fuzzy finder
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- Coding
    use({ "windwp/nvim-autopairs" }) -- auto close brackets, etc.

    -- LSP
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")

    use("simrat39/rust-tools.nvim")
    use("jose-elias-alvarez/null-ls.nvim")
    use({
        "saecki/crates.nvim",
        tag = "v0.3.0",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("crates").setup()
        end,
    })

    -- Debugging
    use("nvim-lua/plenary.nvim")
    use("mfussenegger/nvim-dap")

    -- Completion framework:
    use("hrsh7th/nvim-cmp")

    -- LSP completion source:
    use("hrsh7th/cmp-nvim-lsp")

    -- Useful completion sources:
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/vim-vsnip")

    use("nvim-treesitter/nvim-treesitter")

    -- Speed improvement
    use("lewis6991/impatient.nvim")

    -- Utils
    --    use({
    --        "Pocco81/auto-save.nvim",
    --        config = function()
    --            require("auto-save").setup({
    --                -- your config goes here
    --                -- or just leave it empty :)
    --                trigger_events = { "InsertLeave" }, -- trigger_events = {"InsertLeave", "TextChanged"},
    --            })
    --        end,
    --    })

    -- Fancy notifications

    use("rcarriga/nvim-notify")
end)
