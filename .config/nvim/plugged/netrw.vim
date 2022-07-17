"- Below are a list of settings that make netrw similar to nerdtree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' "- Hides dot files

"- Toggle Project Drawer on the left
noremap <leader>e :Lexplore 20<cr>


"- To turn on Project Drawer at all times
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
