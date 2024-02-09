---@type MappingsTable

local M = {}

M.general= {
  -- Configuration to mimic quickscope
  n = {
    ["f"] = {
      function()
        require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true })
      end,
      "Find Next Character",
      opts = { silent = true }
    },
    ["F"] = {
      function()
        require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true })
      end,
      "Find Previous Character",
      opts = { silent = true }
    },
    ["t"] = {
      function()
        require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
      end,
      "Find Next Character",
      opts = { silent = true }
    },
    ["T"] = {
      function()
        require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
      end,
      "Find Previous Character",
      opts = { silent = true }
    },
  },
}

M.easymotion= {
  n = {
    ["<leader><leader>w"] = { ':HopWordAC<CR>', "Hop Forward to Word", opts = { silent = true } },
    ["<leader><leader>b"] = { ':HopWordBC<CR>', "Hop Backward to Word", opts = { silent = true } },
    ["<leader><leader>j"] = { ':HopLineAC<CR>', "Hop Down to Word", opts = { silent = true } },
    ["<leader><leader>k"] = { ':HopLineBC<CR>', "Hop Up to Word", opts = { silent = true } },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

-- M.fzf= {
--   plugin = true,
--
--   n = {
--     -- find
--     ["<leader>ff"] = { "<cmd> FzfLua files <CR>", "Find files" },
--     ["<leader>fw"] = { "<cmd> FzfLua live_grep_resume <CR>", "Live grep" },
--     ["<leader>fb"] = { "<cmd> FzfLua buffers <CR>", "Find buffers" },
--     ["<leader>fh"] = { "<cmd> FzfLua help_tags <CR>", "Help page" },
--     ["<leader>fo"] = { "<cmd> FzfLua oldfiles <CR>", "Find oldfiles" },
--     ["<leader>fz"] = { "<cmd> FzfLua lgrep_curbuf <CR>", "Find in current buffer" },
--
--     -- git
--     ["<leader>cm"] = { "<cmd> FzfLua git_commits <CR>", "Git commits" },
--     ["<leader>gt"] = { "<cmd> FzfLua git_status <CR>", "Git status" },
--
--     -- pick a hidden term
--     ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "Pick hidden term" },
--
--     -- theme switcher
--     ["<leader>th"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
--     ["<leader>ma"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },
--   },
-- }

return M
