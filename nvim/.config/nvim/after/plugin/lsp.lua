local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()

--require'lspconfig'.terraformls.setup{}
--vim.api.nvim_create_autocmd({"BufWritePre"}, {
--  pattern = {"*.tf", "*.tfvars"},
--  callback = vim.lsp.buf.formatting_sync(),
--})
