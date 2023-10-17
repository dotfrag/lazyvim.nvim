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
    table.insert(opts.config.center, 3, explorer)
  end,
}
