" -------------------------------------------------------------------------------------------
"  General Settings
" -------------------------------------------------------------------------------------------

"-- Remap the leader key to space
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"

syntax enable                           " Enables syntax highlighing

set autoindent                          " Good auto indent
set clipboard=unnamed                   " Copy paste between vim and everything else
set conceallevel=0                      " So that I can see `` in markdown files
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set hidden                              " Required to keep multiple buffers open
set ignorecase							" Ignoring case in a pattern
set iskeyword+=-						" treat dash separated words as a word text object"
set number                              " Line numbers
set numberwidth=4
set scrolloff=8                         " Ensures that when scrolling the cursor doesn't reach the end of the page
set sidescrolloff=8                     " Ensures that when scrolling the cursor doesn't reach the end of the page
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set showtabline=4                       " Always show tabs
set smartcase							" If capital letters are in pattern, becomes case sensitive
set smartindent                         " Makes indenting smart
set expandtab                           " Converts tabs to spaces
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set softtabstop=4                       " Number of spaces that a tab counts for
set tabstop=4                           " Insert 4 spaces for a tab
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set termguicolors                       " Support 256 colors
set timeoutlen=400                      " By default timeoutlen is 1000 ms
set undodir=~/.config/nvim/undodir      " Keeps an undo file where tracks changes made
set undofile                            " Keeps an undo file where tracks changes made

"-- Coc Specific Settings
set nobackup                            " coc requirement
set nowritebackup                       " coc requirement
set cmdheight=2
set updatetime=250                      " Faster completion
set signcolumn=yes

"-- Treesitter code folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %

" In order to treat Jenkinsfile as groovy
autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy

" -------------------------------------------------------------------------------------------
" Disable Unused Standard Plugins
" -------------------------------------------------------------------------------------------

let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_remote_plugins    = 1

let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1

let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1

let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1

" -------------------------------------------------------------------------------------------
"  Key Maps
" -------------------------------------------------------------------------------------------

" Edit init.vim without having to navigate
command! Vimedit edit $MYVIMRC

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Map <Esc> key to silently clear search highlighting
nnoremap <silent> <Esc> :silent! noh<CR>

" Execute current line in bash
nmap <leader>x :exec '!'.getline('.')<cr>

" Execute current line in bash and write output to File
nmap <leader>X :exec 'r!'.getline('.')<CR>

" Replace-with-register alternative: don't copy the replaced text after pasting in visual mode
xnoremap <silent> p p:let @+=@0<CR>:let @"=@0<CR>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Remap multi-line select to match VsCode Vim command g+b
nmap gb <C-n>
xmap gb <C-n>

" Use alt + hjkl to resize windows (Alt needs to be remapped in iTerm2)
nnoremap <m-k> :resize -2<cr>
nnoremap <m-j> :resize +2<cr>
nnoremap <m-h> :vertical resize -2<cr>
nnoremap <m-l> :vertical resize +2<cr>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<c-n>")
inoremap <expr> <c-k> ("\<c-p>")

" Better window navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" TAB in general mode will move to next buffer
nnoremap <tab> :bnext<cr>
" SHIFT-TAB will go back
nnoremap <s-tab> :bprevious<cr>

" Send char deletes to black hole, not worth saving
nnoremap x "_x
" Move across wrapped lines like regular lines
noremap 0 ^
" Just in case you need to go to the very beginning of a line
noremap ^ 0

" -------------------------------------------------------------------------------------------
"  Plugins
" -------------------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/plugged/better_whitespace.vim
source ~/.config/nvim/plugged/coc_tools.vim
source ~/.config/nvim/plugged/cokeline.vim
source ~/.config/nvim/plugged/commentary.vim
source ~/.config/nvim/plugged/fzf_tools.vim
source ~/.config/nvim/plugged/hop.vim
source ~/.config/nvim/plugged/illuminate.vim
source ~/.config/nvim/plugged/impatient.vim
source ~/.config/nvim/plugged/indent.vim
source ~/.config/nvim/plugged/key.vim
source ~/.config/nvim/plugged/lualine.vim
source ~/.config/nvim/plugged/nvim_tree.vim
source ~/.config/nvim/plugged/nv_term.vim
source ~/.config/nvim/plugged/rooter.vim
source ~/.config/nvim/plugged/startify.vim
source ~/.config/nvim/plugged/surround.vim
source ~/.config/nvim/plugged/themes.vim
source ~/.config/nvim/plugged/treesitter.vim
" source ~/.config/nvim/plugged/vimsignature.vim
source ~/.config/nvim/plugged/vimtargets.vim

call plug#end()

" -------------------------------------------------------------------------------------------
"  Color Schemes I like (Available in themes.vim)
" -------------------------------------------------------------------------------------------

let g:one_allow_italics = 1

"- Slowest Color Scheme
" colorscheme bluloco-dark

colorscheme dracula

" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'

" colorscheme OceanicNext
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1

" colorscheme night-owl

" -------------------------------------------------------------------------------------------
"  Lua Configurations
" -------------------------------------------------------------------------------------------

"- Configuration for illuminate should not be lazily loaded
lua << EOF
require('treesitter')       -- ./lua/treesitter.lua
require('word_illuminate')  -- ./lua/word_illuminate.lua
require('project')          -- ./lua/project.lua
require('lazy_loader')      -- ./lua/lazy_loader.lua
-- All Plugins Below are lazily loaded
require('nvim-surround').setup({})
require("nvterm").setup({})
require('coke')             -- ./lua/coke.lua
require('comment')          -- ./lua/comment.lua
require('fzf_tools')        -- ./lua/fzf_tools.lua
require('hopper')           -- ./lua/hopper.lua
require('indent')           -- ./lua/indent.lua
require('key')              -- ./lua/key.lua
require('nvim_tree')        -- ./lua/nvim_tree.lua
require('status_line')      -- ./lua/status_line.lua
EOF
