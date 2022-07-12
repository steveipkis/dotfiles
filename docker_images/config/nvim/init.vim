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

" -- Coc Specific Settings
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

" Use alt + hjkl to resize windows
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

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" -------------------------------------------------------------------------------------------
"  Plugins
" -------------------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-rooter'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kshenoy/vim-signature'
Plug 'mhartington/oceanic-next'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'RRethy/vim-illuminate'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'wellle/targets.vim'

call plug#end()

" -------------------------------------------------------------------------------------------
"  Color Scheme
" -------------------------------------------------------------------------------------------

colorscheme OceanicNext

" Airline specific configuration
let g:airline_theme='oceanicnext'
let g:airline#extensions#coc#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let airline#extensions#coc#error_symbol = 'Error:'
let airline#extensions#coc#warning_symbol = 'Warning:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" Quickscope highlighing
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=150

" -------------------------------------------------------------------------------------------
"  Coc Extensions
" -------------------------------------------------------------------------------------------

let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-lightbulb',
            \ 'coc-pyright',
            \ 'coc-sql',
            \ 'coc-tabnine',
            \ 'coc-yaml',
            \ ]

" -------------------------------------------------------------------------------------------
"  Coc Functions
" -------------------------------------------------------------------------------------------

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" -------------------------------------------------------------------------------------------
"  Coc Key Maps
" -------------------------------------------------------------------------------------------

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gD <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> gh :call ShowDocumentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" NOTE: Please see `:h coc-status` for integrations with external plugins that
" vim-airline integration is stored in  ~/.config/nvim/plugged/airline.vim

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
