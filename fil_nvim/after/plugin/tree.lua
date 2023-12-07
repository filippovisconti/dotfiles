vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "extension",
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})


vim.keymap.set("n", "<leader>0", "<cmd>NvimTreeToggle<cr>")
