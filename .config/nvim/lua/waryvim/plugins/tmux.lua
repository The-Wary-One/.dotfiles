return {
  {
    "The-Wary-One/vim-tmux-navigator-colemak-dh", -- tmux & split window navigation

    config = function()
      -- Disable default qwerty mappings
      -- vim.g.tmux_navigator_no_mappings = 1

      -- vim.keymap.set("n", "<C-m>", "<CMD>TmuxNavigateLeft<CR>", { desc = "Tmux navigate left", silent = true })
      -- vim.keymap.set("n", "<C-n>", "<CMD>TmuxNavigateDown<CR>", { desc = "Tmux navigate down", silent = true })
      -- vim.keymap.set("n", "<C-e>", "<CMD>TmuxNavigateUp<CR>", { desc = "Tmux navigate up", silent = true })
      -- vim.keymap.set("n", "<C-i>", "<CMD>TmuxNavigateRight<CR>", { desc = "Tmux navigate right", silent = true })
      -- vim.keymap.set("n", "<C-\\>", "<CMD>TmuxNavigatePrevious<CR>", { desc = "Tmux navigate previous", silent = true })

      -- Write all buffers before navigating from Vim to tmux pane
      vim.g.tmux_navigator_save_on_switch = 2

      -- Disable tmux navigator when zooming the Vim pane
      vim.g.tmux_navigator_disable_when_zoomed = 1
    end,
  },
  "tpope/vim-obsession", -- no-hassle vim session
}
