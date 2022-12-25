return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use 'famiu/nvim-reload'
	-- Mason for LSP
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	-- Rust tools
	use 'simrat39/rust-tools.nvim'
	-- LSP --
  	use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
	-- File explorer
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
             		'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use "nvim-tree/nvim-web-devicons"
	use "nvim-treesitter/nvim-treesitter"
	-- Theme
	use 'bluz71/vim-nightfly-colors'
	use 'glepnir/dashboard-nvim'
	use {
            "lukas-reineke/indent-blankline.nvim",
  	    config = function()
    	    require("indent_blankline").setup { filetype_exclude = { "dashboard" }
    	    }
  	    end
	}
	-- Latex
	use 'lervag/vimtex'

	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.0',
 	 	requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

	-- Harpoon --
	 use('theprimeagen/harpoon')
	-- Git QOL
	 use('tpope/vim-fugitive')
	-- Transparent
	 use({
  		"xiyaowong/nvim-transparent",
  		config = function()
    		require("transparent").setup {
      		enable = true,
    		}
  		end 
	})
	-- Auto brackets
	use {
	"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end
	}
    use 'beauwilliams/statusline.lua'
end)

