require('kolkhis.remap')
require('kolkhis.set')
require('telescope').setup({})
require('mason').setup()

vim.cmd('colorscheme material-deep-ocean')

local host_os = require('kolkhis.detect_os')
if host_os.is_linux and not host_os.is_termux then
    if vim.fn.isdirectory('~/Repos/github.com/kolkhis/streamer-mode.nvim/') then
        require('streamer-mode').setup({
            default_state = 'on',
            level = 'edit',
            keywords = { 'api_key' },
            exclude_default_keywords = { 'alias', '$env:', 'export', 'name' },
        })
    end
end
