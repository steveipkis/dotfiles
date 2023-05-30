local nvim_tree = require("nvim-tree").setup({
   disable_netrw = false,
   hijack_netrw = true,
   sort_by = "case_sensitive",
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
})

return nvim_tree
