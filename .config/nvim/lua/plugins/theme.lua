return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = { transparent = true },
  config = function(_, opts)
    require("tokyonight").setup(opts)

    vim.cmd([[colorscheme tokyonight-night]])
  end,
}
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   opts = {
--     transparent_background = true,
--     flavour = "mocha",
--     integrations = {
--       cmp = true,
--       gitsigns = true,
--       nvimtree = true,
--       treesitter = true,
--       telescope = {
--         enabled = true,
--         style = "nvchad",
--       },
--       notify = false,
--       mini = {
--         enabled = true,
--         indentscope_color = "",
--       },
--     },
--   },
--   config = function(_, opts)
--     require("catppuccin").setup(opts)
--
--     vim.cmd([[colorscheme catppuccin]])
--   end,
-- }

-- return {
--   "rebelot/kanagawa.nvim",
--   opts = {
--     compile = false, -- enable compiling the colorscheme
--     undercurl = true, -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true },
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = false, -- do not set background color
--     dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true, -- define vim.g.terminal_color_{0,17}
--     colors = { -- add/modify theme and palette colors
--       palette = {},
--       theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--       return {}
--     end,
--     theme = "wave", -- Load "wave" theme when 'background' option is not set
--     background = { -- map the value of 'background' option to a theme
--       dark = "wave", -- try "dragon" !
--       light = "lotus",
--     },
--   },
--   config = function(_, opts)
--     require("kanagawa").setup(opts)
--     vim.cmd([[colorscheme kanagawa]])
--   end,
-- }
