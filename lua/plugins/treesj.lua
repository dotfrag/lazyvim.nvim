return {
  "Wansmer/treesj",
  keys = {
    { "gzm", "<cmd>TSJToggle<cr>", desc = "Node Toggle" },
    { "gzs", "<cmd>TSJSplit<cr>", desc = "Node Split" },
    { "gzj", "<cmd>TSJJoin<cr>", desc = "Node Join" },
  },
  cmd = {
    "TSJToggle",
    "TSJSplit",
    "TSJJoin",
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup({ use_default_keymaps = false })
  end,
}
