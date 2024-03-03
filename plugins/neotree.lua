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
			-- Add custom mappings here
			window = {
				mappings = {
					["<C-f>"] = function(state)
						-- Get the path of the currently selected item
						local node = state.tree:get_node()
						if node.type == "directory" then
							-- If it's a directory, change Telescope's cwd to that directory and open find_files
							require("telescope.builtin").live_grep({ cwd = node.path })
						else
							-- If it's not a directory, you can choose to do nothing, or customize this part
							print("Not a directory")
						end
					end,
				},
			},
		},
	},
}
