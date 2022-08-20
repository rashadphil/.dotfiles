local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("rp.lsp.lsp-installer")
require("rp.lsp.handlers").setup()
