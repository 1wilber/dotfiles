local lsp_utils = require("config.utils.lsp")
return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("mason-lspconfig").setup({
      ensure_installed = { "jsonls", "yamlls", "tsserver" },
    })
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
          on_attach = lsp_utils.on_attach,
        })
      end,

      ["tsserver"] = function()
        require("typescript-tools").setup({
          on_attach = lsp_utils.on_attach,
        })
      end,
      ["solargraph"] = function()
        require("lspconfig").solargraph.setup({
          capabilities = capabilities,
          on_attach = lsp_utils.on_attach,
          init_options = { formatting = true },
          settings = {
            solargraph = {
              diagnostics = true,
              completion = true,
              formatting = true,
              logLevel = "debug",
            },
          },
        })
      end,
    })
  end,
}
