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
set relativenumber                      " Displays the relative line number based on cursor
set scrolloff=8                         " Ensures that when scrolling the cursor doesn't reach the end of the page
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set showtabline=4                       " Always show tabs
set sidescrolloff=8                     " Ensures that when scrolling the cursor doesn't reach the end of the page
set smartcase							" If capital letters are in pattern, becomes case sensitive
set smartindent                         " Makes indenting smart
set expandtab                           " Converts tabs to spaces
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set softtabstop=4                       " Number of spaces that a tab counts for
set tabstop=4                           " Insert 4 spaces for a tab
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set termguicolors                       " Support 256 colors
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set undodir=~/.config/nvim/undodir      " Keeps an undo file where tracks changes made
set undofile                            " Keeps an undo file where tracks changes made


"-- Coc Specific Settings
set nobackup                            " coc requirement
set nowritebackup                       " coc requirement
set cmdheight=2
set updatetime=300                      " Faster completion
set signcolumn=yes

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" -------------------------------------------------------------------------------------------
"  Key Maps
" -------------------------------------------------------------------------------------------

" Edit init.vim without having to navigate
command! Vimedit edit $MYVIMRC

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" To make file searching easier
nmap <leader>z :Files<cr>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Remap multi-line select to match VsCode Vim command g+b
nmap gb <C-n>
xmap gb <C-n>

" Use alt + hjkl to resize windows (Alt needs to be remapped in iTerm2)
nnoremap <m-j> :resize -2<cr>
nnoremap <m-k> :resize +2<cr>
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

" TAB in general mode will move to text buffer
nnoremap <tab> :bnext<cr>
" SHIFT-TAB will go back
nnoremap <s-tab> :bprevious<cr>

" -------------------------------------------------------------------------------------------
"  Plugins
" -------------------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/plugged/airline.vim
source ~/.config/nvim/plugged/autopairs.vim
source ~/.config/nvim/plugged/blame.vim
source ~/.config/nvim/plugged/better_whitespace.vim
source ~/.config/nvim/plugged/coc_tools.vim
source ~/.config/nvim/plugged/cokeline.vim
source ~/.config/nvim/plugged/commentary.vim
source ~/.config/nvim/plugged/easyalign.vim
source ~/.config/nvim/plugged/easymotion.vim
source ~/.config/nvim/plugged/floaterm.vim
source ~/.config/nvim/plugged/fzf_tools.vim
source ~/.config/nvim/plugged/illuminate.vim
source ~/.config/nvim/plugged/multiline.vim
source ~/.config/nvim/plugged/oceanic.vim
source ~/.config/nvim/plugged/polyglot.vim
source ~/.config/nvim/plugged/qscope.vim
source ~/.config/nvim/plugged/replace_with_register.vim
source ~/.config/nvim/plugged/rooter.vim
source ~/.config/nvim/plugged/surround.vim
source ~/.config/nvim/plugged/vimsignature.vim
source ~/.config/nvim/plugged/vimtargets.vim

call plug#end()

" -------------------------------------------------------------------------------------------
"  Color Scheme
" -------------------------------------------------------------------------------------------

colorscheme OceanicNext
let g:airline_theme='oceanicnext'

lua << EOF
    local get_hex = require('cokeline/utils').get_hex

    require('cokeline').setup({
      default_hl = {
        fg = function(buffer)
          return
            buffer.is_focused
            and get_hex('Normal', 'fg')
             or get_hex('Comment', 'fg')
        end,
        bg = 'NONE',
      },

      components = {
        {
          text = function(buffer) return (buffer.index ~= 1) and '▏' or '' end,
          fg = get_hex('Normal', 'fg')
        },
        {
          text = function(buffer) return '    ' .. buffer.devicon.icon end,
          fg = function(buffer) return buffer.devicon.color end,
        },
        {
          text = function(buffer) return buffer.filename .. '    ' end,
          style = function(buffer) return buffer.is_focused and 'bold' or nil end,
        },
        {
          text = '',
          delete_buffer_on_left_click = true,
        },
        {
          text = '  ',
        },
      },
    })
EOF

" -------------------------------------------------------------------------------------------
"  Miscellaneous
" -------------------------------------------------------------------------------------------
