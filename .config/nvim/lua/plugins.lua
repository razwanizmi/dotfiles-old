local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'akinsho/nvim-bufferline.lua'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cpm source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'lewis6991/gitsigns.nvim'
  use 'neovim/nvim-lspconfig' -- LSP
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'L3MON4D3/LuaSnip' -- Snippet
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
end)
