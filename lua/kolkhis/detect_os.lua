--[[ This module is currently being used to determine the operating system.
--	 The purpose being, if the OS is Linux, the `vim.o.shell` option won't be
--	 changed. Possibly can find some other uses for it as well.
--]]
local M = {}

M.os = vim.loop.os_uname().sysname
M.machine = vim.loop.os_uname().machine
function M.get_os()
  return vim.loop.os_uname().sysname
end

function M.check_linux()
  return M.os == 'Linux'
end

function M.check_windows()
  return M.os == 'Windows_NT'
end

function M.check_neither()
  return M.os ~= 'Windows_NT' and M.os ~= 'Linux'
end

M.is_windows = (M.os == 'Windows_NT')
M.is_linux = (M.os == 'Linux')
M.is_phone = (M.machine == 'aarch64')
M.is_neither = (M.os ~= 'Windows_NT' and M.os ~= 'Linux')

-- exploring vim's api:

-- print('Resource usage output: ')
-- local usage = vim.loop.getrusage()
-- for key, value in pairs(usage) do
-- 	print(key, value)
-- 	if type(value) == 'table' then
-- 		print('Expanding table in resource...')
-- 		for k, v in pairs(value) do
-- 			print(k, v)
-- 		end
-- 	end
-- end
-- print('Machine: ', vim.loop.os_uname().machine) -- Get system architecture type
-- print('OS: ', vim.loop.os_uname().sysname)      -- Get machine kernel type
-- print('Release: ', vim.loop.os_uname().release) -- Get current OS release
-- print('Version: ', vim.loop.os_uname().version) -- Get OS version

-- print('password: ')

-- for k, v in pairs(vim.loop.os_get_passwd()) do
--   print(k, v)
-- end

return M
