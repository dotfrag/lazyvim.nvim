-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local Util = require("lazyvim.util")

-- Motion commands
map("n", "cae", "ggcG", { desc = "Entire buffer" })
map("n", "dae", "ggdG", { desc = "Entire buffer" })
map("n", "vae", "ggVG", { desc = "Entire buffer" })
map("n", "yae", "ggyG", { desc = "Entire buffer" })
map("n", "diL", "0d$", { desc = "Line" })
map("n", "viL", "0v$h", { desc = "Line" })
map("n", "yiL", "0v$hy", { desc = "Line" })

-- Paste without losing clipboard contents
map("x", "<leader>p", [["_dP]], { desc = "Paste" })

-- Buffer delete
map("n", "<leader>d", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })

-- More comfortable keys for searching history in command line
-- https://github.com/dpetka2001/dotfiles/blob/main/dot_config/nvim/lua/config/keymaps.lua
map("c", "<C-j>", "<Down>", { desc = "Next command" })
map("c", "<C-k>", "<Up>", { desc = "Previous command" })

-- Lazygit full window size
-- https://github.com/dpetka2001/dotfiles/blob/main/dot_config/nvim/lua/config/keymaps.lua
map("n", "<leader>gg", function()
  -- Util.terminal.open({ "lazygit" }, { size = { width = 1.0, height = 1.0 }, cwd = Util.root.get() })
  vim.fn.jobstart({ "kitty", "-d", Util.root.get(), "lazygit" })
end, { desc = "Lazygit (root dir)" })
map("n", "<leader>gG", function()
  -- Util.terminal.open({ "lazygit" }, { size = { width = 1.0, height = 1.0 } })
  Util.terminal.open({ "lazygit" }, { size = { width = 1.0, height = 1.0 }, cwd = Util.root.get() })
end, { desc = "Lazygit (root dir)" })

-- Noice telescope
map("n", "<leader>snt", "<cmd>NoiceTelescope<cr>", { desc = "Noice Telescope" })

-- Save without formatting
map("n", "<leader>W", "<cmd>noautocmd w<cr>", { desc = "Save without formatting" })

-- Open new terminal window
map("n", "<leader>n", function()
  vim.fn.jobstart({ "kitty", "-d", Util.root.get() })
end, { desc = "Open new terminal window" })
