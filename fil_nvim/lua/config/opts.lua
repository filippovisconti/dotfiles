vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "yes"
--vim.opt.colorcolumn = "80"

local width = 4
vim.opt.tabstop = width
vim.opt.softtabstop = width
vim.opt.shiftwidth = width
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hidden = true

vim.opt.updatetime = 50
vim.opt.termguicolors = true

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_cargo_provider = 0
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"

vim.cmd [[set noshowmode]]
