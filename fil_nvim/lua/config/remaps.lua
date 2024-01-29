vim.g.mapleader = " "

vim.keymap.set("n", "U", "<c-r>")

-- splits
vim.keymap.set("n", "<leader>wh", ":split<cr>")
vim.keymap.set("n", "<leader>wv", ":vsplit<cr>")
vim.keymap.set("n", "<leader>wd", ":close<cr>")
vim.keymap.set("n", "<leader>wm", ":only<cr>")
vim.keymap.set("n", "<leader>h", "<c-w>h<cr>")
vim.keymap.set("n", "<leader>j", "<c-w>j<cr>")
vim.keymap.set("n", "<leader>k", "<c-w>k<cr>")
vim.keymap.set("n", "<leader>l", "<c-w>l<cr>")

-- indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- center screen
vim.api.nvim_create_autocmd({ "InsertEnter" }, { command = "norm zz" })
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- move highlighted lines as block
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- don't continue comments on newlines
vim.api.nvim_create_autocmd({ "FileType" }, { command = "set formatoptions-=cro" })

-- close quick fix list
vim.keymap.set("n", "<leader>cc", "<cmd>cclose<cr>")
vim.keymap.set("n", "<leader>co", "<cmd>copen<cr>")

-- diagnostics
vim.keymap.set("n", "<leader>fp", "<cmd>lua vim.diagnostic.goto_next()<cr>")
vim.keymap.set("n", "<leader>fo", "<cmd>lua vim.diagnostic.goto_prev()<cr>")

-- terminal
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")

vim.keymap.set('v', '<D-c>', '"+y')         -- Copy
vim.keymap.set('n', '<D-v>', '"+P')         -- Paste normal mode
vim.keymap.set('v', '<D-v>', '"+P')         -- Paste visual mode
vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

-- trigger renaming
vim.keymap.set("n", "<leader>rn", ":IncRename ")
