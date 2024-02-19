vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "extension",
  filters = {
    dotfiles = true,
  },
  -- actions = {
  --   open_file = {
  --     quit_on_open = true,
  --   }
  -- }
})


vim.keymap.set("n", "<leader>0", "<cmd>NvimTreeToggle<cr>")

local function open_tab_silent(node)
  local api = require("nvim-tree.api")

  api.node.open.tab(node)
  vim.cmd.tabprev()
end

vim.keymap.set('n', 'T', open_tab_silent)
