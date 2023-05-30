local status_line = require('lualine').setup({
   options = {
      theme = 'auto'
   },
   extensions = {'fzf', 'nvim-tree'}
})

return status_line
