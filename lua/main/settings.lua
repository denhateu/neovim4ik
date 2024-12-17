-- Создает алиас потому что vim.opt постоянно писать это долбаебство
local opt = vim.opt

-- Также алиас для vim.global
local g = vim.g

-- ЭНКОДИНГ {{
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
-- }}

-- КРАСОТА {{{
opt.background = "dark"
-- }}}

-- ЦИФРЫ {{
-- Столбец с цифрами слева
opt.number = true
opt.relativenumber = true
-- }}

-- ТАБЫ {{
-- Использует пробелы вместо табов
opt.expandtab = true

-- Размер таба при нажатии <TAB>
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

opt.autoindent = true

-- Подстраивать новые строки под предыдущий отступ
opt.smartindent = true
-- }}

-- ПОИСК {{
-- Игнорить регистр при поиске,
-- т.е. если при поиске написать "JOPA" то он найдет "jopa"
opt.ignorecase = true

-- Мне лень писать что это означает
opt.smartcase = true

-- Подсвечивать найденный текст
opt.hlsearch = true
-- }}

-- СПЛИТЫ {{
-- Вертикальные сплиты ставятся справа
opt.splitright = true

-- Горизонтальные сплиты ставятся справа
opt.splitbelow = true
-- }}

-- ДРУГИЕ НАСТРОЙКИ {{
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
-- }}
