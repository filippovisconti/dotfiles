return {}
--[[ return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = { config = { icon_preset = "diamond" } },
                ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
                ["core.integrations.nvim-cmp"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/Developer/notes",
                        },
                        default_workspace = "notes",
                    },
                },
                ["core.keybinds"] = {
                    -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
                    config = {
                        default_keybinds = true,
                        neorg_leader = "<Leader><Leader>",
                    },
                },
                ["core.esupports.metagen"] = { config = { type = "auto", update_date = true } },
                ["core.qol.toc"] = {},
                ["core.qol.todo_items"] = {},
                ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
                ["core.export"] = {},
                ["core.export.markdown"] = { config = { extensions = "all" } },
                ["core.ui"] = {},
                ["core.ui.calendar"] = {},
            },
        }

        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
    end,
} ]]
