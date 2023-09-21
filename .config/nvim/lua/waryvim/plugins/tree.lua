return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    local function on_attach(bufnr)
      local api = require("nvim-tree.api")

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- custom mappings
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "i", api.node.open.edit, { buffer = bufnr, noremap = true, silent = true })
      keymap.set("n", "n", "<Down>", { buffer = bufnr, noremap = true, silent = true })
      keymap.set("n", "e", "<Up>", { buffer = bufnr, noremap = true, silent = true })
      keymap.set("n", "m", api.node.navigate.parent, { buffer = bufnr, noremap = true, silent = true })
      keymap.set("n", "c", api.fs.create, { buffer = bufnr, noremap = true, silent = true })
      keymap.set("n", "?", api.tree.toggle_help, { desc = "Show file explorer help" })
    end

    -- configure nvim-tree
    nvimtree.setup({
      on_attach = on_attach,
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              -- arrow_closed = "", -- arrow when folder is closed
              -- arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
  end,
}
