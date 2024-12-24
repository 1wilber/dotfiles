return {
  "nvim-telescope/telescope.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>" },
    { "<leader>sg", "<cmd>Telescope live_grep<cr>" },
  },
}
