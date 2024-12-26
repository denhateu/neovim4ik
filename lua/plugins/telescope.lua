require('telescope').setup({
  defaults = {
    preview = {
      hide_on_startup = true
    }
  }
})

-- Настройка горячих клавиш для telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Поиск файлов' })
