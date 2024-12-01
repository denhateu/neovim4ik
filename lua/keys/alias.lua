-- Алиас для быстрого доступа к методу установки горячих клавиш
local map = vim.api.nvim_set_keymap

-- Метод для установки горячих клавиш
function setkey(type, key, command)
  map(type, key, command, {noremap = true})
end
