-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Tmux navigation keymaps
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
vim.keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })

-- make Insert mode behave like Normal mode for wrapped lines
vim.keymap.set("i", "<Down>", "<C-o>gj", { desc = "Move down by screen line (insert)" })
vim.keymap.set("i", "<Up>", "<C-o>gk", { desc = "Move up by screen line (insert)" })
vim.keymap.set("i", "<Left>", "<C-o>h", { desc = "Move left (insert)" })
vim.keymap.set("i", "<Right>", "<C-o>l", { desc = "Move right (insert)" })
