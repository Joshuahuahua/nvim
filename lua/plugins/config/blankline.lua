vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  -- char = "┊",
  show_trailing_blankli8ne_indent = false,
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}
