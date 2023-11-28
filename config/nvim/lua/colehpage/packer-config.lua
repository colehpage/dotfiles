local status, packer = pcall(require, "packer")
if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-tree.lua'     -- file tree
	use 'nvim-tree/nvim-web-devicons' -- aesthetics
	use 'nvim-lualine/lualine.nvim'   -- Statusline
	use 'nvim-lua/plenary.nvim'       -- Common utilities
	use 'onsails/lspkind-nvim'        -- vscode-like pictograms
	use 'hrsh7th/cmp-buffer'          -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp'        -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/nvim-cmp'            -- Completion
	use 'lukas-reineke/virt-column.nvim' -- thin colorcolumn line
	use 'folke/neodev.nvim'           -- lsp configurations for nvim lua API
    use 'ldelossa/litee.nvim'
    use 'ldelossa/litee-filetree.nvim'
    use 'ldelossa/litee-symboltree.nvim'
    use 'ldelossa/litee-calltree.nvim'
    use 'ldelossa/litee-bookmarks.nvim'

	use {
		'ldelossa/gh.nvim',
		requires = { { 'ldelossa/litee.nvim' } }
	}

	use 'folke/lsp-colors.nvim'        -- creates missing LSP highlight groups
	use 'neovim/nvim-lspconfig'        -- LSP
	use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'sar/illuminate.nvim'                      -- highlights other uses of the word under the cursor
	use 'glepnir/lspsaga.nvim'                     -- LSP UIs
	use 'L3MON4D3/LuaSnip'
	use 'nvim-treesitter/nvim-treesitter'          -- syntax highlighter
	use 'nvim-treesitter/nvim-treesitter-textobjects' -- additional text objects for treesitter
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'
	use { 'numToStr/Comment.nvim',
		requires = {
			'JoosepAlviste/nvim-ts-context-commentstring'
		}
	}
	use 'norcalli/nvim-colorizer.lua'
	use 'folke/zen-mode.nvim'
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	use 'akinsho/nvim-bufferline.lua'
	-- use 'github/copilot.vim'

	use 'lewis6991/gitsigns.nvim'
	use 'dinhhuy258/git.nvim' -- For git blame & browse
	use {                  -- buffer tabs
		'romgrk/barbar.nvim',
		requires = 'nvim-web-devicons'
	}

	use { -- search and replace multiple files in the working directory
		's1n7ax/nvim-search-and-replace',
		config = function()
			require 'nvim-search-and-replace'.setup()
		end,
	}

	use { -- aesthetic start screen
		'goolord/alpha-nvim',
		config = function()
			require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
		end
	}

	use { -- smart pair autocompletion
		'ZhiyuanLck/smart-pairs',
		event = 'InsertEnter',
		config = function()
			require('pairs'):setup()
		end
	}

	-- colorschemes
	use 'folke/tokyonight.nvim'
	use 'EdenEast/nightfox.nvim'
	use 'JoosepAlviste/palenightfall.nvim'

	-- -- automatically set up your configuration after cloning packer.nvim
	-- -- Put this at the end after all plugins
	-- if status then
	-- 	packer.sync()
	-- end
end)
