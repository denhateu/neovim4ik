-- Устанавливает lazy.nvim если его нет
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Не удалось установить lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nНажми любую клавишу чтобы выйти..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Настройка lazy.nvim
require("lazy").setup({
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ... }
})