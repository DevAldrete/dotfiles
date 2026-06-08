return {
	{
		"Shatur/neovim-ayu",
		config = function()
			require("ayu").setup({
				mirage = false,
				terminal = true,
				overrides = {},
			})
		end,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "ayu",
		},
	},
}
