vim.opt.ignorecase = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 2
vim.opt.mouse = ""
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set({ "n", "v" }, "<leader>bd", "<cmd>bd<cr>")
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>")
vim.keymap.set({ "n" }, "<leader>qq", "<cmd>:q<cr>")

vim.keymap.set({ "n" }, "<leader>sr", "<CMD>set nonumber relativenumber<CR>")
vim.keymap.set({ "n" }, "<leader>snr", "<CMD>set number norelativenumber<CR>")

vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("update_plugins", { clear = true }),
  callback = function()
    if require("lazy.status").has_updates() then
      print("Updating plugins...")
      require("lazy").update({ show = false })
    end
  end,
})
