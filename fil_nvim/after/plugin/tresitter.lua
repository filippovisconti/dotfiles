require("nvim-treesitter.configs").setup({
	-- ensure_installed = { "javascript", "typescript", "c", "lua", "rust" },
	ensure_installed = { "c", "lua", "rust", "python", "typescript" },
	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = false,
	},

	autotag = {
		enable = true,
		enable_close_on_slash = false,
	},
})
