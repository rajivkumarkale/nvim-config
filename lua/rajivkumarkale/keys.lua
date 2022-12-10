--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<ESC>', {})
map('n', 'nn', '[[:NvimTreeToggle<CR>]]', {})

map('n', 'ti', '[[:IndentLinesToggle<CR>]]', {})
map('n', 'tt', '[[:TagbarToggle<CR>]]', {})
map('n', 'ff', [[:Telescope find_files<CR>]], {})
map('n', 'ft', [[:FloatermNew<CR>]], {})
