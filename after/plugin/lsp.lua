local host_os = require('kolkhis.detect_os')
local config_path
if host_os.is_linux or host_os.is_termux then
    config_path = vim.fs.normalize('~/.dotfiles/nvim/.config/nvim/stylua.toml')
else
    config_path = vim.fs.normalize('E:/Coding/.config/stylua.toml')
end

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            completion = {
                callSnippet = 'Replace',
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false, -- Fix for "Configure current file" prompt
            },
            formatting = {
                formatAs = 'lua',
                styluaArgs = { '--config-path', config_path },
            },
        },
    },
})

-- :h lspconfig-all
vim.lsp.enable({
    'lua_ls',
    'bashls',
    'gopls',
    'terraformls',
    'ansiblels',
    'pyright',
    'vimls',
    'clangd',
    'marksman',
})
