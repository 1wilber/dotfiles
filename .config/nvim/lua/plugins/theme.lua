return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = true,
    flavour = "mocha",
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      telescope = {
        enabled = true,
        style = "nvchad",
      },
      notify = false,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)

    vim.cmd([[colorscheme catppuccin]])
  end,
}
