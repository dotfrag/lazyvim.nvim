-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "cae", "ggcG", { desc = "Entire buffer" }) -- change entire bufer
map("n", "dae", "ggdG", { desc = "Entire buffer" }) -- delete entire bufer
map("n", "vae", "ggVG", { desc = "Entire buffer" }) -- visual entire buffer
map("n", "diL", "0d$", { desc = "Line" }) -- delete inside line

map("x", "<leader>p", [["_dP]], { desc = "Paste" })

map("n", "<leader>d", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })

map("n", "<leader>snt", "<cmd>NoiceTelescope<cr>", { desc = "Noice Telescope" })

map("n", "<leader>W", "<cmd>noautocmd w<cr>", { desc = "Save without formatting" })
