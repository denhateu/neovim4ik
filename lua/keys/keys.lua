require('keys.alias')

-- Установка лидерских клавиш
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

setkey('i', 'kj', '<ESC>')

-- Горячие клавиши для nvim-tree
setkey('n', '<leader>b', ':NvimTreeToggle<CR>')
setkey('n', '<leader>bf', ':NvimTreeFocus<CR>')
