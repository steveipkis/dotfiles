Plug 'phaazon/hop.nvim'

"- Configuration to mimic easymotion
nnoremap <leader><leader>w :HopWordAC<cr>
nnoremap <leader><leader>b :HopWordBC<cr>
nnoremap <leader><leader>j :HopLineAC<cr>
nnoremap <leader><leader>k :HopLineBC<cr>

"- Configuration to mimic quickscope
noremap f :HopChar1CurrentLineAC<cr>
noremap F :HopChar1CurrentLineBC<cr>

nnoremap t :lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<CR>
nnoremap T :lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<CR>
