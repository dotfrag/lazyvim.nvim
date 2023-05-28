-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "cae", "ggcG", { desc = "Entire buffer" }) -- change entire bufer
map("n", "dae", "ggdG", { desc = "Entire buffer" }) -- delete entire bufer
map("n", "vae", "ggVG", { desc = "Entire buffer" }) -- visual entire buffer
map("n", "diL", "0d$", { desc = "Line" }) -- delete inside line

-- Paste without losing primary clipboard
map("x", "<leader>p", [["_dP]], { desc = "Paste" })

-- Buffer delete
map("n", "<leader>d", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })

-- Toggle explorer
map("n", "<C-n>", function()
  require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
end, { desc = "Toggle Explorer" })

-- Noice telescope
map("n", "<leader>snt", "<cmd>NoiceTelescope<cr>", { desc = "Noice Telescope" })

-- Save without formatting
map("n", "<leader>W", "<cmd>noautocmd w<cr>", { desc = "Save without formatting" })
