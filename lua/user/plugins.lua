local fn = vim.fn


-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
--[[
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

--]]

-- Install your plugins here
return packer.startup(function(use)

  -- My plugins here e
  -- use "xiyaowong/transparent.nvim" -- set Transparent Background 
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "Glench/Vim-Jinja2-Syntax" -- Use nunjucks high 
  use "windwp/nvim-autopairs"
  use "theprimeagen/harpoon"
  use "theprimeagen/refactoring.nvim"
  use "mbbill/undotree"
  use "tpope/vim-fugitive"
  use "nvim-treesitter/nvim-treesitter-context"
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring" 

  use 'kyazdani42/nvim-web-devicons'
  use { "nvim-tree/nvim-tree.lua" }
  use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins

  --Cmp
  use { "hrsh7th/nvim-cmp" } -- The completion plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
	use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "hrsh7th/cmp-nvim-lua" }

  -- Snippets
  use { "L3MON4D3/LuaSnip" } --snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  use "whatsthatsmell/codesmell_dark.vim"
  use 'folke/tokyonight.nvim'
  use "ellisonleao/gruvbox.nvim"
  use 'NLKNguyen/papercolor-theme'
  use "rose-pine/neovim"
  use 'cocopon/iceberg.vim'

  -- LSP
	use { "neovim/nvim-lspconfig" } -- enable LSP
  use { "williamboman/mason.nvim" } -- simple to use language server installer
  use { "williamboman/mason-lspconfig.nvim" }
  use { "RRethy/vim-illuminate" }

	-- Telescope
	use  "nvim-telescope/telescope.nvim"

	-- Treesitter
	use { "nvim-treesitter/nvim-treesitter" }

  --Tmux
  use 'christoomey/vim-tmux-navigator'

	-- Git
 --	use { "lewis6991/gitsigns.nvim", commit = "2c6f96dda47e55fa07052ce2e2141e8367cbaaf2" }

  -- DAP
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "ravenxrz/DAPInstall.nvim"

  -- Java
  use "mfussenegger/nvim-jdtls"


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)


