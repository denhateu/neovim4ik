require("nvim-tree").setup({
  actions = {
    open_file = {
      -- Закрыть nvim-tree после открытия файла
      quit_on_open = true
    }
  }
})
