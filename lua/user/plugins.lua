-- [[ plug.lua ]]

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- [[ General plugins ]]
	use("wbthomason/packer.nvim") -- package manager
	use("nvim-lua/popup.nvim") -- better popup windows
	use("nvim-lua/plenary.nvim") -- no idea
	-- use("folke/which-key.nvim") -- cool floaty window with keybindings
	use("windwp/nvim-autopairs") -- auto close brackets, etc.
	use("lewis6991/impatient.nvim") -- nvim speed improvement
	use("akinsho/toggleterm.nvim") -- terminal in nvim
	use("ahmedkhalf/project.nvim") -- options to jump between projects
	use("xiyaowong/nvim-transparent") -- transparent bg

	-- [[ Theme ]]
	use({ "mhinz/vim-startify" }) -- start screen
	use({ "DanilaMihailov/beacon.nvim" }) -- cursor jump
	use({ "nvim-lualine/lualine.nvim" }) -- statusline
	use({ "ellisonleao/gruvbox.nvim" }) -- theme
	use({ "Yggdroot/indentLine" }) -- see indentation

	-- [[ File explorer ]]
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")

	-- [[ Telescope ]]
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-media-files.nvim")

	-- [[ LSP ]]
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	-- TODO: Remove once this fix will be delivered to simrat39 branch.
	-- Temporary fix for inlay hints error
	use("kdarkhan/rust-tools.nvim")
	-- use("simrat39/rust-tools.nvim")
	use("jose-elias-alvarez/null-ls.nvim")

	-- [[ Treesitter ]]
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("p00f/nvim-ts-rainbow")

	-- [[ Debugging ]]
	use("mfussenegger/nvim-dap")

	-- [[ Cmp ]]
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/vim-vsnip")
	use({
		"saecki/crates.nvim",
		tag = "v0.3.0",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup()
		end,
	})

	-- [[ Snippets ]]
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- [[ Fancy notifications ]]
	use("rcarriga/nvim-notify")
	use("terrortylor/nvim-comment")

	-- [[ git ]]
	use("lewis6991/gitsigns.nvim")

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
