return {
  -- Set lualine as statusline
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  -- See `:help lualine.txt`
  opts = {
    options = {
      theme = "catppuccin",
      component_separators = "|",
      section_separators = "",
    },
  },
}
