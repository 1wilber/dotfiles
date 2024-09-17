local lsp_utils = require("config.utils.lsp")
return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "hrsh7th/cmp-nvim-lsp", "b0o/schemastore.nvim" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "html",
        "bashls",
        "emmet_ls",
        "jsonls",
        "yamlls",
        "standardrb",
        "eslint",
        "clangd",
        "ts_ls",
        "tailwindcss",
        "cssls",
        "lua_ls",
      },
    })
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
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
