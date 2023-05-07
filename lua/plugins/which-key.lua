return {
  "folke/which-key.nvim",
  opts = {
    plugins = { spelling = true },
    defaults = {
      ["<leader>r"] = {
        name = "+regex",
        t = { "<cmd>:%s/\\s\\+$//<cr>``", "Remove Trailing Whitespace" },
        c = { "<cmd>:%s/[[:cntrl:]]//<cr>``", "Remove Control Symbols " },
        p = { "<cmd>:%s/[^[:print:]]//<cr>``", "Remove Non-Printable Characters " },
        a = { "/[^\\x00-\\x7F]<cr>", "Find Non-ASCII Characters" },
      },
    },
  },
}
