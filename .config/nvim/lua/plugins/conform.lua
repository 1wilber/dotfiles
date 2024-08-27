return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { { "prettierd", "prettier" } },
      json = { "prettierd" },
      eruby = { "erb_format" },
      cpp = { "cpplint" },
    },
    format_on_save = {
      timeout_ms = 1500,
      lsp_format = "fallback",
    },
  },
}
