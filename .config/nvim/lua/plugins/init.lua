return {
  "honza/vim-snippets",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000 ,
    opts ={
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
	telescope = {
	  enabled = true,
	  style = "nvchad"
	},
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)

      vim.cmd[[colorscheme catppuccin]]
    end
  },
  {
    'echasnovski/mini.pairs',
    version = '*' ,
    config = true
  },
  "tpope/vim-surround",
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
  {
    "max397574/better-escape.nvim",
    config = true
  },

  {
    "pmizio/typescript-tools.nvim",
    config = false,
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
    enabled = true
  },
  { "Bilal2453/luvit-meta", lazy = true },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {"hrsh7th/cmp-nvim-lsp"},
    config = function()
      require('mason-lspconfig').setup {
	ensure_installed = { "jsonls", "yamlls", "ruby_lsp"  },
      }
      require("mason-lspconfig").setup_handlers{
	function (server_name)
	  local capabilities = require('cmp_nvim_lsp').default_capabilities()

            require("lspconfig")[server_name].setup {
	      capabilities = capabilities
	    }
        end,

	["tsserver"] = function ()
            require("typescript-tools").setup {}
        end,
      }
    end
  },
  {
    "williamboman/mason.nvim",
    config = true
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
	offsets = {
	  {
	    filetype = "neo-tree",
	    text = "File Explorer",
	    text_align = "center",
	    separator = true
	  }
	},
      }
    }
  }

}
