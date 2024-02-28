return {
	'nvim-tree/nvim-tree.lua',     -- file tree
	'nvim-tree/nvim-web-devicons', -- aesthetics
	'nvim-lualine/lualine.nvim',   -- Statusline
	'nvim-lua/plenary.nvim',       -- Common utilities
	'onsails/lspkind-nvim',        -- vscode-like pictograms
	'hrsh7th/cmp-buffer',          -- nvim-cmp source for buffer words
	'hrsh7th/cmp-nvim-lsp',        -- nvim-cmp source for neovim's built-in LSP
	'hrsh7th/nvim-cmp',            -- Completion
	'lukas-reineke/virt-column.nvim', -- thin colorcolumn line
	'folke/neodev.nvim',           -- lsp configurations for nvim lua API
    'ldelossa/litee.nvim',
    'ldelossa/litee-filetree.nvim',
    'ldelossa/litee-symboltree.nvim',
    'ldelossa/litee-calltree.nvim',
    'ldelossa/litee-bookmarks.nvim',
	{
		'ldelossa/gh.nvim',
		dependencies = { { 'ldelossa/litee.nvim', } }
	},
	'folke/lsp-colors.nvim',        -- creates missing LSP highlight groups
	'neovim/nvim-lspconfig',        -- LSP
	'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	-- 'sar/illuminate.nvim',                      -- highlights other uses of the word under the cursor
	'glepnir/lspsaga.nvim',                     -- LSP UIs
	'L3MON4D3/LuaSnip',
	'nvim-treesitter/nvim-treesitter',          -- syntax highlighter
	'nvim-treesitter/nvim-treesitter-textobjects', -- additional text objects for treesitter
	'nvim-telescope/telescope.nvim',
	'nvim-telescope/telescope-file-browser.nvim',
	'windwp/nvim-autopairs',
	'windwp/nvim-ts-autotag',
	{ 'numToStr/Comment.nvim',
		dependencies = {
			'JoosepAlviste/nvim-ts-context-commentstring'
		}
	},
	'norcalli/nvim-colorizer.lua',
	'folke/zen-mode.nvim',
	{
		"iamcco/markdown-preview.nvim",
		build = function() vim.fn["mkdp#util#install"]() end,
	},
	'akinsho/nvim-bufferline.lua',
	'github/copilot.vim',
	'lewis6991/gitsigns.nvim',
	'dinhhuy258/git.nvim', -- For git blame & browse
	{                  -- buffer tabs
		'romgrk/barbar.nvim',
		dependencies = 'nvim-web-devicons'
	},
	{ -- search and replace multiple files in the working directory
		's1n7ax/nvim-search-and-replace',
		config = function()
			require 'nvim-search-and-replace'.setup()
		end,
	},
	{ -- aesthetic start screen
		'goolord/alpha-nvim',
		config = function()
			require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
		end
	},
	{ -- smart pair autocompletion
		'ZhiyuanLck/smart-pairs',
		event = 'InsertEnter',
		config = function()
			require('pairs'):setup()
		end
	},
    -- obsidian
    {
        "epwalsh/obsidian.nvim",
        version = "*",  -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
        -- event = {
        --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
        --   "BufReadPre path/to/my-vault/**.md",
        --   "BufNewFile path/to/my-vault/**.md",
        -- },
        dependencies = {
          -- Required.
          "nvim-lua/plenary.nvim",
              },
        opts = {
          workspaces = {
            {
              name = "personal",
              path = "~/vaults/personal",
            },
            {
              name = "work",
              path = "~/vaults/work",
            },
          },
              },
      },
	-- colorschemes
	'folke/tokyonight.nvim',
	'EdenEast/nightfox.nvim',
	'JoosepAlviste/palenightfall.nvim',
}