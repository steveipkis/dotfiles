local M = {}

M.mason = {
  ensure_installed = { "lua-language-server", "pyright" }, -- not an option from mason.nvim
  PATH = "skip",
  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },
    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },
  max_concurrent_installers = 10,
}

M.nvimtree = {
  disable_netrw = true,
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
  -- settings used for project-nvim to set root project
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
}

M.treesitter = {
  auto_install = true,
  ensure_installed = {
    "bash",
    "c",
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
    "lua",
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
  highlight = {
    enable = true,
    disable = { "txt", "md" },
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = false },
}

return M
