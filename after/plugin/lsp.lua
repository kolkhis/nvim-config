local host_os = require('kolkhis.detect_os')
if host_os.is_linux or host_os.is_termux then
    ConfigPath = vim.fs.normalize('~/.dotfiles/nvim/.config/nvim/stylua.toml')
else
    ConfigPath = vim.fs.normalize('E:/Coding/.config/stylua.toml')
end

vim.lsp.config.lua_ls = {
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
                styluaArgs = { '--config-path', ConfigPath },
            },
        },
    },
}

vim.lsp.config.bashls = {
    cmd = { 'bash-language-server', 'start' },
    filetypes = { 'sh', 'bash', },
}

vim.lsp.enable({
    'lua_ls', 'bashls', 'gopls',
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client ~= nil and client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})
