local nvim_tree = require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_by_name = {
                '.DS_Store',
                'thumbs.db',
            },
            never_show = {},
        },
    }
})

return nvim_tree
