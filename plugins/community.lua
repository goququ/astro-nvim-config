return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",
	-- example of imporing a plugin, comment out to use it or add your own
	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity

	{ import = "astrocommunity.colorscheme.dracula" },
	{ import = "astrocommunity.editing-support.todo-comments-nvim.todo-comments-nvim" },
	{ import = "astrocommunity.editing-support.nvim-ts-rainbow" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.pack.markdown" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.docker" },
	{ import = "astrocommunity.pack.bash" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.tailwindcss" },
}
