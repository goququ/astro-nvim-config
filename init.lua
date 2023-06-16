local config = {
	colorscheme = "dracula",
	lsp = {
		formatting = {
			timeout_ms = 10000,
		},
		servers = {
			"graphql",
		},
		config = {
			graphql = function()
				return {
					cmd = { "graphql-lsp", "server", "-m", "stream" },
					filetypes = { "graphql" },
					root_dir = require("lspconfig").util.root_pattern(".git"),
				}
			end,
		},
	},
	polish = function()
		require("telescope").load_extension("projects")

		vim.api.nvim_command("SessionManager load_current_dir_session")
	end,
}

return config
