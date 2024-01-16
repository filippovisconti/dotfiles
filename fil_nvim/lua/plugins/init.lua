local plugins = {
    -- themes
    "daschw/leaf.nvim",
    {
      "rose-pine/neovim",
      name = "rose-pine"
    },
    "ellisonleao/gruvbox.nvim",
    "rmehri01/onenord.nvim",
    "rebelot/kanagawa.nvim",
    "NLKNguyen/papercolor-theme",
    -- improve vim
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 1000
      end,
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    },
    {
      'numToStr/Comment.nvim',
      opts = {
        -- add any options here
        padding = true,
        toggler = {
          ---Line-comment toggle keymap
          line = 'gcc',
          ---Block-comment toggle keymap
          block = 'gbc',
        },
        ---LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
          ---Line-comment keymap
          line = 'gc',
          ---Block-comment keymap
          block = 'gb',
        },
  
      },
      lazy = false,
    },
    "tpope/vim-surround",
    "kevinhwang91/promise-async",
    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      opts = {}
    },
    {
      'kevinhwang91/nvim-ufo',
      dependencies = { 'kevinhwang91/promise-async' } --[[ ,
      config = function()
        require('ufo').setup({
          provider_selector = function(bufnr, filetype, buftype)
            return { 'treesitter', 'indent' }
          end
        })
      end ]]
    },
    "windwp/nvim-ts-autotag",
    {
      "ggandor/leap.nvim",
      config = function()
        require("leap").add_default_mappings()
      end
    },
    -- {
    --   "m4xshen/hardtime.nvim",
    --   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    --   opts = {disable_mouse = false}
    -- },
    {
      "chentoast/marks.nvim",
      config = function()
        require("marks").setup({
          mappings = {
            next = "ms",
            prev = "ma",
          }
        })
      end
    },
    "tpope/vim-fugitive",
  
    -- formatting
    "RRethy/vim-illuminate",
    {
      "mcauley-penney/tidy.nvim",
      opts = {
        filetype_exclude = { "markdown", "diff" }
      },
    },
  
    -- UI
    {
      "hedyhli/outline.nvim",
      lazy = true,
      cmd = { "Outline", "OutlineOpen" },
      keys = { -- Example mapping to toggle outline
        { "<leader>tt", "<cmd>Outline<CR>", desc = "Toggle outline" },
      },
      opts = {
        -- Your setup opts here
      },
    },
    {
      "JManch/sunset.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        latitude = 47.3769,
        longitude = 8.5417,
      },
    },
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.4",
      dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    "archibate/lualine-time",
    {
      "nvim-lualine/lualine.nvim",
      config = function()
        require("lualine").setup({
          options = {
            section_separators = { '', '' },
            component_separators = { '', '' },
          },
          sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 'ctime' },
            lualine_y = { 'encoding', 'fileformat', 'filetype' },
            lualine_z = { 'location' },
          }
        })
      end
    },
    "romgrk/barbar.nvim",
    { "shortcuts/no-neck-pain.nvim", version = "*" },
    {
      "lewis6991/gitsigns.nvim",
      config = function()
        require("gitsigns").setup()
      end
    },
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("todo-comments").setup()
      end
    },
  
    {
      -- start screen
      "goolord/alpha-nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("alpha").setup(require("alpha.themes.startify").config)
      end
    },
    {
      "j-morano/buffer_manager.nvim",
      config = function()
        vim.keymap.set("n", "<c-b>", "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<cr>")
      end
    },
    {
      "folke/trouble.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    "gennaro-tedesco/nvim-peekup",
    {
      "NvChad/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup()
      end
    },
    {
      'gelguy/wilder.nvim',
      config = function()
        require("wilder").setup({ modes = { ":", "/", "?" } })
      end,
    },
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    {
      "folke/noice.nvim",
      event = "VeryLazy",
  
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
      }
    },
    -- lsp and completion
    {
      "nvim-treesitter/nvim-treesitter",
      config = function()
        vim.cmd [[TSUpdate]]
      end
    },
    "neovim/nvim-lspconfig",
    "lervag/vimtex",
    "VonHeikemen/lsp-zero.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
      "nvimdev/lspsaga.nvim",
      config = function()
        require("lspsaga").setup({
          outline = {
            layout = "float"
          }
        })
      end,
    },
    {
      "smjonas/inc-rename.nvim",
      config = function()
        require("inc_rename").setup()
      end,
    },
  
    -- completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "saadparwaiz1/cmp_luasnip",
    {
      "roobert/tailwindcss-colorizer-cmp.nvim",
      config = function()
        require("tailwindcss-colorizer-cmp").setup({
          color_square_width = 2,
        })
      end
    },
    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      ft = { "markdown" },
      build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
      "nvim-neorg/neorg",
      build = ":Neorg sync-parsers",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
              config = {
                workspaces = {
                  notes = "~/Developer/notes",
                },
                default_workspace = "notes",
              },
            },
          },
        }
  
        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
      end,
    },
    -- snippets
    {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
      version = "v2.*",
      build = "make install_jsregexp",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end
    },
    "Vigemus/iron.nvim",
    -- debugging
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui"
  }
  
  require("lazy").setup(plugins)
  