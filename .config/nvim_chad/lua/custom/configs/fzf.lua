local M = {
   files = {
      git_icons = false,
      file_icons = true,
      fzf_opts = {
          ['--history'] = vim.fn.stdpath("data") .. '/fzf-lua-files-history',
      },
   },
   grep = {
      rg_opts = "--sort-files --hidden --column --line-number --no-heading " ..
                "--color=always --smart-case -g '!{.git,node_modules}/*'",
      fzf_opts = {
          ['--history'] = vim.fn.stdpath("data") .. '/fzf-lua-grep-history',
      },
   }
}

return M
