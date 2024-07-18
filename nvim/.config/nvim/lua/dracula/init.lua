require("dracula.remap")
require("dracula.packer")

-- tabing
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- save
vim.keymap.set("n", "<leader>s", ":update<CR>")

-- Set Spell check on or off
vim.keymap.set("n", "<leader>l", ":setlocal spell! spelllang=en_us<CR>")
