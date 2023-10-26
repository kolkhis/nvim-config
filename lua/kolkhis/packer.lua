-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
--]]

  -- treesitter. Highlighting syntax and stuff
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- Commenting with gc / gcgc / gcc
  use('tpope/vim-commentary')

  -- ALE for linting (and autocompletion?)
  use('dense-analysis/ale')

  -- theme
  use('navarasu/onedark.nvim')

  use('EdenEast/nightfox.nvim')



  -- LSP autocompletion stuff --
  use {
   'VonHeikemen/lsp-zero.nvim',
   branch = 'v2.x',
   requires = {
     -- LSP Support
     {'neovim/nvim-lspconfig'},             -- Required
     {                                      -- Optional
       'williamboman/mason.nvim',
       run = function()
 	pcall(vim.cmd, 'MasonUpdate')
       end,
     },

     {'williamboman/mason-lspconfig.nvim'}, -- Optional

     -- Autocompletion
     {'hrsh7th/nvim-cmp'},     -- Required
     {'hrsh7th/cmp-nvim-lsp'}, -- Required
     {'L3MON4D3/LuaSnip'},     -- Required
   }
 }
 -- Auto pairs
 use({'windwp/nvim-autopairs', config = function () require('nvim-autopairs').setup {} end })

 -- Rainbow Parentheseseseses
 -- use('HiPhish/nvim-tx-rainbow2')

--[[  End of LSP requirements  --]]

  -- LuaLine: sexy status line 
  use{'nvim-lualine/lualine.nvim', requires = {'nvim-tree/nvim-web-devicons', opt = true}}

  -- neo-tree -> sexy filetree
  -- remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use({
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    })


  -- Bufferline for tab views of buffers.
  use({'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'})


end)

