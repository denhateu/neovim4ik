-- Создает алиас потому что vim.opt постоянно писать это долбаебство
local opt = vim.opt

-- Также алиас для vim.global
local g = vim.g

-- [[ Табы ]]
-- Использует пробелы вместо табов
opt.expandtab = true

-- Размер таба при нажатии <TAB>
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

-- Подстраивать новые строки под предыдущий отступ
opt.smartindent = true

-- [[ Поиск ]]
-- Игнорить регистр при поиске,
-- т.е. если при поиске написать "JOPA" то он найдет "jopa"
opt.ignorecase = true

-- Мне лень писать что это означает
opt.smartcase = true

-- Подсвечивать найденный текст
opt.showmatch = true

-- [[ Сплиты ]]
-- Вертикальные сплиты ставятся справа
opt.splitright = true

-- Горизонтальные сплиты ставятся справа
opt.splitbelow = true
