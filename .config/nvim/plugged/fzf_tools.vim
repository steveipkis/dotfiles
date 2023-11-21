Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
" Plug 'junegunn/fzf'

" To allow for interactive mode auto-completion
inoremap <c-x><c-f> <cmd>lua require("fzf-lua").complete_path()<cr>
inoremap <c-x><c-l> <cmd>lua require("fzf-lua").complete_line()<cr>

" RipGrep
command! Rg :lua require("fzf-lua").grep({ exec_empty_query = true, multiprocess=true })
nmap <leader>fg <cmd>Rg<CR>

" Text Search
command! RG :lua require("fzf-lua").live_grep({ exec_empty_query = true, multiprocess=true })
nmap <leader>fw <cmd>RG<CR>

" File Searching
command! Files :lua require('fzf-lua').files({ cwd_prompt = false, prompt = 'Files❯ ' })<CR>
nmap <leader>ff <cmd>Files<CR>

" Buffer Navigation
command! Buffers :lua require('fzf-lua').buffers()<CR>
nmap <leader>fb <cmd>Buffers<CR>

" Map <Esc> key to silently clear search highlighting
nnoremap <silent> <leader>th :lua require("fzf-lua").colorschemes()<CR>

" Map fzf-lua-git to key-maps
nnoremap <silent> <leader>gs :lua require("fzf-lua").git_status()<CR>
nnoremap <silent> <leader>gc :lua require("fzf-lua").git_commits()<CR>
nnoremap <silent> <leader>gu :lua require("fzf-lua").git_bcommits()<CR>
nnoremap <silent> <leader>gb :lua require("fzf-lua").git_branches()<CR>
nnoremap <silent> <leader>gt :lua require("fzf-lua").git_stash()<CR>
