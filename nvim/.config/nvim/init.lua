local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	install = { colorscheme = { "ashen" } },
	checker = {
    enabled = true,
    notify = false
  }
})

--------------------------------------------------------------------------------------

-- VIM Settings

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.softtabstop = 2
		vim.bo.expandtab = true
	end,
})
vim.cmd([[set relativenumber]])
vim.cmd([[set number]])
vim.cmd([[set smartcase]])
vim.cmd([[colorscheme ashen]])
vim.cmd([[set noshowmode]])
vim.diagnostic.config({
	underline = true,
	virtual_text = {
		prefix = "",
		severity = nil,
		source = "if_many",
		format = nil,
	},
	signs = true,
	severity_sort = true,
	update_in_insert = true,
})
