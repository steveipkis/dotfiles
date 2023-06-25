-- When we install LSP, we may need to turn this section on
-- require("fzf-lua").lsp_code_actions({ sync = true })
local fzf_tools = require('fzf-lua').setup({
   "telescope",
   winopts={
      hl = { border = "FloatBorder", },
      preview={ default="bat" }
   },
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
})

return fzf_tools
