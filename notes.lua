
--- Playing with the vim.api
vim.keymap.set('n', '<leader>wow', '<CMD>lua print("wow")<CR>')
vim.keymap.set('n', '<leader>tk', function ()
	-- vim.cmd('lua print("wowowow")')
	-- local buf = vim.api.nvim_get_current_buf()
	-- vim.api.nvim_set_current_buf(buffer)
	-- vim.api.nvim_create_autocmd(event, opts?)
	-- Create a floating window
	local buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')
	-- vim.api.nvim_buf_set_text(buf, 1, 1, -1, -1, 'wowowowoowowow')
	vim.api.nvim_buf_set_lines(buf, 0, 0, false, {'Wowowowowoowow'})
end)





--[[  

On Termux and WSL, comment out shell opts set.lua.

Add "Edit with Neovim" to dotfiles
Windows Registry Editor Version 5.00


[HKEY_CLASSES_ROOT\*\shell\Edit with Neovim]
"Icon"="C:\Users\username\AppData\Local\Programs\Neovim\bin\nvim-qt.exe"
OR, if installed globally:
"Icon"="C:\Program Files\Neovim\bin\nvim-qt.exe"

[HKEY_CLASSES_ROOT\*\shell\Edit with Neovim\command]
@="C:\Users\username\AppData\Local\Programs\Neovim\bin\nvim-qt.exe" "%1"
OR, if installed globally:
@="C:\Program Files\Neovim\bin\nvim-qt.exe" "%1"



vim.fn functions:
https://neovim.io/doc/user/usr_41.html#function-list




--]]

