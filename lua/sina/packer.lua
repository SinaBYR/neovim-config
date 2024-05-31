vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	use { "folke/tokyonight.nvim" }

	use { "tiagovla/tokyodark.nvim" }

  use { "catppuccin/nvim", as = "catppuccin" }

	-- telescope find files
	use {
		'nvim-telescope/telescope.nvim', tag = '*',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

  -- vertical bars on indentations
  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
    },
    config = function()
      require("barbecue").setup()
    end,
  })

	-- highlight same words
	use { 'yamatsum/nvim-cursorline' }

	-- tabline
	use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
	use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
	use 'romgrk/barbar.nvim'

	-- braces, curly-braces, brackets, ... auto completer
	use('jiangmiao/auto-pairs')

	-- folder explorer tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	-- smooth-animation for <C-u>/<C-d>
	use 'psliwka/vim-smoothie'

	use {
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			icons = false,
			fold_open = "v", -- icon used for open folds
			fold_closed = ">", -- icon used for closed folds
			indent_lines = false, -- add an indent guide below the fold icons
			signs = {
					-- icons / text used for a diagnostic
					error = "error",
					warning = "warn",
					hint = "hint",
					information = "info"
			},
			use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
		},
	}

	use 'ethanholz/nvim-lastplace'

	-- indentation vertical line
	use "lukas-reineke/indent-blankline.nvim"

	--  full signature help, docs and completion for the nvim lua API
	use "folke/neodev.nvim"

	-- analogue.nvim
	use "sinabyr/analogue.nvim"

	-- numToStr/Comment.nvim
	use { 'numToStr/Comment.nvim' }

	-- golang setup
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua'

	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
end)

