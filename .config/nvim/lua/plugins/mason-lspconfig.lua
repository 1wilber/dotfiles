local lsp_utils = require("config.utils.lsp")
return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "hrsh7th/cmp-nvim-lsp", "b0o/schemastore.nvim" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "bashls",
        "ruby_lsp",
        "emmet_ls",
        "jsonls",
        "yamlls",
        "eslint",
        "clangd",
        "ts_ls",
        "tailwindcss",
        "lua_ls",
        "somesass_ls",
      },
    })
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
          on_attach = lsp_utils.on_attach,
        })
      end,

      ["ruby_lsp"] = function()
        require("lspconfig").ruby_lsp.setup({
          init_options = {
            formatter = "standard",
            linters = { "standard" },
          },
          capabilities = capabilities,
          on_attach = lsp_utils.on_attach,
        })
      end,

      ["ts_ls"] = function()
        require("typescript-tools").setup({})
      end,

      ["jsonls"] = function()
        require("lspconfig").jsonls.setup({
          settings = {
            json = {
              schemas = require("schemastore").json.schemas(),
              validate = { enable = true },
            },
          },
        })
      end,
    })
  end,
}
