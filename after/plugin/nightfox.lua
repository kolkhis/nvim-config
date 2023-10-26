require('nightfox').setup({ options = {
	styles = { keywords = 'bold',},
	specs  = { all = { syntax = { operator = '#F79327', match_paren = 'bright_orange', keywords = 'orange'} } },
	inverse = { match_paren = true },  -- Highlight matching parentheses
}} )

