local terminalsCount = 1
local function addTerminal()
	terminalsCount = terminalsCount + 1
	local command = string.format("%sToggleTerm direction=horizontal size=14", terminalsCount)

	vim.api.nvim_command(command)
end

return {
	n = {
		["J"] = { "mzJ`z", desc = "" },
		["n"] = { "nzzzv", desc = "Next match centered" },
		["N"] = { "Nzzzv", desc = "Prev match centered" },
		["<C-c>"] = { "<cmd>close<cr>", desc = "Just close command" },
		["<C-`>"] = { "<cmd>ToggleTerm direction=horizontal size=14<cr>", desc = "Toggle terminal" },
		["+"] = {
			addTerminal,
			desc = "Add terminal",
		},
	},
	i = {
		["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
		["<C-c>"] = { "<cmd>close<cr>", desc = "Just close command" },
	},
	v = {
		["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
		["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line bottom" },
		["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line top" },
		["<C-d>"] = { "<C-d>zz", desc = "" },
		["<C-u>"] = { "<C-u>zz", desc = "" },
		["p"] = { [["_dP]], desc = "Enhance paste" },
		["<C-c>"] = { "<cmd>close<cr>", desc = "Just close command" },
	},
	x = {
		["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
	},
	t = {
		["<C-n>"] = { [[<C-\><C-n>]], desc = "Change terminal mode to normal" },
		["<C-`>"] = { "<cmd>ToggleTerm direction=horizontal size=14<cr>", desc = "Toggle terminal" },
		["+"] = {
			addTerminal,
			desc = "Add terminal",
		},
	},
}
