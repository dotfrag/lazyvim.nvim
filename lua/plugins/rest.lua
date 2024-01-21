return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>cr", ft = "http", "<Plug>RestNvim", desc = "Run request" },
    { "<leader>cR", ft = "http", "<Plug>RestNvim", desc = "Run last request" },
    { "<leader>cp", ft = "http", "<Plug>RestNvim", desc = "Preview request" },
  },
}
