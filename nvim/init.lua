local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("config.opts")
require("config.neovide")
require("config.remaps")

require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    checker = {
        enabled = true,
        notify = false,
        frequency = 3600,
    },
})
require("config.style")
