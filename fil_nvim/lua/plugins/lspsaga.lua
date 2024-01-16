return {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({
        outline = {
          layout = "float"
        }
      })
    end,
  }