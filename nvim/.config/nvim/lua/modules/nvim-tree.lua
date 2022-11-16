-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then return end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then return end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = false,

    auto_reload_on_write = true,
    open_on_setup = true,
    open_on_setup_file = true,
    open_on_tab = true,

    -- list of filetypes that will prevent open_on_setup
    ignore_ft_on_setup = {"startify", "dashboard", "alpha"},

    sort_by = "name",
    -- changes the tree root directory on DirChanged and refreshes the tree
    update_cwd = true,

    hijack_directories = {
        enable = true,
        auto_open = true
    },
    diagnostics = {
        enable = true,
        icons = {hint = "", info = "", warning = "", error = ""}
    },
    update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = {}
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500
    },
    view = {
        width = 40,
        hide_root_folder = false,
        side = "left",
        mappings = {
            custom_only = false,
            list = {
                {key = {"l", "<CR>", "o"}, cb = tree_cb "edit"},
                {key = "h", cb = tree_cb "close_node"},
                {key = "v", cb = tree_cb "vsplit"}
            }
        },
        number = true,
        relativenumber = true
    },
    renderer = {
        root_folder_modifier = ":t",
        highlight_git = true,
        icons = {
            glyphs = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",
                    untracked = "U",
                    ignored = "◌"
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = ""
                }
            }
        }
    },
    actions = {
        open_file = {
            quit_on_open = false,
            window_picker = {
                enable = false
            }
        }
    }
}
