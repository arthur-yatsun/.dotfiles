local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "modules.lsp.lsp-installer"
require("modules.lsp.handlers").setup()

require "modules.lsp.null-ls"

