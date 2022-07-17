Plug 'phaazon/hop.nvim'

"- Configuration to mimic easymotion
nnoremap <leader><leader>w :HopWordAC<cr>
nnoremap <leader><leader>b :HopWordBC<cr>
nnoremap <leader><leader>j :HopLineAC<cr>
nnoremap <leader><leader>k :HopLineBC<cr>

"- Configuration to mimic quickscope
noremap f :HopChar1CurrentLineAC<cr>
noremap F :HopChar1CurrentLineBC<cr>

" - Since I dont know how to configure the offset, using lua command
lua << EOF
    vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
    vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
EOF
