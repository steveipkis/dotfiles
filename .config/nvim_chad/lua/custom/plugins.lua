local overrides = require("custom.configs.overrides")

local plugins = {
  ----------------------------------------------------
  -- override plugin definition options
  ----------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    -- dependencies = {
    --   -- format & linting
    --   {
    --     "jose-elias-alvarez/null-ls.nvim",
    --     config = function()
    --       -- require "custom.configs.null-ls"
    --     end,
    --   },
    -- },
    init = function()
      require("core.utils").lazy_load "nvim-lspconfig"
    end,
    config = function()
      require "plugins.configs.lspconfig"
      -- require "custom.configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("plugins.configs.others").luasnip(opts)
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = function()
      return require "plugins.configs.cmp"
    end,
    config = function(_, opts)
      require("cmp").setup(opts)
    end,
  },
  {
    "williamboman/mason.nvim",
    enabled = false,
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    opts = function()
      return overrides.mason
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "mason")
      require("mason").setup(opts)

      -- custom nvchad cmd to install all mason binaries listed
      vim.api.nvim_create_user_command("MasonInstallAll", function()
        vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
      end, {})

      vim.g.mason_binaries_list = opts.ensure_installed
    end,
  },
  ----------------------------------------------------
  -- override plugin configs
  ----------------------------------------------------
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    init = function()
      require("core.utils").load_mappings "nvimtree"
      -- require("custom.mappings").nvimtree
    end,
    opts = function()
      return overrides.nvimtree
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "nvimtree")
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    init = function()
      require("core.utils").lazy_load "nvim-treesitter"
    end,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return overrides.treesitter
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "syntax")
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  ----------------------------------------------------
  -- custom plugins
  ----------------------------------------------------
  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    opts = function()
      return require("custom.configs.project")
    end,
    config = function (_, opts)
      require("project_nvim").setup(opts)
    end
  },
  -- {
  --   "ibhagwan/fzf-lua",
  --   opts = function()
  --     return require("custom.configs.fzf")
  --   end,
  --   config = function (_, opts)
  --     require("fzf-lua").setup(opts)
  --   end
  -- },
  {
    "ibhagwan/fzf-lua",
    cmd = { "FzfLua" },
    -- init = function()
    --   require("core.utils").load_mappings "telescope"
    -- end,
    opts = function()
      return require("custom.configs.fzf")
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "telescope")
      require("fzf-lua").setup(opts)
    end,
  },
  {
    "phaazon/hop.nvim",
    cmd = { "HopWordAC", "HopWordBC", "HopLineAC", "HopLineBC" },
    opts = function()
      return require("custom.configs.hop")
    end,
    config = function (_, opts)
      require("hop").setup(opts)
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    keys = {
      { "cs", "ds", "ys" }
    },
    config = function (_, opts)
      require("nvim-surround").setup(opts)
    end
  },
  {
    "ntpeters/vim-better-whitespace",
    lazy = false,
  },
}

return plugins
