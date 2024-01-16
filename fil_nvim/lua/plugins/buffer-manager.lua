return     {
    "j-morano/buffer_manager.nvim",
    config = function()
      vim.keymap.set("n", "<c-b>", "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<cr>")
    end
  }