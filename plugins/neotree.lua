return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	cmd = "Neotree",
	opts = {
		window = {
			width = 20,
			auto_expand_width = true,
		},
		filesystem = {
			filtered_items = {
				visible = true,
			},
		},
	},
}
