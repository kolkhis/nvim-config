require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '<leader>pf [P]arse [F]iles' })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = '<leader>pg [P]arse [G]it Files' })
--vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>su', builtin.grep_string, { desc = '[S]earch [U]sages of Word' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = '[P]arse [S]tring by Grep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(
    require('telescope.themes').get_dropdown({ winblend = 5, previewer = false })
  )
end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>rs', builtin.registers, { desc = 'Vim [R]egister [S]earch' })

-- builtin.current_buffer_fuzzy_find, { desc = '[/] Fuzzily search in current buffer' })
-- function()
--     vim.cmd('Telescope current_buffer_fuzzy_find')
-- end, { desc = '[/] Fuzzily search in current buffer' })

-- vim.cmd('Telescope ')
-- Telescop builtins:
-- builtin.buffers 	Lists open buffers in current neovim instance
-- builtin.oldfiles 	Lists previously open files
-- builtin.commands 	Lists available plugin/user commands and runs them on <cr>
-- builtin.tags 	Lists tags in current directory with tag location file preview (users are required to run ctags -R to generate tags or update when introducing new changes)
-- builtin.command_history 	Lists commands that were executed recently, and reruns them on <cr>
-- builtin.search_history 	Lists searches that were executed recently, and reruns them on <cr>
-- builtin.help_tags 	Lists available help tags and opens a new window with the relevant help info on <cr>
-- builtin.man_pages 	Lists manpage entries, opens them in a help window on <cr>
-- builtin.marks 	Lists vim marks and their value
-- builtin.colorscheme 	Lists available colorschemes and applies them on <cr>
-- builtin.quickfix 	Lists items in the quickfix list
-- builtin.quickfixhistory 	Lists all quickfix lists in your history and open them with builtin.quickfix or quickfix window
-- builtin.loclist 	Lists items from the current window's location list
-- builtin.jumplist 	Lists Jump List entries
-- builtin.vim_options 	Lists vim options, allows you to edit the current value on <cr>
-- builtin.registers 	Lists vim registers, pastes the contents of the register on <cr>
-- builtin.autocommands 	Lists vim autocommands and goes to their declaration on <cr>
-- builtin.spell_suggest 	Lists spelling suggestions for the current word under the cursor, replaces word with selected suggestion on <cr>
-- builtin.keymaps 	Lists normal mode keymappings
-- builtin.filetypes 	Lists all available filetypes
-- builtin.highlights 	Lists all available highlights
-- builtin.current_buffer_fuzzy_find 	Live fuzzy search inside of the currently open buffer
-- builtin.current_buffer_tags 	Lists all of the tags for the currently open buffer, with a preview
-- builtin.resume 	Lists the results incl. multi-selections of the previous picker  -- Buffer history?
-- builtin.pickers 	Lists the previous pickers incl. multi-selections (see :h telescope.defaults.cache_picker)
