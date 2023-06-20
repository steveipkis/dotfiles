Plug 'ibhagwan/fzf-lua', {'branch': 'main'}

" To allow for interactive mode auto-completion
inoremap <c-x><c-f> <cmd>lua require("fzf-lua").complete_path()<cr>
inoremap <c-x><c-l> <cmd>lua require("fzf-lua").complete_line()<cr>

" To allow for searching across files interactively
command! Rg :lua require("fzf-lua").grep({ exec_empty_query = true, multiprocess=true })
command! RG :lua require("fzf-lua").live_grep({ exec_empty_query = true, multiprocess=true })

" To make file searching easier
nmap <leader>z <cmd>lua require('fzf-lua').files({ cwd_prompt = false, prompt = 'Files❯ ' })<CR>
command! Files :lua require('fzf-lua').files({ cwd_prompt = false, prompt = 'Files❯ ' })<CR>

" Map <Esc> key to silently clear search highlighting
nnoremap <silent> <leader>th :lua require("fzf-lua").colorschemes()<CR>
