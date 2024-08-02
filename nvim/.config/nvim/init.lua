-- general
require("general.options")
require("general.keymaps")

-- plugins
require("plugins.lazy")

-- lsp
require("lsp.config")
require("lsp.mason")
require("lsp.cmp")

-- syntax
require("syntax.formatters")
require("syntax.treesitter")
require("syntax.autopairs")
require("syntax.comment")
require("syntax.gitsigns")

-- navigation
require("navigation.telescope")
require("navigation.harpoon")

vim.cmd("colorscheme rose-pine-main")
