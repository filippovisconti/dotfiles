local plugins = {
	-- themes
	"daschw/leaf.nvim",
	"ellisonleao/gruvbox.nvim",
	"rmehri01/onenord.nvim",
	"rebelot/kanagawa.nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	"NLKNguyen/papercolor-theme",

	"tpope/vim-surround",

	"kevinhwang91/promise-async",
	"windwp/nvim-ts-autotag",
	"MunifTanjim/prettier.nvim",

	"tpope/vim-fugitive",

	-- formatting
	"RRethy/vim-illuminate",

	-- UI
	"archibate/lualine-time",
	"romgrk/barbar.nvim",
	"gennaro-tedesco/nvim-peekup",

	"MunifTanjim/nui.nvim",
	"rcarriga/nvim-notify",

	-- lsp and completion
	"neovim/nvim-lspconfig",
	"lervag/vimtex",
	"VonHeikemen/lsp-zero.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"saadparwaiz1/cmp_luasnip",

	-- snippets
	"Vigemus/iron.nvim",
	-- debugging
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
}

return plugins
