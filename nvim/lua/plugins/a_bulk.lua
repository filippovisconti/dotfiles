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
        style = "storm",
        priority = 1000,
        opts = {
        },
    },
    "NLKNguyen/papercolor-theme",
    -- -----------

    "tpope/vim-surround",
    "kevinhwang91/promise-async",
    "windwp/nvim-ts-autotag",

    -- formatting
    "RRethy/vim-illuminate",
    "MunifTanjim/prettier.nvim",

    -- UI
    "archibate/lualine-time",
    "romgrk/barbar.nvim",
    "gennaro-tedesco/nvim-peekup",

    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",

    -- lsp and completion
    "neovim/nvim-lspconfig",
    "VonHeikemen/lsp-zero.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "OmniSharp/omnisharp-vim",
    "lervag/vimtex",

    -- completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "saadparwaiz1/cmp_luasnip",

    -- debugging
    -- "mfussenegger/nvim-dap",
    -- "rcarriga/nvim-dap-ui",
}

return plugins
