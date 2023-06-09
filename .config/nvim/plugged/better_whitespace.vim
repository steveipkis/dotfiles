Plug 'ntpeters/vim-better-whitespace'

" let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:strip_only_modified_lines=1
let g:show_spaces_that_precede_tabs=1

hi ExtraWhitespace guibg=#990000 ctermbg=red

let g:better_whitespace_filetypes_blacklist=[ "terminal", "nofile", "markdown", "help", "startify", "dashboard", "packer", "neogitstatus", "NvimTree", "Trouble" ]
