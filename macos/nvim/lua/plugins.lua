local status, packer = pcall(require, "packer")
if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	-- Your plugins go here
	use {
		'svrana/neosolarized.nvim',
		requires = { 'tjdevries/colorbuddy.nvim' }
	}

	-- ICONS
	use 'nvim-tree/nvim-web-devicons' --file icons

	-- TODO: learn about keybindings
	use 'nvim-tree/nvim-tree.lua'    -- similar to vim nerdtree

	use 'akinsho/nvim-bufferline.lua' -- bufferline at the bottom of nvim

	-- GIT
	use 'lewis6991/gitsigns.nvim'
	use 'dinhhuy258/git.nvim'

	-- TODO: find equivalent in LUA
	use 'tpope/vim-commentary' -- for commenting

	-- FOR NVIM TABS
	-- TODO: FIX key mapping for tabs
	use 'romgrk/barbar.nvim' -- tabs, clickable, icons etc, resizable


	use 'alexghergh/nvim-tmux-navigation' -- switching between tmux windows and nvim windows

	-- FOR NAVIGATION
	-- TODO: learn keybindings
	use 'ggandor/leap.nvim' -- for navigation within file
	-- use {'phaazon/hop.nvim', branch = 'v2'} -- for navigation


	-- LSP CONFIGURATIONS
	-- need to brew install typescript-language-server
	use 'nvim-lualine/lualine.nvim' -- Statusline
	-- TODO: study addtional config
	use 'neovim/nvim-lspconfig'     -- LSP. setup lsp config configurations
	-- :MasonInstall eslint_d
	-- run :Mason
	-- make sure lua-language-server and tailwindcss-language-server are installed
	-- also install other languages here
	use 'williamboman/mason.nvim'           -- install lsp servers``
	use 'williamboman/mason-lspconfig.nvim' -- bridge between lspconfig and mason

	-- CODE COMPLETION DROPDOWN SECTION
	use 'onsails/lspkind-nvim'               -- vscode-like pictograms in text dropdowns
	use 'hrsh7th/cmp-buffer'                 -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp'               -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/cmp-nvim-lsp-signature-help' -- nvim help for functions param signature
	use 'hrsh7th/nvim-cmp'                   -- node completion Completion
	use 'L3MON4D3/LuaSnip'                   -- snippet engine to make cmp.nvim work
	--TODO: learn key bindings
	--TODO: also add languages here
	use 'glepnir/lspsaga.nvim' -- LSP UIs dropdown formatting. Also has keybinding for diagnostics

	-- syntax highlightin etc g base on reading your code as tree
	-- need to run brew install treesitter
	-- also make sure nvimtree.rc.lua is updated for all your languages e.g. tsx py
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	use 'windwp/nvim-autopairs'  -- auto closing of ", {, [ etc
	use 'windwp/nvim-ts-autotag' -- autoclose and autorename html tag

	-- TELESCOPE
	-- TODO: learn keybindings
	use 'nvim-telescope/telescope.nvim'              -- searching for files and ripgrep. Search modal
	use 'nvim-telescope/telescope-file-browser.nvim' -- searching for files
	use "nvim-lua/plenary.nvim"                      -- required dependency  telescope

	-- PRETTIER
	-- TODO: add other languages here
	-- need to brew install fsouza/prettierd/prettierd
	use 'MunifTanjim/prettier.nvim'       -- prettier plugin for Neovim's built-in LSP client
	use 'jose-elias-alvarez/null-ls.nvim' -- dependency prettier. Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

	-- use 'github/copilot.vim'
end)
