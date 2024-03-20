return {
	"ThePrimeagen/refactoring.nvim",
	-- keys =
	-- {
	--     "<leadef>a",
	--     function()
	--         require("refactoring").select_refactor({ show_success_message = true, })
	--     end,
	--     mode = "v",
	--     noremap = true,
	--     silent = true,
	--     expr = false
	-- },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup()
	end,
}
