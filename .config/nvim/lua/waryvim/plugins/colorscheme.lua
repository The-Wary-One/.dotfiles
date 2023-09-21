return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      flavor = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
    },
    config = function()
      -- load the colorscheme
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
