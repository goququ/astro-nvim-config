local terminalsCount = 1
local function addTerminal()
	terminalsCount = terminalsCount + 1
	local command = string.format("%sToggleTerm direction=horizontal size=14", terminalsCount)

	vim.api.nvim_command(command)
end

local function consoleLog()
	local variable = vim.fn.expand("<cword>")
	local file_type = vim.bo.filetype
	if file_type == "typescript" or file_type == "typescriptreact" then
		vim.cmd("normal! oconsole.log('LOG: " .. variable .. "', " .. variable .. ")")
	end
end

return {
	n = {
		["<leader>xl"] = { consoleLog, desc = "Console log some variable" },
		["J"] = { "mzJ`z", desc = "" },
		["n"] = { "nzzzv", desc = "Next match centered" },
		["N"] = { "Nzzzv", desc = "Prev match centered" },
		["<C-c>"] = { "<cmd>close<cr>", desc = "Just close command" },
		["<C-`>"] = { "<cmd>ToggleTerm direction=horizontal size=14<cr>", desc = "Toggle terminal" },
		["+"] = {
			addTerminal,
			desc = "Add terminal",
		},
		["<leader>fp"] = { "<CMD>Telescope projects<CR>", desc = "Find projects" },
		["<leader>xa"] = { "ggVG", desc = "Select entire file" },
	},
	i = {
		["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
		["<C-c>"] = { "<cmd>close<cr>", desc = "Just close command" },
	},
	v = {
		["<C-a>"] = { "ggVG", desc = "Select entire file" },
		["<leader>xl"] = { consoleLog, desc = "Console log some variable" },
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
