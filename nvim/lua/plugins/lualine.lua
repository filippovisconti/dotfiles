return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				section_separators = { "", "" },
				component_separators = { "", "" },
				-- disabled_filetypes = { "NvimTree", "packer" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "ctime" },
				lualine_y = { "encoding", "fileformat", "filetype" },
				lualine_z = { "location" },
			},
			extensions = { "quickfix", "nvim-tree", "fzf", "lazy", "mason", "toggleterm", "trouble" },
		})
	end,
}
