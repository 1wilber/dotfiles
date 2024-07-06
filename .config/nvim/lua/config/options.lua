vim.opt.ignorecase = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.shiftwidth = 2
vim.opt.mouse = ""
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set({'n', 'v'}, '<leader>bd', "<cmd>bd<cr>", { buffer = true })
vim.keymap.set({'n'}, '<leader>qq', "<cmd>:q<cr>", { buffer = true })
vim.keymap.set({'n'}, '[b', "<cmd>bprev<cr>")
vim.keymap.set({'n'}, ']b', "<cmd>bnext<cr>")
