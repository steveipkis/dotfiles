Plug 'NvChad/nvterm'

" Setup a terminal for development use
nnoremap <silent> <leader>h :lua require("nvterm.terminal").toggle "horizontal"<CR>
nnoremap <silent> <leader>v :lua require("nvterm.terminal").toggle "vertical"<CR>
