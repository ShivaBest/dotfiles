return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})
		require("neo-tree").setup({
			window = { width = 40 },
			opts = {
				filesystem = {
					follow_current_file = {
						enabled = true,
					},
				},
			},
		})
	end,
}
