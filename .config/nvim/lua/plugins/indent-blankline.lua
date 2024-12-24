return {
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    indent = {
      char = "│",
      tab_char = "│",
    },
    scope = { show_start = false, show_end = false },
    exclude = {
      filetypes = {
        "neo-tree",
        "mason",
        "dashboard",
      },
    },
  },
  main = "ibl",
}
