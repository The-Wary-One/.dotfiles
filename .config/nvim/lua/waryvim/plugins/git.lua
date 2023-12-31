return {
    -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',

    -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    opts = {
        -- See `:help gitsigns.txt`
        signs = {
            add = { text = "+" },
            change = { text = "~" },
            delete = { text = "_" },
            topdelete = { text = "‾" },
            changedelete = { text = "~" },
        },
        on_attach = function(bufnr)
            vim.keymap.set(
                "n",
                "<leader>gp",
                require("gitsigns").preview_hunk,
                { buffer = bufnr, desc = "[G]it [P]review Hunk" }
            )
            vim.keymap.set("n", "[h", require("gitsigns").prev_hunk,
                { buffer = bufnr, desc = "[P]review [H]unk" })
            vim.keymap.set("n", "]h", require("gitsigns").next_hunk,
                { buffer = bufnr, desc = "[N]ext [H]unk" })
        end,
    },
}
