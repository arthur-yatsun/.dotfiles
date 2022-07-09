local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics


null_ls.setup({
    debug = false,
    sources = {
        null_ls.builtins.code_actions.gitsigns,
        -- formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
        -- formatting.black.with({ extra_args = { "--fast" } }),
        -- formatting.stylua,
        -- diagnostics.flake8.with({extra_args = { "--max-line-length", "90" } }),
    },
})

-- increase timeout to 2 seconds
vim.lsp.buf.formatting_sync(nil, 2000)
