if vim.g.neovide then
	vim.opt.linespace = 18
	vim.g.neovide_transparency = 0.3
	vim.g.neovide_window_blurred = true
	-- vim.g.neovide_padding_top = 0
	-- vim.g.neovide_padding_bottom = -20
	-- vim.g.neovide_padding_right = -10
	-- vim.g.neovide_padding_left = 0
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_refresh_rate = 120
	vim.g.neovide_refresh_rate_idle = 5
	vim.o.guifont = "IosevkaTerm Nerd Font:h18"
	-- vim.o.guifont = "MonoLisa:h15"
	--vim.g.neovide_theme = 'auto'
	vim.g.neovide_scale_factor = 1.0
	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.25)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1 / 1.25)
	end)
end
