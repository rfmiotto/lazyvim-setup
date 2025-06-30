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

vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- vim.keymap.set("n", "<C-w>", function()
--   local bufnr = vim.api.nvim_get_current_buf()
--   local listed_buffers = vim.tbl_filter(function(buf)
--     return vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted
--   end, vim.api.nvim_list_bufs())
--
--   if #listed_buffers > 1 then
--     vim.cmd("bprevious") -- Go to previous buffer
--     vim.cmd("bdelete " .. bufnr) -- Delete current
--   else
--     vim.cmd("q") -- Quit Neovim
--   end
-- end, { desc = "Close current buffer (VSCode-like)" })
