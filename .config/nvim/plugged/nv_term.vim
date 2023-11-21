" Plug 'NvChad/nvterm'
Plug 'NvChad/nvterm', { 'on': ['NvTermHorizontal', 'NvTermVertical'] }

" Setup keybinds to call for lazy loading of plugin
command! NvTermHorizontal :lua require("nvterm.terminal").toggle "horizontal"<CR>
command! NvTermVertical :lua require("nvterm.terminal").toggle "vertical"<CR>

" Setup a terminal for development use
nnoremap <silent> <leader>h :lua require("nvterm.terminal").toggle "horizontal"<CR>
nnoremap <silent> <leader>v :lua require("nvterm.terminal").toggle "vertical"<CR>
