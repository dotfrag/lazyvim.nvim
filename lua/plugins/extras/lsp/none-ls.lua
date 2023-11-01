return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    vim.list_extend(opts.sources, {
      -- bash
      nls.builtins.formatting.shfmt.with({ extra_args = { "-i", "2", "-ci" } }),

      -- markdown
      nls.builtins.diagnostics.markdownlint,
    })
  end,
}
