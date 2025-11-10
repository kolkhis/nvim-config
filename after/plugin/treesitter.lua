require('nvim-treesitter.configs').setup({
    -- :h nvim-treesitter-modules
    -- `:TSInstallInfo` for a list of available parsers
    ensure_installed = {
        'bash',
        'python',
        'c',
        'lua',
        'vim',
        'vimdoc',
        'javascript',
        'typescript',
        'perl',
        'rust',
        'cpp',
        'java',
        'r',
        'html',
        'htmldjango',
        'css',
        'sql',
        'go',
        'gomod',
        'gosum',
        'gowork',
        'php',
        'phpdoc',
        'markdown',
        'markdown_inline',
        'comment',
        'psv',
        'nix',
        'terraform',

        'xml',
        'csv',
        'json',
        'yaml',
        'toml',
        'ini',

        'gpg',
        'regex',
        'todotxt',
        'regex',
        'awk',
        'pymanifest',
        'dockerfile',
        'query',
        'make',
        'cmake',
        'http',
        'diff',
        'jq',
        'passwd',

        'gitcommit',
        'gitignore',
        'git_config',
        'git_rebase',
        'gitattributes',
    },

    sync_install = false,
    auto_install = false,
    ignore_install = {},
    modules = {},

    highlight = {
        enable = true,
        -- Disable slow treesitter highlight for large files
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,

        indent = { enable = false },
        additional_vim_regex_highlighting = false,
    },
})
