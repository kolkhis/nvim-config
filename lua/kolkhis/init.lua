require('kolkhis.remap')
require('kolkhis.set')
require('telescope').setup({})

local host_os = require('kolkhis.detect_os')
if host_os.is_linux and not host_os.is_termux then
    require('streamer-mode').setup({
        default_state = 'off',
        level = 'edit',
        keywords = { 'api_key' },
        exclude_default_keywords = { 'alias', '$env:', 'export' },
    })
end
