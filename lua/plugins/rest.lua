return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>cr", "<Plug>RestNvim", desc = "Run request" },
    { "<leader>cR", "<Plug>RestNvim", desc = "Run last request" },
    { "<leader>cp", "<Plug>RestNvim", desc = "Preview request" },
  },
}
