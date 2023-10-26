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

