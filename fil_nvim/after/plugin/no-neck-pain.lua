require("no-neck-pain").setup({
  width = 120,
  buffers = {
    scratchPad = {
      -- set to `false` to
      -- disable auto-saving
      enabled = true,
      -- set to `nil` to default
      -- to current working directory
      location = "~/Documents/",
    },
    bo = {
      filetype = "md"
    },
  },
})
