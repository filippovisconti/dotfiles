vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<c-tab>", "copilot#Accept('CR')", { expr = true, silent = true })

vim.g.copilot_enabled = true
