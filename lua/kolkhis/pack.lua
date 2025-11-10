vim.pack.add({
    { src = 'https://github.com/tpope/vim-commentary' },
    { src = 'https://github.com/tpope/vim-surround' },
    { src = 'https://github.com/tpope/vim-repeat' },

    -- aesthetics
    { src = 'https://github.com/marko-cerovac/material.nvim' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },

    -- LSP
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/folke/lazydev.nvim" },
    { src = 'https://github.com/williamboman/mason.nvim' },
    { src = 'https://github.com/fatih/vim-go' },

    -- misc. utils
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
})

-- To delete plugins
-- vim.pack.del({'name'})
