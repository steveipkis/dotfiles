-------------------------------------------------------------------
-- Define the timeout before instantiating the `which-key` plugin
-------------------------------------------------------------------

vim.o.timeout = true
vim.o.timeoutlen = 600

local key = require('which-key')

-------------------------------------------------------------------
-- Custom Mappings with Leader
-------------------------------------------------------------------

key.register({
    e = { "File Explorer" },
    a = {
        name = "Code Action",
        c = { "Cursor" },
        s = { "Source" }
    },
    r = {
        name = "Refactor",
        e = { "Refactor" },
        n = { "Rename" }
    },
    q = {
        name = "Quick",
        f = { "Quick Fix" }
    },
    t = {
        name = "Themes",
        h = {"Themes"}
    },
    z = { "Files" },
    x = { "Execute Line on Cursor" },
    X = { "Execute Line on Cursor and out results" },
    v = { "Vertical Terminal" },
    h = { "Horizontal Terminal" },
    ["<leader>"] = {
        name = "leader",
        w = { "Hop Forward to Word" },
        b = { "Hop Backward to Word" },
        j = { "Hop Down to Word" },
        k = { "Hop Up to Word" },
    },
    g = {
        name = "Git",
        b = "Git Branches",
        s = "Git Status",
        c = "Git Commit Log (Project)",
        u = "Git Commit Log (Buffer)",
        t = "Git Stash",
    },
    f = {
        name = "Find",
        f = "Find Files",
        w = "Find Word",
        g = "File Grep",
        b = "Find Buffer",
    }
}, { prefix = "<leader>" })


key.register({
    f = { "Go to File" },
    d = { "Go to Definition" },
    y = { "Go to Type Definition" },
    D = { "Go to References" },
    r = { "Show Documentation" },
    c = {
        name = "Comment",
        c = "Comment"
    },
    v = { "Switch to Visual Using Last Selection" },
}, { prefix = "g"})

key.register({
    f = { "Format" },
    r = { "Refactor" },
    s = { "Strip Whitespace" },
    a = { "Code Action" }
}, { prefix = "<leader>", mode = "v"})

key.register({
    a = {
        name = "Code Action",
        c = { "Cursor" },
        s = { "Source" }
    },
    z = { "Files" },
    x = { "Execute Line on Cursor" },
    X = { "Execute Line on Cursor and out results" },
    v = { "Vertical Terminal" },
    h = { "Horizontal Terminal" },
}, { prefix = "<leader>" })

-------------------------------------------------------------------
-- Configuration for the plugin
-------------------------------------------------------------------

key.setup(
    {
        marks = true,       -- shows a list of your marks on ' and `
        registers = true,   -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
            enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        },
        presets = {
            operators = true, -- adds help for operators like d, y, ...
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true,     -- misc bindings to work with windows
            z = true,       -- bindings for folds, spelling and others prefixed with z
            g = true,       -- bindings for prefixed with g
        },
        motions = {
            count = true,
        },
        popup_mappings = {
            scroll_down = "<c-d>", -- binding to scroll down inside the popup
            scroll_up = "<c-u>", -- binding to scroll up inside the popup
        },
        ignore_missing = false,                                                         -- enable this to hide mappings for which you didn't specify a label
        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
        show_help = true,                                                               -- show a help message in the command line for using WhichKey
        show_keys = true,                                                               -- show the currently pressed key and its label as a message in the command line
        triggers = "auto",                                                              -- automatically setup triggers
        triggers_nowait = {
            -- marks
            "`",
            "'",
            "g`",
            "g'",
            -- registers
            '"',
            "<c-r>",
            -- spelling
            "z=",
        },
        triggers_blacklist = {
            -- list of mode / prefixes that should never be hooked by WhichKey
            -- this is mostly relevant for keymaps that start with a native binding
            i = { "j", "k" },
            v = { "j", "k" },
        },
    }
)
return key
