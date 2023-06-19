return {
	{
		"karb94/neoscroll.nvim",
		event = "WinScrolled",
		config = function()
			require("neoscroll").setup({
				-- All these keys will be mapped to their corresponding default scrolling animation
				mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
				hide_cursor = true, -- Hide cursor while scrolling
				stop_eof = true, -- Stop at <EOF> when scrolling downwards
				use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
				respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
				cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
				easing_function = "cubic", -- Default easing function
				pre_hook = nil, -- Function to run before the scrolling animation starts
				post_hook = nil, -- Function to run after the scrolling animation ends
			})
		end,
	},
	{ "editorconfig/editorconfig-vim", event = "VeryLazy" },
	{ "jparise/vim-graphql", event = "VeryLazy" },
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if opts.ensure_installed ~= "all" then
				opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, "graphql")
			end
		end,
	},
	{
		"tpope/vim-surround",
		event = "VeryLazy",
		-- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
		-- setup = function()
		--  vim.o.timeoutlen = 500
		-- end
	},
	{
		"L3MON4D3/LuaSnip",
		config = function(plugin, opts)
			require("plugins.configs.luasnip")(plugin, opts) -- include the default astronvim config that calls the setup call
			require("luasnip.loaders.from_vscode").lazy_load({
				paths = { vim.fn.expand("$XDG_CONFIG_HOME/astronvim/lua/user/snippets") },
			}) -- load snippets paths
		end,
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({
				patterns = { ".git" },
			})
		end,
	},
	{ "ethanholz/nvim-lastplace", event = "VeryLazy" },
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
	-- {
	-- 	"mattn/emmet-vim",
	-- 	fevent = "VeryLazy",
	-- },
}
