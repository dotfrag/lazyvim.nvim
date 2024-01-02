return {
  "nvimdev/dashboard-nvim",
  optional = true,
  opts = function(_, opts)
    local logo = [[
                                                                           
             ████ ██████           █████      ██                     
            ███████████             █████                             
            █████████ ███████████████████ ███   ███████████   
           █████████  ███    █████████████ █████ ██████████████   
          █████████ ██████████ █████████ █████ █████ ████ █████   
        ███████████ ███    ███ █████████ █████ █████ ████ █████  
       ██████  █████████████████████ ████ █████ █████ ████ ██████ 
    ]]
    logo = string.rep("\n", 6) .. logo .. "\n\n"

    local explorer = {
      action = "Neotree",
      desc = " Explorer",
      icon = " ",
      key = "e",
    }
    explorer.desc = explorer.desc .. string.rep(" ", 43 - #explorer.desc)
    explorer.key_format = "  %s"

    local restore_last_session = {
      action = 'lua require("persistence").load({ last = true })',
      desc = " Restore Last Session",
      icon = "󰦛 ",
      key = "S",
    }
    restore_last_session.desc = restore_last_session.desc .. string.rep(" ", 43 - #restore_last_session.desc)
    restore_last_session.key_format = "  %s"

    opts.config.header = vim.split(logo, "\n")
    table.insert(opts.config.center, 3, explorer)
    table.insert(opts.config.center, 9, restore_last_session)
  end,
}
