require('material').setup({
  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    cursor_line = false, -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable contrasted background for non-current windows
    filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
  },

  styles = { -- Give comments style such as bold, italic, underline etc.
    comments = { --[[ italic = true ]]
    },
    strings = { --[[ bold = true ]]
    },
    keywords = { --[[ underline = true ]]
    },
    functions = { --[[ bold = true, undercurl = true ]]
    },
    variables = {},
    operators = {},
    types = {},
  },

  plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "dap",
    -- "dashboard",
    -- "gitsigns",
    -- "hop",
    -- "indent-blankline",
    -- "lspsaga",
    -- "mini",
    -- "neogit",
    -- "neorg",
    'nvim-cmp',
    -- "nvim-navic",
    -- "nvim-tree",
    'nvim-web-devicons',
    -- "sneak",
    'telescope',
    -- "trouble",
    -- "which-key",
  },

  disable = {
    colored_cursor = false, -- Disable the colored cursor
    borders = false, -- Disable borders between verticaly split windows
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },

  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = true, -- Enable higher contrast text for darker style
  },

  lualine_style = 'default', -- Lualine style ( can be 'stealth' or 'default' )

  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

  custom_colors = function(colors)
    -- vim.cmd('hi Comment guifg=#526D82')
	colors.syntax.comments = '#526D82'
  end, -- If you want to everride the default colors, set this to a function

  custom_highlights = {}, -- Overwrite highlights with your own
})
vim.cmd('colo material-deep-ocean')

--[[ Color options for custom_colors (material)
    colors.editor.bg           = "#0F111A"
    colors.editor.bg_alt       = "#090B10"
    colors.editor.fg           = "#A6ACCD"
    -- colors.editor.fg_darker    = "#8DA3CA" -- TODO
    colors.editor.fg_dark      = "#717CB4"
    colors.editor.selection    = "#1F2233"
    colors.editor.contrast     = "#090B10"
    colors.editor.active       = "#1A1C25"
    colors.editor.border       = "#232637"
    colors.editor.line_numbers = "#3B3F51"
    colors.editor.highlight    = "#1F2233"
    colors.editor.disabled     = "#464B5D"
    colors.editor.accent       = "#84FFFF"
    colors.syntax.comments     = "#464B5D"
--]]
