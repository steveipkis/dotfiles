local opt = vim.opt
local g = vim.g

-------------------------------------- globals -----------------------------------------

-- Configuration for Better whitespace
g.better_whitespace_filetypes_blacklist = {
  "terminal",
  "nofile",
  "markdown",
  "help",
  "startify",
  "dashboard",
  "packer",
  "neogitstatus",
  "NvimTree",
  "Trouble"
}

-------------------------------------- options ------------------------------------------

-- Using treesitter for code folding
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldlevel = 99

-- Better tabbing
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-------------------------------------- autocmds ------------------------------------------

vim.api.nvim_exec([[
  autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy
  autocmd BufRead,BufNewFile JenkinsfileDEV set filetype=groovy
  autocmd BufRead,BufNewFile JenkinsfileINT set filetype=groovy
  autocmd BufRead,BufNewFile JenkinsfileQA set filetype=groovy
  autocmd BufRead,BufNewFile JenkinsfilePROD set filetype=groovy
  autocmd BufRead,BufNewFile Dockerfile-jenkins set filetype=Dockerfile
]], false)
