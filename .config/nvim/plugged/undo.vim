Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Initialize undo tree
nnoremap <leader>u :UndotreeToggle<CR>

" Configure layout for undo tree
let g:undotree_WindowLayout = 2

" Persistent undo; i.e. store the undo in a persistent file
if has("persistent_undo")
   let target_path = expand('~/.config/nvim/undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
