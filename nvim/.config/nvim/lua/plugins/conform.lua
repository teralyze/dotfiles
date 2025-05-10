return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")
			conform.setup({
				formatters_by_ft = {
					rust = { "rustfmt" },
					lua = { "stylua" },
					sh = { "shfmt" },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				},
			})
			vim.keymap.set({ "n" }, "<leader>gf", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end, { desc = "Format file." })
		end,
	},
}
