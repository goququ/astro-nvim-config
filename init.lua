local config = {
	colorscheme = "dracula",
	lsp = {
		formatting = {
			timeout_ms = 10000,
		},
	},
	polish = function()
		-- vim.api.nvim_command("SessionManager load_current_dir_session")
	end,
}

return config
