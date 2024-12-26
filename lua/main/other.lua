-- ДРУГИЕ НАСТРОЙКИ
-- Использовать системный буфер для вместо встроенного в вим
opt.clipboard = 'unnamedplus'

-- Не создавать новый коммент на новой строке при переходе с закомментированной строке
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

-- Отключает создание бэкапов
opt.backup = false

-- Отображение команды которая вводится
opt.showcmd = true

opt.scrolloff = 7

-- Ограничение длины строки кода (выход за линию запрещён!)
opt.colorcolumn = '119'

-- Подсвечивает на доли секунды скопированную часть текста
vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=150}
augroup end
]], false)

-- Отключение netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
