local config = {
	colorscheme = "dracula",
	lsp = {
		formatting = {
			timeout_ms = 10000,
		},
		servers = {
			"graphql",
			"astro",
		},
		config = {
			graphql = function()
				return {
					cmd = { "graphql-lsp", "server", "-m", "stream" },
					filetypes = { "graphql", "typescriptreact", "typescript", "javascript", "javascriptreact" },
					root_dir = require("lspconfig").util.root_pattern(
						".graphqlrc*",
						".graphql.config.*",
						"graphql.config.*"
					),
				}
			end,
			astro = function()
				return {
					filetypes = { "astro" },
					cmd = { "astro-ls", "--stdio" },
					init_options = {
						typescript = {},
					},
					root_dir = require("lspconfig").util.root_pattern(
						"package.json",
						"tsconfig.json",
						"jsconfig.json",
						".git"
					),
				}
			end,
		},
	},
	polish = function()
		-- require("telescope").load_extension("projects")

		vim.api.nvim_command("SessionManager load_current_dir_session")
	end,
}

return config
