-- ЦИФРЫ
-- Включить столбец с цифрами слева
opt.number = true

-- Включать относительные цифры когда в коммандном режиме и выключать когда в режиме ввода
vim.cmd [[
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
]]
