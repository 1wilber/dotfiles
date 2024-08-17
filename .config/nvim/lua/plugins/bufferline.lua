return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = {"BufReadPre"},
  dependencies = "nvim-tree/nvim-web-devicons",
  keys = {
    { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
  opts = {
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "center",
          separator = true,
        },
      },
    },
  },
}
