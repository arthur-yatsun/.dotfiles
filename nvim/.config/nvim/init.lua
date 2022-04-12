-- general
require "user.options"
require "user.plugins"
require "user.keymaps"

-- auto completions
require "user.cmp"
require "user.lsp"
require "user.copilot"

-- appearance
require "user.colorscheme"
require "user.lualine"
require "user.bufferline"
require "user.treesitter"
require "user.alpha"
require "user.indentline"
-- require "user.minimap"

-- editor features
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
-- require "user.impatient"


-- other
require "user.nvim-tree"
require "user.telescope"
-- connects automatically to the active python venv
require "user.py_env"


require "user.autocommands"
