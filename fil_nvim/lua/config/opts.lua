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

vim.opt.scrolloff = 8
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.breakindent = true
vim.opt.wrap = true

vim.opt.backspace = { "indent,eol,start" }

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hidden = true

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.updatetime = 50
vim.opt.termguicolors = true
vim.opt.fileformats = { "unix", "dos" }

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_cargo_provider = 0
vim.g.python3_host_prog = "~/.config/nvim/.venv/bin/python3"
vim.g.Tex_IgnoredWarnings = "Underfull"
vim.g.vimtex_quickfix_ignore_filters = "Underfull"
vim.g.neoformat_basic_format_trim = 1
vim.g.neoformat_basic_format_align = 1
vim.g.neoformat_basic_format_retab = 0
vim.g.latexindent_opt = "-m"

vim.cmd([[set noshowmode]])
