-------------------------------------------------------------------
-- Define the timeout before instantiating the `which-key` plugin
-------------------------------------------------------------------

vim.o.timeout = true
vim.o.timeoutlen = 600

local key = require('which-key')

-------------------------------------------------------------------
-- Configuration for the plugin
-------------------------------------------------------------------

key.setup(
    {
        registers = true,   -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        presets = {
            operators = false, -- adds help for operators like d, y, ...
            motions = false, -- adds help for motions
            text_objects = false, -- help for text objects triggered after entering an operator
            windows = false, -- default bindings on <c-w>
            nav = false,     -- misc bindings to work with windows
            z = true,       -- bindings for folds, spelling and others prefixed with z
            g = false,       -- bindings for prefixed with g
        },
        show_help = true, -- show a help message in the command line for using WhichKey
        show_keys = true, -- show the currently pressed key and its label as a message in the command line
        triggers = {
            { "<auto>", mode = "nxso" },
        },
    }
)
return key
