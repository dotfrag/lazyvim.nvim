return {
  "nvimdev/dashboard-nvim",
  optional = true,
  opts = function(_, opts)
    local explorer = {
      action = "Neotree",
      desc = " Explorer",
      icon = " ",
      key = "e",
    }

    explorer.desc = explorer.desc .. string.rep(" ", 43 - #explorer.desc)
    explorer.key_format = "  %s"

    table.insert(opts.config.center, 3, explorer)
  end,
}
