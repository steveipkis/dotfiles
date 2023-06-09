local indent = require("indent_blankline").setup {
    indentLine_enabled = 1,
    filetype_exclude = {
        "help",
        "startify",
        "dashboard",
        "packer",
        "neogitstatus",
        "NvimTree",
        "Trouble",
    },
    buftype_exclude = { 'terminal', 'nofile', 'quickfix' },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = false,
}

-- vim.api.nvim_set_keymap('n', '<leader>cc', '<cmd>lua jump_to_indent()<CR>', {})

return indent
