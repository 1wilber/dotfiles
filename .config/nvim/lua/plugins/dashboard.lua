return {
  "nvimdev/dashboard-nvim",
  lazy = false,
  opts = function()
    local logo = [[
    ██╗███╗   ██╗██╗ ██████╗██╗ ██████╗ 
    ██║████╗  ██║██║██╔════╝██║██╔═══██╗
    ██║██╔██╗ ██║██║██║     ██║██║   ██║
    ██║██║╚██╗██║██║██║     ██║██║   ██║
    ██║██║ ╚████║██║╚██████╗██║╚██████╔╝
    ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝╚═╝ ╚═════╝ 
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = 'Telescope find_files', desc = " Find File", icon = " ", key = "f" },
          { action = 'Telescope live_grep',  desc = " Find Text", icon = " ", key = "g" },
          { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "r" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    return opts
  end,
}
