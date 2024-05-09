vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local view_width_max = -1 -- fixed to start

local function get_view_width_max()
	return view_width_max
end
local function label(path)
	path = path:gsub(os.getenv("HOME"), "~", 1)
	return path:gsub("([a-zA-Z])[a-z0-9]+", "%1") .. (path:match("[a-zA-Z]([a-z0-9]*)$") or "")
end

local api = require("nvim-tree.api")
local function open_tab_silent(node)
	api.node.open.tab(node)
	vim.cmd.tabprev()
end

local preview = require("nvim-tree-preview")

-- Default config:
preview.setup({
	keymaps = {
		["<Esc>"] = { action = "close", unwatch = true },
		["<Tab>"] = { action = "toggle_focus" },
		["<CR>"] = { open = "edit" },
		["<C-t>"] = { open = "tab" },
		["<C-v>"] = { open = "vertical" },
		["<C-x>"] = { open = "horizontal" },
	},
	min_width = 10,
	min_height = 5,
	max_width = 85,
	max_height = 25,
	wrap = false, -- Whether to wrap lines in the preview window
	border = "rounded", -- Border style for the preview window
})
local on_attach = function(bufnr)
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end
	vim.keymap.set("n", "a", api.fs.create, opts("Create File Or Directory"))

	vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
	vim.keymap.set("n", "D", api.fs.trash, opts("Trash"))
	vim.keymap.set("n", "E", api.tree.expand_all, opts("Expand All"))
	vim.keymap.set("n", "g?", api.tree.toggle_help, opts("Help"))

	vim.keymap.set("n", "H", api.tree.toggle_hidden_filter, opts("Toggle Filter: Dotfiles"))
	vim.keymap.set("n", "I", api.tree.toggle_gitignore_filter, opts("Toggle Filter: Git Ignore"))
	vim.keymap.set("n", "U", api.tree.toggle_custom_filter, opts("Toggle Filter: Hidden"))

	vim.keymap.set("n", "o", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "O", api.node.open.no_window_picker, opts("Open: No Window Picker"))
	vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))

	vim.keymap.set("n", "P", preview.watch, opts("Preview (Watch)"))
	vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
	vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))

	vim.keymap.set("n", "W", api.tree.collapse_all, opts("Collapse"))
	vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
	vim.keymap.set("n", "y", api.fs.copy.filename, opts("Copy Name"))
	vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts("Copy Relative Path"))

	vim.keymap.set("n", "<Esc>", preview.unwatch, opts("Close Preview/Unwatch"))
	vim.keymap.set("n", "<2-LeftMouse>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<2-RightMouse>", api.tree.change_root_to_node, opts("CD"))
	vim.keymap.set("n", "<C-]>", api.tree.change_root_to_node, opts("CD"))

	vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<BS>", api.node.navigate.parent_close, opts("Close Directory"))

	vim.keymap.set("n", "-", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "<C-h>", api.node.open.horizontal, opts("Open: Horizontal Split"))
	-- Option B: Smart tab behavior: Only preview files, expand/collapse directories.
	vim.keymap.set("n", "<Tab>", function()
		local ok, node = pcall(api.tree.get_node_under_cursor)
		if ok and node then
			if node.type == "directory" then
				api.node.open.edit()
			else
				preview.node(node, { toggle_focus = true })
			end
		end
	end, opts("Preview"))
end

require("nvim-tree").setup({
	sort_by = "extension",
	on_attach = on_attach,
	-- renderer = { root_folder_label = label, group_empty = label },
	filters = {
		dotfiles = true,
		custom = {
			".git",
			"node_modules",
			".cache",
			".vscode",
			".turbo",
			".bruno",
		},
		exclude = { "[.]env", "[.]env[.].*" },
	},
	actions = {
		open_file = {
			quit_on_open = false,
		},
	},

	diagnostics = {
		enable = true,
		icons = { error = "", warning = "", hint = "", info = "" },
	},
	view = {
		side = "right",
		width = {
			min = 30,
			max = get_view_width_max,
		},
	},
})

vim.keymap.set("n", "T", open_tab_silent)
vim.keymap.set("n", "<leader>0", "<cmd>NvimTreeToggle<cr>")
