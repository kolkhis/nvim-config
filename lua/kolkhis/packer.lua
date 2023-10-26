--[[
-- Git cmds for easy portability.

-- Linux:
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

-- Windows:
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
--]]
return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  --Telescope
  use({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } },
  })

  use('nvim-telescope/telescope-fzf-native.nvim', { build = 'make' })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- treesitter. Highlighting syntax and stuff

  use('tpope/vim-commentary') -- Commenting with gc / gcgc / gcc

  use('tpope/vim-fugitive') -- Git sht

  -- theme
  use('marko-cerovac/material.nvim')

  -- icons
  use('nvim-tree/nvim-web-devicons')

  -- LSP autocompletion stuff --
  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },

      -- snipsnip
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' },
    },
  })

  -- Completion for nvim lua API!!!
  use('folke/neodev.nvim')

  -- Auto pairs
  use({
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup({})
    end,
  })

  use('jose-elias-alvarez/null-ls.nvim') -- null-ls for python (etc) code formatting

  -- Rainbow Parentheseseseses
  -- use('HiPhish/nvim-tx-rainbow2')

  --[[  End of LSP stuff  --]]

  use({ 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }) -- LuaLine: sexy status line

  --[[  Neo-Tree Setup  --]]

  use({
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      -- Unless you are still migrating, remove the deprecated commands from v1.x
      vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
      vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
      vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo' })
      vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
    end,
  })

  --[[  End of Neo-Tree Setup  --]]

  use({ 'akinsho/bufferline.nvim', tag = '*', requires = 'nvim-tree/nvim-web-devicons' }) -- Bufferline for tab views of buffers.
end)
