vim.g.material_style = 'deep ocean'
require('material').setup({
    disable = {
        colored_cursor = false,
    },
    plugins = {
        'telescope',
    },
    high_visibility = { darker = true, },
    lualine_style = 'stealth',
    custom_highlights = {
        Comment = { fg = '#424769' }, -- #424769 #7077A1 #45474B
        Cursor = { bg = 'Red' },
    },
})
vim.cmd.colorscheme('material-deep-ocean')
-- vim.cmd.highlight('Normal guibg=#0e1019')
