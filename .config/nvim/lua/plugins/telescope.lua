return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  requires = { 'nvim-lua/plenary.nvim' },
  keys = {
    {"<leader>ff", "<cmd>Telescope find_files<cr>"},
    {"<leader>sg", "<cmd>Telescope live_grep<cr>"}
  }
}
