return {
	"hedyhli/outline.nvim",
	lazy = true,
	cmd = { "Outline", "OutlineOpen" },
	keys = { -- Example mapping to toggle outline
		{ "<leader>tt", "<cmd>Outline<CR>", desc = "Toggle outline" },
	},
	opts = {
		outline_window = {

			width = 20,
			relative_width = true,
			auto_close = true,
			-- Automatically scroll to the location in code when navigating outline window.
			auto_jump = true,
		},
		preview_window = {
			-- Automatically open preview of code location when navigating outline window
			auto_preview = false,
		},
	},
}
