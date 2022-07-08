-- general
require "user.options"
require "user.plugins"
require "user.keymaps"
require "user.autocommands"
require "user.impatient"



-- auto completions
require "user.cmp"
require "user.lsp"


-- appearance
require "user.colorscheme"
require "user.lualine"
require "user.bufferline"
require "user.treesitter"
require "user.context"
require "user.alpha"
require "user.indentline"

require "user.minimap"
require "user.outline"


-- editor features
require "user.autopairs"
require "user.comment"
require "user.gitsigns"


-- other
require "user.nvim-tree"
require "user.telescope"


-- connects automatically to the active python venv
require "user.py_env"

-- set colorcolumn
vim.cmd "set colorcolumn=90"
