local nvim_tree = require("nvim-tree").setup({
   disable_netrw = false,
   hijack_netrw = true,
   sort_by = "case_sensitive",
   git = {
     enable = true,
     ignore = true,
   },
   view = {
      adaptive_size = true,
   },
   renderer = {
      group_empty = true,
   },
   filters = {
      dotfiles = false,
      custom = {"venv", ".venv"},
   },
   actions = {
      open_file = {
         quit_on_open = true,
      },
   },
   -- settings used for project-nvim to set root project
   sync_root_with_cwd = true,
   respect_buf_cwd = true,
   update_focused_file = {
     enable = true,
     update_root = true
   },
})

return nvim_tree
