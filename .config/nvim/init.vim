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
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set undodir=~/.config/nvim/undodir      " Keeps an undo file where tracks changes made
set undofile                            " Keeps an undo file where tracks changes made

"-- Coc Specific Settings
set nobackup                            " coc requirement
set nowritebackup                       " coc requirement
set cmdheight=2
set updatetime=300                      " Faster completion
set signcolumn=yes

"-- Treesitter code folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

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

" To make file searching easier
nmap <leader>z :Files<cr>

" Execute current line in bash
nmap <leader>x :exec '!'.getline('.')<cr>

" Execute current line in bash and write output to File
nmap <leader>X :exec 'r!'.getline('.')<CR>

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
source ~/.config/nvim/plugged/lualine.vim
source ~/.config/nvim/plugged/nvim_tree.vim
source ~/.config/nvim/plugged/replace_with_register.vim
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

colorscheme dracula
let g:one_allow_italics = 1

" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'
" let g:one_allow_italics = 1

" colorscheme OceanicNext
" let g:one_allow_italics = 1
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1

" colorscheme night-owl
" let g:one_allow_italics = 1

" -------------------------------------------------------------------------------------------
"  Lua Configurations
" -------------------------------------------------------------------------------------------

"- Configuration for illuminate which should not be lazily loaded
lua << EOF
    require('illuminate').configure({
        -- providers: provider used to get references in the buffer, ordered by priority
        providers = {
            'treesitter',
        },
        -- delay: delay in milliseconds
        delay = 0,
        -- under_cursor: whether or not to illuminate under the cursor
        under_cursor = true,
        -- large_file_cutoff: number of lines at which to use large_file_config
        -- The `under_cursor` option is disabled when this cutoff is hit
        large_file_cutoff = nil,
        -- large_file_config: config to use for large files (based on large_file_cutoff).
        -- Supports the same keys passed to .configure
        -- If nil, vim-illuminate will be disabled for large files.
        large_file_overrides = nil,
        -- min_count_to_highlight: minimum number of matches required to perform highlighting
        min_count_to_highlight = 1,
    })
EOF

"-- Vim Illuminate Settings to use highlighing instead of underline
highlight link IlluminatedWordText CursorLine
highlight link IlluminatedWordRead CursorLine
highlight link IlluminatedWordWrite CursorLine

" - Configuration for impatient
lua << EOF
  _G.__luacache_config = {
    chunks = {
      enable = true,
      path = '/Users/hnadeem/.config/nvim/cache/luacache_chunks',
    },
    modpaths = {
      enable = true,
      path = '/Users/hnadeem/.config/nvim/cache/luacache_modpaths',
    }
  }
  require('impatient')
EOF

"- Cokeline setup
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
          bg = get_hex('ColorColumn', 'bg'),
       },

       sidebar = {
          filetype = 'NvimTree',
          components = {
             {
                text = '  File Explorer',
                fg = yellow,
                bg = get_hex('NvimTreeNormal', 'bg'),
                style = 'bold',
             },
          }
       },

       components = {
          {
             text = ' ',
             bg = get_hex('Normal', 'bg'),
          },
          {
             text = '',
             fg = get_hex('ColorColumn', 'bg'),
             bg = get_hex('Normal', 'bg'),
          },
          {
             text = function(buffer)
             return buffer.devicon.icon
             end,
             fg = function(buffer)
             return buffer.devicon.color
             end,
          },
          {
             text = ' ',
          },
          {
             text = function(buffer) return buffer.filename .. '  ' end,
             style = function(buffer)
             return buffer.is_focused and 'bold' or nil
             end,
          },
          {
             text = '',
             delete_buffer_on_left_click = true,
          },
          {
             text = '',
             fg = get_hex('ColorColumn', 'bg'),
             bg = get_hex('Normal', 'bg'),
          },
       },
    })
EOF

"- Configuration for lualine
lua << EOF
  require('lualine').setup({
     options = {
        theme = 'auto'
     },
     extensions = {'fzf', 'nvim-tree'}
  })
EOF

"- Configuration for fzf
lua << EOF
    require('fzf-lua').setup({
       "telescope",
       winopts={
          hl = { border = "FloatBorder", },
          preview={ default="bat" }
       },
       files = {
          git_icons = false,
          file_icons = true,
       },
       grep = {
          rg_opts = "--sort-files --hidden --column --line-number --no-heading " ..
                    "--color=always --smart-case -g '!{.git,node_modules}/*'",
       }
    })
EOF

"- Configuration for tree sitter
lua << EOF
  require('nvim-treesitter.configs').setup({
    highlight = {
      ensure_installed = "all",
      ignore_install = { "lua", "wgsl" },
      auto_install = true,
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  })
EOF

"- Configuration for nvim-comment
lua << EOF
  require('nvim_comment').setup({
    marker_padding = true,
    comment_empty = true,
    comment_empty_trim_whitespace = true,
    create_mappings = true,
    line_mapping = "gcc",
    operator_mapping = "gc",
    comment_chunk_text_object = "ic",
  })
EOF

"- Configuration for hop.nvim
lua << EOF
  require('hop').setup({
    case_insensitive = false,
    create_hl_autocmd = true,
  })
EOF

"- NvimTree Setup
lua << EOF
    require("nvim-tree").setup({
      disable_netrw = false,
      hijack_netrw = true,
      sort_by = "case_sensitive",
      view = {
        adaptive_size = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
        custom = {"venv", ".venv"},
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })
EOF
