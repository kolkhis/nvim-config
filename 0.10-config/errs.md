The `require('lspconfig')` "framework" is deprecated, use vim.lsp.config (see :help lspconfig-nvim-0.11) instead.
Feature will be removed in nvim-lspconfig v3.0.0
stack traceback:
        .../site/pack/packer/start/nvim-lspconfig/lua/lspconfig.lua:81: in function '__index'
        .../pack/packer/start/lsp-zero.nvim/lua/lsp-zero/server.lua:81: in function 'setup'
        ...e/pack/packer/start/lsp-zero.nvim/lua/lsp-zero/setup.lua:108: in function 'setup_installed'
        ...e/pack/packer/start/lsp-zero.nvim/lua/lsp-zero/setup.lua:46: in function 'apply'
        ...te/pack/packer/start/lsp-zero.nvim/lua/lsp-zero/init.lua:40: in function 'setup'
        ...kolkhis/.dotfiles/nvim/.config/nvim/after/plugin/lsp.lua:13: in main chunk
[lspconfig] config "stylua" not found. Ensure it is listed in `configs.md` or added as a custom server.
[lspconfig] config "stylua" not found. Ensure it is listed in `configs.md` or added as a custom server.

Error in /home/kolkhis/.dotfiles/nvim/.config/nvim/after/plugin/lsp.lua:
E5113: Lua chunk: /usr/share/nvim/runtime/lua/vim/lsp.lua:335: name: expected non-wildcard string, got n
il
stack traceback:
        [C]: in function 'error'
        vim/shared.lua: in function 'validate'
        /usr/share/nvim/runtime/lua/vim/lsp.lua:335: in function 'validate_config_name'
        /usr/share/nvim/runtime/lua/vim/lsp.lua:410: in function 'config'
        ...kolkhis/.dotfiles/nvim/.config/nvim/after/plugin/lsp.lua:26: in main chunk

Error encountered while setting up lua_ls:
/usr/share/nvim/runtime/lua/vim/lsp.lua:412: cfg: expected table (hint: to resolve a config, use vim.lsp
.config["lua_ls"]), got nil
Error in /home/kolkhis/.dotfiles/nvim/.config/nvim/after/plugin/lsp.lua:
E5113: Lua chunk: /usr/share/nvim/runtime/lua/vim/lsp.lua:412: cfg: expected table (hint: to resolve a c
onfig, use vim.lsp.config["lspconfig"]), got nil
stack traceback:
        [C]: in function 'error'
        vim/shared.lua: in function 'validate'
        /usr/share/nvim/runtime/lua/vim/lsp.lua:412: in function 'config'
        ...kolkhis/.dotfiles/nvim/.config/nvim/after/plugin/lsp.lua:83: in main chunk

