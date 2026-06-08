return {
	"ThePrimeagen/99",
	config = function()
		local _99 = require("99")

		_99.setup({
			provider = _99.Providers.OpenCodeProvider,
			model = "deepseek-v4-flash",

			tmp_dir = "./temp",

			completion = {
				source = "native", -- Options: "native", "cmp", or "blink"
			},

			logger = {
				level = _99.DEBUG,
				path = "/tmp/99.debug",
				print_on_error = true,
			},

			md_files = {
				"AGENT.md",
				"CONTEXT.md",
			},
		})

		vim.keymap.set("n", "<leader>9s", _99.search, { desc = "99 Search Project" })
		vim.keymap.set("v", "<leader>9v", _99.visual, { desc = "99 Visual Selection" })
		vim.keymap.set("n", "<leader>9x", _99.stop_all_requests, { desc = "99 Stop Requests" })
		vim.keymap.set("n", "<leader>9l", _99.view_logs, { desc = "99 View Logs" })
	end,
}
