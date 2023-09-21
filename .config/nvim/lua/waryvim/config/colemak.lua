local kmap = vim.keymap.set

-- Colemak DH remap
-- Similar to https://github.com/wbolster/emacs-evil-colemak-basics
kmap({ "n", "o", "x" }, "m", "h", { desc = "Move Left" })
kmap({ "n", "o", "x" }, "zm", "zh", { desc = "Move view to the left" })
kmap({ "n", "o", "x" }, "zM", "zH", { desc = "Move view to the left by half a screenwidth" })

kmap({ "n", "o", "x" }, "n", "j", { desc = "Move Down" })
kmap({ "n", "o", "x" }, "gn", "gj", { desc = "Move Down when line wrapped" })

kmap({ "n", "o", "x" }, "e", "k", { desc = "Move Up" })
kmap({ "n", "o", "x" }, "ge", "gk", { desc = "Move Up when line wrapped" })

kmap({ "n", "o", "x" }, "i", "l", { desc = "Move Right" })
kmap({ "n", "o", "x" }, "zi", "zl", { desc = "Move view to the right" })
kmap({ "n", "o", "x" }, "zI", "zL", { desc = "Move view to the right by half a screenwidth" })

kmap({ "n", "o", "x" }, "k", "n", { desc = "Next found item" })
kmap({ "n", "o", "x" }, "K", "N", { desc = "Previous found item" })
kmap({ "n", "o", "x" }, "gk", "gn", { desc = "" })
kmap({ "n", "o", "x" }, "gK", "gN", { desc = "" })

kmap({ "n", "x" }, "u", "i", { desc = "Insert Mode" })
kmap({ "n", "x" }, "U", "I", { desc = "Insert Mode at first character" })
kmap("n", "gu", "gi", { desc = "" })
kmap("n", "gU", "gI", { desc = "" })

kmap("n", "l", "u", { desc = "Undo" })

kmap({ "n", "x" }, "N", "J", { desc = "Join lines" })
kmap({ "n", "x" }, "gN", "gJ", { desc = "Join 2 lines" })

kmap({ "n", "x" }, "E", "K", { desc = "Lookup" })

kmap("x", "l", "u", { desc = "Downcase" })
kmap("x", "gl", "gu", { desc = "" })

kmap("x", "L", "U", { desc = "Upcase" })
kmap("x", "gL", "gU", { desc = "" })

kmap({ "o", "x" }, "u", "i", { desc = "Inner text" })

kmap({ "n", "o", "x" }, "I", "L", { desc = "Jump to view bottom" })

kmap({ "n", "o", "x" }, "f", "e", { desc = "Jump to end of word" })
kmap({ "n", "o", "x" }, "F", "E", { desc = "Jump until whitespace" })
kmap({ "n", "o", "x" }, "gf", "ge", { desc = "Jump to begining of word" })
kmap({ "n", "o", "x" }, "gF", "gE", { desc = "Jump backwards until whitespace" })

kmap({ "n", "o", "x" }, "t", "f", { desc = "Jump to character" })
kmap({ "n", "o", "x" }, "T", "F", { desc = "Jump back to character" })
kmap({ "n", "v", "x" }, "gt", "gf", { desc = "" })
kmap("n", "gT", "gF", { desc = "" })

kmap({ "n", "o", "x" }, "j", "t", { desc = "Jump until character" })
kmap({ "n", "o", "x" }, "J", "T", { desc = "Jump back until character" })
kmap({ "n", "o", "x" }, "gj", "gt", { desc = "" })
kmap({ "n", "o", "x" }, "gJ", "gT", { desc = "" })

kmap({ "n", "x" }, "h", "m", { desc = "Set Marker" })

kmap("n", "<C-w>m", "<C-w>h", { desc = "Go to the left window" })
kmap("n", "<C-w>n", "<C-w>j", { desc = "Go to the down window" })
kmap("n", "<C-w>e", "<C-w>k", { desc = "Go to the up window" })
kmap("n", "<C-w>i", "<C-w>l", { desc = "Go to the right window" })
