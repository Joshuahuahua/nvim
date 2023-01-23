require 'nvim-tree'.setup {
  view = {
    mappings = {
      list = {
        { key = "<C-t>", action = "" },
      }
    }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  }
}
