Plug 'mhinz/vim-startify'

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_custom_header = 'startify#center([
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣶⣶⣶⣶⣶⣶⣶⣦⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⠿⠛⠛⠉⠉⠉⠉⠉⠉⠉⠙⠛⠻⢿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠒⠈⠉⠉⠉⠉⠉⣹⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⠀⠀⠀⣰⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⢰⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⡀⠀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢺⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠉⠑⠢⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡇⠀⠀⠀⠈⠑⠢⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠉⠐⠢⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡟⠀⠈⠑⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠒⠠⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠁⠀⠀⢀⣼⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠒⠂⠤⠤⠀⣀⡀⠀⠀⠀⣼⣿⠇⠀⠀⢀⣸⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⠀⠀⠀⣤⡄⠀⠀⠀⣠⣤⠀⠀⢠⣭⣀⣤⣤⣤⡀⠀⠀⠀⢀⣤⣤⣤⣤⡀⠀⠀⠀⢠⣤⢀⣤⣤⣄⠀⠀⣿⣿⠀⠉⣹⣿⠏⠉⠉⢱⣶⣶⣶⡦⠀⠀⠀⢠⣶⣦⣴⣦⣠⣴⣦⡀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⢠⣿⡇⠀⠀⠀⠀⠀⢠⣿⠇⠀⠀⠀⣿⡇⠀⠀⣿⡿⠉⠀⠈⣿⣧⠀⠀⠰⠿⠋⠀⠀⢹⣿⠀⠀⠀⣿⡿⠋⠀⠹⠿⠀⠀⢻⣿⡇⢠⣿⡟⠀⠀⠀⠈⠉⢹⣿⡇⠀⠀⠀⢸⣿⡏⢹⣿⡏⢹⣿⡇⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⢰⣿⠃⠀⢠⣿⡇⠀⠀⠀⣿⡇⠀⠀⣠⣴⡶⠶⠶⣿⣿⠀⠀⢠⣿⡇⠀⠀⠀⠀⠀⠀⢸⣿⣇⣿⡿⠀⠀⠀⠀⠀⠀⣿⣿⠁⠀⠀⠀⣿⣿⠀⣾⣿⠀⣾⣿⠁⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⣿⣟⠀⠀⠀⠀⠀⠀⢻⣿⡀⠀⢀⣼⣿⠀⠀⢸⣿⠀⠀⠀⢰⣿⠇⠀⢰⣿⣇⠀⠀⣠⣿⡏⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠁⠀⠀⠀⣀⣀⣠⣿⣿⣀⡀⠀⢠⣿⡟⢠⣿⡟⢀⣿⡿⠀⠀⠀⠀⠀",
            \ "⠀⠀⠀⠀⠀⠛⠛⠛⠛⠛⠛⠁⠀⠈⠛⠿⠟⠋⠛⠃⠀⠀⠛⠛⠀⠀⠀⠘⠛⠀⠀⠀⠙⠿⠿⠛⠙⠛⠃⠀⠀⠚⠛⠀⠀⠀⠀⠀⠀⠀⠘⠿⠿⠃⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⠀⠸⠿⠇⠸⠿⠇⠸⠿⠇⠀⠀⠀⠀⠀",
			\])'


			\ "                                                       ▄░░▒▒▓▒▒░▒░░░░░░░░░░░▄▄",
			\ "                                           ░░░░░  ░░░░░░░░░░▒▒▒▒▒░░░░░░░░░░░░░ ░░▄",
			\ "                               ░      ░░░░░░░░░░ ▄▒░░▒ ▐░▒▒▒▒▒░░░░░░░░░░           ░▄",
			\ "                           ░░░░░░░░░░░░░░░░░░░ ▓▒░ ▒▒░▒▒▒▒▒▒░░░░░░                    ░  ░░",
			\ "                       ░░░░░░░░░░░░░░░░░░░░░ ▄▒░░░▒▒▒▒▒▒▒▒▒▒░ ░░▄██                    ░   ░░░░",
			\ "                    ░░░░░░░░░░░░░░░░░░░░░░░ ▒░░░░░█▒░▒▒▒▒▒▒░░▒████                      ░    ░░░░░░░░",
			\ "               ░░░░░░░░░░░░░░░░░░░░░░░░░░░ ▒░░░░▐█░░▒▒▒▒░ ░▄████▀                             ░░░░░░░░░░░",
			\ "             ░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ░░░░░▄▌░░░░░ ▄▄▄▒▒▀▀▀                      ░░        ░░░░░░░░░░░░░░",
			\ "           ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ░░░ ░▄▀░░▒▒░░▒▒▒▒▒▒▒▒▒▒▒░                   ░░░       ▐░░░░░░░░░░░░░░░░",
			\ "         ░░░░░░░░░░░░░░░░░░░░░░░░░░░▒░▄▒░░░   ░░░░       ▀▒░▒▒▒▒▒░░░░░                ░░░       ▒▒░░░░░░░░░░░░░░░░",
			\ "       ░░░░░░░░░░░░░░░░░░░░░░░░░░░▒░ ░░░░░                    ░░░░░░░░░░░              ░░░      ▒▒▒▒▒▒▒░░░░░░░░░░░░░░",
			\ "     ░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░           ░                   ░░░░░░░░░░░            ░░░     ▐▒▒▒▒▒▒▒▒░░░░░░░░░░░░░",
			\ "   ░░░░░░░░░░░░░░░▒▒▒▒▒▒▒░░░░░░▒     ▄▀     ▐ ▄                      ░░░░               ░░░     ▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░",
			\ " ░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒░░░▒     ▐     ░▐░▄▒▒                                  ░░░░░░░░░     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░",
			\ "░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░░▒            ░▄▄▒▒        ▀▀                            ░░░░░     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░",
			\ "░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒░░▓          ░ ▐░▀▒▒                                       ░        ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░",
			\ "░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▌         ▐░     ▐              ▐                                 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░",
			\ "░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐           ░               ▐▄                          ░░ ░      ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░",
			\ "░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░        ▄▓█ ░▐▄▄▄▄▄▄▄▄▄     ▒                          ░░░░░    ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░",
			\ "░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ░░▐▒▓▒▒▐ ▀▒▒▒▓▒▒▒░░░  ░░                    ░   ░░░░░░░     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░",
			\ "░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒         ▀▀█▓ ░      ▀▒░░░ ░░                     ░░░░░░░░░░░     ▐▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░",
			\ "░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                ░       ░░░░░           ░           ░░░░░░░░░░░     ▐▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░",
			\ "░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒             ░   ▐      ▒▄░▐       ▄░░               ░░░░░░░░░░░     ▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░",
			\ "░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒             ░    ░▐      ░░   ▄▒▀░                    ░░░░░  ░░░░    ░▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░",
			\ "░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒            ░    ░ ▒▐   ▄▄▄▒░░                          ▐░░░░░   ░     ▐▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░",
			\ "░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ███               ▐███▒▒░▒▀▀▀▀▀▀▀░░░░                     ░░░░░░ ░░     ▐▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░",
			\ "░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌                                                 ░           ░░░░░░░░     ▐▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░",
			\ "░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░            ░░░▒░░░░░░                       ░▄▒▒▒▒              ░░░░░     ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░",
			\ "░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                 ░░░░░          ░       ░░ ▄▒▒▒▒▓▒▒▒                 ░░░    ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░",
			\ "  ░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄                ░                  ░░▐▒▒▓▓▓▓▓▓▒░░                        ▐▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░",
			\ "  ░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄        ░                       ░▒▒▓▓▓▓▓▓▓▒░░                         ▐▒▒▒▒▒▒▒▒▒▒░░░░░░░░",
			\ "  ░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄      ▒░             ░      ░▒▓▓▓▓▓▓▓▓▒▒                           ▐▒▒▒▒▒▒░░░░░░░░░░",
			\ "   ░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▄   ░ ░         ▐▒▒▒▒▒▒▒▒▒░▀▓▓▓▓▓▓▓▒                             ▐▒▒▒░░░░░░░░░░░",
			\ "    ░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▄▒▒▒▒░       ▐███▀▀░░░  ░░ ░░▒▀░                               ▒░░░░░░░░░░░░",
			\ "     ░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▒▒░░            ░░░                                       ▒░░░░░░░░░░░",
            \ "              ░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒███████╗████████╗ █████╗ ██████╗     ██╗   ██╗██╗███╗   ███╗        ░░░░░░░░░░",
            \ "                ░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██╔════╝╚══██╔══╝██╔══██╗██╔══██╗    ██║   ██║██║████╗ ████║       ░░░░░░░░░░",
            \ "                  ░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒███████╗   ██║   ███████║██████╔╝    ██║   ██║██║██╔████╔██║      ░░░░░░░░░░",
            \ "                     ░░▒▒▒▒▒▒▒▒▒▒▒▒▒╚════██║   ██║   ██╔══██║██╔══██╗    ╚██╗ ██╔╝██║██║╚██╔╝██║      ░░░░░░░░░░",
            \ "                       ░░░▒▒▒▒▒▒▒▒▒▒███████║   ██║   ██║  ██║██║  ██║     ╚████╔╝ ██║██║ ╚═╝ ██║      ░░░░░░░░░░",
            \ "                         ░░░░▒▒▒▒▒▒▒╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝      ░░░░░░░░░░",

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly. When we are not in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_bookmarks = [
            \ { 'ai': '~/Code/disney/airflow' },
            \ { 'c': '~/Code/disney/compliance'},
            \ { 't': '~/Code/disney/thanos'},
            \ { 'd': '~/Code/disney/datasources' },
            \ { 'p': '~/Code/disney/data-platform-infra'},
            \ { 'i': '~/Code/disney/introspection'},
            \ ]

          " \ { 'type': function('s:gitModified'), 'header': ['   Git Modified']},
let g:startify_lists = [
          \ { 'type': 'files', 'header': ['   Recent Files'] },
          \ { 'type': 'commands',  'header': ['   Commands'] },
          \ ]

          " \ { 'type': 'dir', 'header': ['   Project '. getcwd()] },
          " \ { 'type': 'bookmarks', 'header': ['Bookmarks'] },

let g:startify_custom_footer = 'startify#center([
            \ "Ergo Cogito Sum",
            \ ])'

            " \ "If you only knew the power of the dark side!",

" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1

" Similar to Vim-rooter
let g:startify_change_to_vcs_root = 1

" Automatically Update Sessions
let g:startify_session_persistence = 1

" Get rid of empy buffer and quit
let g:startify_enable_special = 0

" Number of files to list
let g:startify_files_number = 12

let g:startify_commands = [
        \ {'f': ['Search Files', 'Files']},
        \ {'d': ['Dot Files', 'Vimedit']},
        \ {'up': ['Update Plugins', 'PlugInstall | PlugUpdate']},
        \ {'ut': ['Update Treesitter', 'TSUpdate']},
        \ {'t': ['Themes', 'lua require("fzf-lua").colorschemes()']},
        \ ]
