-- set space to do nothing, then add it as map leader
local opts = { silent = true }
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, 'zp', '<C-u>', { silent = true }) -- jump up
vim.keymap.set({ 'n', 'v' }, 'zn', '<C-d>', { silent = true }) -- jump down
vim.keymap.set({ 'i', 'v' }, 'zj', '<Esc>', { silent = false, noremap = true }) -- remap escape key (for awful keyboards)
-- vim.keymap.set( 'n', 'k', 'gk', { silent = true, noremap = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Get to netrw
vim.keymap.set('n', '<leader>pv', ':Ex<CR>')

-- Hotkey for Neotree
vim.keymap.set({ 'n' }, '<leader>ft', function()
  vim.cmd('Neotree')
end, { silent = true })

vim.keymap.set('n', '<leader>/', function()
  vim.cmd('Telescope current_buffer_fuzzy_find')
end)

-- Formatting
vim.keymap.set({ 'n', 'v' }, '<leader>fm', function()
  vim.lsp.buf.format({ async = true })
end, { desc = { 'LSP formatting' } })

-- Telescope stuff
vim.keymap.set('n', '<leader>Y', '"+Y', { silent = true }) -- Copy to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { silent = true })
vim.keymap.set("x", "<leader>p", [["_dP]], { silent = true })  -- Replace in select mode without overwriting register/clipboard

-- Kinda like refactoring, start %s for current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = true })

-- Give current file execute permissions 
if require('kolkhis.detect_os').is_linux then
	vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
end

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })


--[[  Remaps to copy to system clipboard, and for error logs and location
-- lists.
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--]]
