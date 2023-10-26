-- vim.cmd('colorscheme carbonfox')  -- Set colorscheme
vim.cmd('colo material-deep-ocean')

-- For checking options:
-- vim.cmd('Telescope vim_options')

-- Options
vim.o.shell = 'pwsh.exe'
vim.o.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
vim.o.shellxquote = ''

--vim.o.shell = [["C:/Program Files/PowerShell/7/pwsh.exe"]]
-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.o.number = true
vim.o.rnu = true

-- Keep 5 lines before the cursor when scrolling
vim.o.scrolloff = 5
vim.g.scrolllock = 5
vim.o.sidescrolloff = 5

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 200
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.go.smarttab = true   -- Smart tabbing

vim.o.smartindent = true -- Smart indenting for C-like programs

vim.o.shiftwidth = 4     -- Set Tab to 4 spaces.

vim.o.showbreak = '> '   -- Show a > when lines wrap

-- vim.o.wrapmargin = -1000 -- Attempt to make python format correctly with `gq`


