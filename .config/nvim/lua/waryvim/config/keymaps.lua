-- Colemak remaps
require("waryvim.config.colemak")

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to the clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to the clipboard" })

vim.keymap.set("n", "<leader>p", [["+p]], { desc = "Paste from the clipboard" })
vim.keymap.set("n", "<leader>P", [["+P]], { desc = "Paste before, from the clipboard" })

vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv", { desc = "Move Down highlighted lines", silent = true })
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv", { desc = "Move Up highlighted lines", silent = true })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "k", "kzzzv")
-- vim.keymap.set("n", "K", "Kzzzv")
