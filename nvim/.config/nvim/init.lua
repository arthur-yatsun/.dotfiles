-- general
require "modules.options"
require "modules.plugins"
require "modules.keymaps"
require "modules.autocommands"
require "modules.impatient"

-- auto completions
require "modules.cmp"
require "modules.lsp"

-- appearance
require "modules.nvim-tree"
require "modules.colorscheme"
require "modules.lualine"
require "modules.bufferline"
require "modules.treesitter"
require "modules.context"
require "modules.alpha"
require "modules.indentline"

--[[ require "modulesminimap" ]]
require "modules.outline"

-- editor features
require "modules.autopairs"
require "modules.comment"
require "modules.gitsigns"
require "modules.telescope"
require "modules.marks"

-- connects automatically to the active python venv
require "modules.py_env"

-- set colorcolumn
vim.cmd "set colorcolumn=90"
