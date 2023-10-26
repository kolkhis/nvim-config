--[[ This module is currently being used to determine the operating system.
--	 The purpose being, if the OS is Linux, the `vim.o.shell` option won't be
--	 changed. Possibly can find some other uses for it as well.
--]]
local M = {}

M.os = vim.loop.os_uname().sysname

function M.get_os()
  return M.os
end

function M.is_linux()
  return M.os == 'Linux'
end

function M.is_windows()
  return M.os == 'Windows_NT'
end

function M.is_neither()
  return M.os ~= 'Windows_NT' and M.os ~= 'Linux'
end

return M
