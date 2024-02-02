return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>tt", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  opts = {
    outline_window = {

      width = 15,
      relative_width = true,
      auto_close = false,
      -- Automatically scroll to the location in code when navigating outline window.
      auto_jump = false,
    },
  },
}
