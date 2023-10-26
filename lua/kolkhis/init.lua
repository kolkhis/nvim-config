require('nightfox').setup()
require('telescope').setup()
require('kolkhis.remap')
require('kolkhis.set')
require('bufferline')


require('material')
vim.cmd('colo material-deep-ocean')



-- require('nightfox').setup({ options = {
-- 	styles = { keywords = 'bold',},
-- 	specs  = { all = { syntax = { operator = '#F79327', match_paren = 'bright_orange', keywords = 'orange'} } },
-- 	inverse = { match_paren = true },  -- Highlight matching parentheses
-- }} )


-- require('bufferline').setup({
-- 	options = {
--             modified_icon = '●',
--             close_icon = '',
--             left_trunc_marker = '',
--             right_trunc_marker = '',
--             separator_style = 'slant',
-- 	    }
-- 	})



-- require('onedark').setup {
-- 	style = 'darker',
-- 	-- Can't get custom colors to work. TODO: Get them to work.
-- 	-- colors = { bright_orange = '#ff9900' },
-- 	-- highlights = { TSAttribute = '$bright_orange' }
--   }
-- require('onedark').load()

