return  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup({
        mappings = {
          next = "ms",
          prev = "ma",
        }
      })
    end
  }