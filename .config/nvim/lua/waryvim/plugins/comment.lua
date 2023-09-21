-- "gc" to comment visual regions/lines
return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
}
