local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)


-- EXPERIMENT: Try error handling for termux port
local lspconfig = require('lspconfig')

local function setup_lua_ls()
  return lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
end

-- .lua_ls.setup(lsp.nvim_lua_ls())
local function error_handler(err)
  print('Error encountered while setting up lua_ls:', err)
end
xpcall(setup_lua_ls, error_handler)

-- lua language server setup (remove for termux)
-- This was before the error handling:
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»',
})

lsp.setup()

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})

null_ls.setup({
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
    --- you can add more stuff here if you need it
  end,
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.djlint,
    null_ls.builtins.formatting.prettierd,
  },
})
