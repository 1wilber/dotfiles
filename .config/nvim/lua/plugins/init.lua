return {
  "honza/vim-snippets",
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
  },

  {
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
        },
      },
    },
    main = "ibl",
  },
  {
    "echasnovski/mini.pairs",
    version = "*",
    config = true,
  },
  "tpope/vim-surround",
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
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
    opts = {
      buttons = false,
      workspace_text = "Working on <unknow>",
    },
  },
}
