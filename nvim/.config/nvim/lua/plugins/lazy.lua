-- Bootstrap lazy.nvim
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

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
--vim.g.mapleader = " "
--vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugin
		{
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
		{ "neovim/nvim-lspconfig" },
		{
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
		},
		{ "hrsh7th/nvim-cmp" },
		{ "L3MON4D3/LuaSnip" },
		{
			"mfussenegger/nvim-lint",
			event = {
				"BufReadPre",
				"BufNewFile",
			},
			config = function()
				local lint = require("lint")

				lint.linters_by_ft = {
					python = { "flake8" },
				}

				local lint_autogroup = vim.api.nvim_create_augroup("lint", { clear = true })

				vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
					group = lint_autogroup,
					callback = function()
						lint.try_lint()
					end,
				})

				vim.keymap.set("n", "<leader>l", function()
					lint.try_lint()
				end)
			end,
		},
		{
			"stevearc/conform.nvim",
		},
		{ "rose-pine/neovim", name = "rose-pine" },
		{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.8",
			-- or                              , branch = '0.1.x',
			dependencies = { "nvim-lua/plenary.nvim" },
		},
		{ "ThePrimeagen/harpoon" },
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
			-- use opts = {} for passing setup options
			-- this is equalent to setup({}) function
		},
		{ "numToStr/Comment.nvim" },
		{ "terrortylor/nvim-comment" },
		{ "lewis6991/gitsigns.nvim" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	--install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = false },
})
