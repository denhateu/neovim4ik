-- Создает алиас потому что vim.opt постоянно писать это долбаебство
local opt = vim.opt

-- Также алиас для vim.global
local g = vim.g

-- [[ Поиск ]]
-- Игнорить регистр при поиске,
-- т.е. если при поиске написать "JOPA" то он найдет "jopa"
opt.ignorecase = true

-- Мне лень писать что это означает
opt.smartcase = true

-- Подсвечивать найденный текст
opt.showmatch = true
