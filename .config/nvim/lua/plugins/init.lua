return {
  { "tpope/vim-rails", lazy = true, ft = "ruby" },
  { "honza/vim-snippets" },
  { "tpope/vim-surround" },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "williamboman/mason.nvim" },
  { "nvim-lua/plenary.nvim", lazy = true },
  { "MunifTanjim/nui.nvim", lazy = true },
  { "mg979/vim-visual-multi" },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "BufReadPre",
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
    opts = {},
    lazy = true,
    event = "InsertEnter",
  },

  {
    "max397574/better-escape.nvim",
    opts = {},
  },
  {
    "j-hui/fidget.nvim",
    lazy = true,
    opts = {},
  },
  {
    "andweeb/presence.nvim",
    opts = {
      buttons = false,
      workspace_text = "Working on <unknow>",
    },
    event = "BufWritePost",
  },
}
