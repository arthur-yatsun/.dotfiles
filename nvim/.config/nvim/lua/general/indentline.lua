----local status_ok, indent_blankline = pcall(require, "indent_blankline")
----if not status_ok then return end
--
--vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
--vim.g.indent_blankline_filetype_exclude = {
--    "help", "startify", "dashboard", "packer", "neogitstatus", "NvimTree",
--    "Trouble"
--}
--vim.g.indentLine_enabled = 1
--vim.g.indent_blankline_char = "▏"
--
--vim.g.indent_blankline_show_trailing_blankline_indent = false
--vim.g.indent_blankline_show_first_indent_level = true
----vim.g.indent_blankline_use_treesitter = true
--vim.g.indent_blankline_show_current_context = true
----
------ HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
----vim.wo.colorcolumn = "99999"
----
--vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"
----
----indent_blankline.setup({show_current_context = true})
--
--
--local status_ok, indent_blankline = pcall(require, "ibl")
--if not status_ok then return end
--
--indent_blankline.setup({show_current_context = true})