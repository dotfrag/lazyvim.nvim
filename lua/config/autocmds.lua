-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  desc = "markdown set textwidth to 80",
  command = "setlocal textwidth=80",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "kotlin" },
  desc = "kotlin commentstring configuration",
  command = "setlocal commentstring=//\\ %s",
})
