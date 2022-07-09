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
require "modules.colorscheme"
require "modules.lualine"
require "modules.bufferline"
require "modules.treesitter"
require "modules.context"
require "modules.alpha"
require "modules.indentline"

require "modules.minimap"
require "modules.outline"

-- editor features
require "modules.autopairs"
require "modules.comment"
require "modules.gitsigns"

-- other
require "modules.nvim-tree"
require "modules.telescope"

-- connects automatically to the active python venv
require "modules.py_env"

-- set colorcolumn
vim.cmd "set colorcolumn=90"

