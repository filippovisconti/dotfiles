vim.keymap.set('n', '<leader>ff',
  ":silent lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<cr>", {})
vim.keymap.set('n', '<leader>fg',
  ":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({}))<cr>", {})
vim.keymap.set('n', '<leader>fc',
  ":lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_ivy({}))<cr>", {})
vim.keymap.set('n', '<leader>fh',
  ":lua require'telescope.builtin'.help_tags(require('telescope.themes').get_ivy({}))<cr>", {})
vim.keymap.set('n', '<leader>fd',
  ":lua require'telescope.builtin'.diagnostics(require('telescope.themes').get_ivy({}))<cr>", {})
vim.keymap.set('n', '<leader>fy',
  ":lua require('telescope').extensions.yank_history.yank_history()<cr>", {})
local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-n>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<C-p>"] = actions.toggle_selection + actions.move_selection_better,
        ["<Tab>"] = actions.move_selection_next,
        ["<S-Tab>"] = actions.move_selection_previous,
      },
    },
  },
})
require("telescope").load_extension('harpoon')
require("telescope").load_extension("yank_history")

local actions = require("telescope.actions")
require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}
