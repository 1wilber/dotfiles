return {
  "tpope/vim-rails",
  "honza/vim-snippets",
  "williamboman/mason.nvim",
  "tpope/vim-surround",
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
  "mg979/vim-visual-multi",
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "ColorScheme",
    opts = {
      options = {
        theme = "auto",
        section_separators = "",
        component_separators = "",
      },
    },
  },

  {
    "echasnovski/mini.pairs",
    version = "*",
    config = true,
  },

  {
    "max397574/better-escape.nvim",
    config = true,
  },

  {
    "pmizio/typescript-tools.nvim",
    config = false,
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  },
  {
    "andweeb/presence.nvim",
    config = true,
    opts = {
      buttons = false,
      workspace_text = "Working on <unknow>",
    },
  },
}
