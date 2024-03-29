-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
-- local cmd = vim.cmd

-- Set window title
opt.title = true

-- Disable cursor line
opt.cursorline = false

-- NOTE: LazyVim now supports this (in v10?)
-- Enable treesitter folding and disable folding at startup
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- Filetypes
vim.filetype.add({
  extension = { http = "http" },
})
