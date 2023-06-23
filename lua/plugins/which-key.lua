return {
  "folke/which-key.nvim",
  opts = {
    plugins = { spelling = true },
    defaults = {
      ["<leader>r"] = {
        name = "+regex",
        a = { "/[^\\x00-\\x7F]<cr>", "Find Non-ASCII Characters" },
        b = { "<cmd>s/ /\\r/g<cr>|<cmd>noh<cr>", "Break Line" },
        c = { "<cmd>:%s/[[:cntrl:]]//<cr>``", "Remove Control Symbols" },
        p = { "<cmd>:%s/[^[:print:]]//<cr>``", "Remove Non-Printable Characters" },
        t = { "<cmd>:%s/\\s\\+$//<cr>``", "Remove Trailing Whitespace" },
        w = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace Word" },
      },
    },
  },
}
