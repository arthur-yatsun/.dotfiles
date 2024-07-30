local options = {
	autoread = true, -- Deal with file loads after updating via git etc
	--background = "dark", -- update inherited terminal/gui background
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 2, -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	expandtab = true, -- convert tabs to spaces
	fileencoding = "utf-8", -- the encoding written to a file
	foldenable = false,
	foldmethod = "manual",
	guicursor = "", -- use block cursor always
	ignorecase = true, -- ignore case in search patterns
	linebreak = true, -- Stop words being broken on wrap
	mouse = "a", -- allow the mouse to be used in neovim
	number = true, -- set numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	pumheight = 10, -- pop up menu height
	relativenumber = true, -- set relative numbered lines
	scrolloff = 8, -- gives some space during scrolling up and down in the middle of the file
	shiftwidth = 4, -- the number of spaces inserted for each indentation
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 2, -- always show tabs
	sidescrolloff = 8, -- the same as scrolloff but for horizontall scroll
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	tabstop = 4, -- insert 4 spaces for a tab
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	updatetime = 500, -- faster completion (4000ms default)
	wrap = false, -- display lines as one long line
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	hlsearch = false,
	incsearch = true,
	colorcolumn = "120",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append("c")
--
vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
--[[ vim.cmd "highlight WinSeparator guifg=orange" ]]
