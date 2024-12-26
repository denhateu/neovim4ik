-- Создает алиас потому что vim.opt постоянно писать это долбаебство
opt = vim.opt

-- Также алиас для vim.global
g = vim.g

require('main.encoding')
require('main.beautiful')
require('main.numbers')
require('main.tabs')
require('main.search')
require('main.splits')
require('main.other')
