return {
	n = {
		["J"] = { "mzJ`z", desc = "" },
		["n"] = { "nzzzv", desc = "Next match centered" },
		["N"] = { "Nzzzv", desc = "Prev match centered" },
	},
	i = {
		["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
	},
	v = {
		["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
		["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line bottom" },
		["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line top" },
		["<C-d>"] = { "<C-d>zz", desc = "" },
		["<C-u>"] = { "<C-u>zz", desc = "" },
		["p"] = { [["_dP]], desc = "Enhance paste" },
	},
	x = {
		["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
	},
	t = {
		["<esc>"] = { [[<C-\><C-n>]], desc = "Change terminal mode to normal" },
	},
}
