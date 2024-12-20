require('keys.alias')

-- Установка лидерских клавиш
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

setkey('i', 'kj', '<ESC>')

-- Мой способ для того чтобы открывать кавычки, скобки и т.д.
setkey('i', '(', '()<LEFT>')
setkey('i', '[', '[]<LEFT>')
setkey('i', '{', '{}<LEFT>')
setkey('i', '\'', '\'\'<LEFT>')
setkey('i', '"', '""<LEFT>')
setkey('i', '<', '<><LEFT>')

-- Горячие клавиши для nvim-tree
setkey('n', '<leader>b', ':NvimTreeToggle<CR>')
setkey('n', '<leader>bf', ':NvimTreeFocus<CR>')
