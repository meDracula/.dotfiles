-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer manager package list
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('Pocco81/TrueZen.nvim')

  use('nvim-lua/plenary.nvim')
  use({
	  'theprimeagen/harpoon',
	  commit = "fa3d8f725ab658dd2a9d4ab66f245c874431662c"
  })

  use('mbbill/undotree')

  use({
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  	}
})

  -- ColorScheme Plugin
  use({
	  'EdenEast/nightfox.nvim',
	  commit = '15f3b5837a8d07f45cbe16753fbf13630bc167a3'
  })

  -- Requires Nvim Nightly
  --use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  --use('nvim-treesitter/playground')
end)
