return {
  { "dstein64/nvim-scrollview", enabled = false },
  {
    "echasnovski/mini.map",
    branch = "stable",
    event = "BufWinEnter",
    config = function()
      require("mini.map").setup()
      local map = require("mini.map")
      map.setup({
        integrations = {
          map.gen_integration.builtin_search(),
          map.gen_integration.diagnostic({
            error = "DiagnosticFloatingError",
            warn = "DiagnosticFloatingWarn",
            info = "DiagnosticFloatingInfo",
            hint = "DiagnosticFloatingHint",
          }),
        },
        symbols = {
          encode = map.gen_encode_symbols.dot("4x2"),
        },
        window = {
          side = "right",
          width = 10, -- set to 1 for a pure scrollbar :)
          winblend = 15,
          show_integration_count = false,
        },
      })
    end,
  },
}
