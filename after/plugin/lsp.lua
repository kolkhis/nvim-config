local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- require('lspconfig').pyright.setup({
-- 	cmd = { "pyright-langserver", "--stdio" },
-- 	filetypes = { "python" },
-- 	settings = {
-- 		python = {
-- 			analysis = {
-- 				autoSearchPaths = true,
-- 				diagnosticMode = "workspace",
-- 				useLibraryCodeForTypes = true
-- 			},
-- 		},
-- 	},
-- 	single_file_support = true
-- })
--]]
lsp.setup()

