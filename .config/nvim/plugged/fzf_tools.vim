Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'junegunn/fzf'

inoremap <c-x><c-f> <cmd>lua require("fzf-lua").complete_path()<cr>
inoremap <c-x><c-l> <cmd>lua require("fzf-lua").complete_line()<cr>

command! Rg :lua require("fzf-lua").grep({ exec_empty_query = true })
command! RG :lua require("fzf-lua").live_grep({ exec_empty_query = true })
