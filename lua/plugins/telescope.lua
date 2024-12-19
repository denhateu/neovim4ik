require('telescope').setup()

-- Настройка горячих клавиш для telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Поиск файлов' })
