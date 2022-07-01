Plug 'vim-airline/vim-airline'

let g:airline_theme='oceanicnext'

""-- Disable vim-airline integration:
let g:airline#extensions#coc#enabled = 0

""-- Change error symbol:
let airline#extensions#coc#error_symbol = 'Error:'

""-- Change warning symbol:
let airline#extensions#coc#warning_symbol = 'Warning:'

""-- Change error format:
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'

""-- Change warning format:
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
