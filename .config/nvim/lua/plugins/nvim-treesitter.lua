return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "windwp/nvim-ts-autotag", config = true },
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      ignore_install = { "scss" },
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "ruby",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "jsdoc",
        "html",
        "yaml",
        "markdown",
        "markdown_inline",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        disable = function(_, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end,
}
