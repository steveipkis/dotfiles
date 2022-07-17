Plug 'mhinz/vim-startify'

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_custom_header = [
            \ '██╗     ██╗   ██╗███╗   ██╗ █████╗ ██████╗     ██╗   ██╗██╗███╗   ███╗',
            \ '██║     ██║   ██║████╗  ██║██╔══██╗██╔══██╗    ██║   ██║██║████╗ ████║',
            \ '██║     ██║   ██║██╔██╗ ██║███████║██████╔╝    ██║   ██║██║██╔████╔██║',
            \ '██║     ██║   ██║██║╚██╗██║██╔══██║██╔══██╗    ╚██╗ ██╔╝██║██║╚██╔╝██║',
            \ '███████╗╚██████╔╝██║ ╚████║██║  ██║██║  ██║     ╚████╔╝ ██║██║ ╚═╝ ██║',
            \ '╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝',
        \]

let g:startify_lists = [
          \ { 'type': 'files', 'header': ['Files'] },
          \ { 'type': 'bookmarks', 'header': ['Bookmarks'] },
          \ { 'type': 'sessions', 'header': ['Sessions'] },
          \ ]

let g:startify_bookmarks = [
            \ { 'ai': '~/Code/disney/airflow' },
            \ { 'c': '~/Code/disney/compliance'},
            \ { 't': '~/Code/disney/thanos'},
            \ { 'd': '~/Code/disney/datasources' },
            \ { 'p': '~/Code/disney/data-platform-infra'},
            \ { 'i': '~/Code/disney/introspection'},
            \ { 'aws': '~/Code/disney/terraform-aws-dataeng-iam-databricks-team-resources'},
            \ { 'sql': '~/Code/disney/terraform-databricks-dataeng-databricks-sql-resources'},
            \ { 'teams': '~/Code/disney/terraform-databricks-dataeng-databricks-team-resources'},
            \ { 'workspace': '~/Code/disney/terraform-databricks-dataeng-workspace-resources'},
            \ ]

" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1

" Similar to Vim-rooter
let g:startify_change_to_vcs_root = 1

" Automatically Update Sessions
let g:startify_session_persistence = 1

" Get rid of empy buffer and quit
let g:startify_enable_special = 0
