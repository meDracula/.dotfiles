require("dracula.remap")
require("dracula.packer")

-- tabing
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- save
vim.keymap.set("n", "<leader>s", ":update<CR>")
