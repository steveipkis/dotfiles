local treesitter = require('nvim-treesitter.configs').setup({
   highlight = {
      -- ensure_installed = "all",
      ensure_installed = {
         "bash",
         "cmake",
         "diff",
         "dockerfile",
         "dot",
         "git_config",
         "git_rebase",
         "gitattributes",
         "gitcommit",
         "gitignore",
         "go",
         "graphql",
         "hcl",
         "hocon",
         "java",
         "javascript",
         "jq",
         "jsdoc",
         "json",
         "json5",
         "kotlin",
         "make",
         "markdown",
         "markdown_inline",
         "python",
         "regex",
         "rust",
         "scala",
         "sql",
         "terraform",
         "toml",
         "yaml",
      },
      ignore_install = { "c", "lua", "wgsl" },
      auto_install = true,
      enable = true,
      disable = { "txt", "md" },
      additional_vim_regex_highlighting = false,
   },
})

return treesitter
