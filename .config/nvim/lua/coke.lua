local get_hex = require('cokeline.hlgroups').get_hl_attr

local coke = require('cokeline').setup({
   default_hl = {
      fg = function(buffer)
      return
      buffer.is_focused
      and get_hex('Normal', 'fg')
      or get_hex('Comment', 'fg')
      end,
      bg = get_hex('ColorColumn', 'bg'),
   },

   sidebar = {
      filetype = 'NvimTree',
      components = {
         {
            text = '  File Explorer',
            fg = yellow,
            bg = get_hex('NvimTreeNormal', 'bg'),
            style = 'bold',
         },
      }
   },

   components = {
      {
         text = ' ',
         bg = get_hex('Normal', 'bg'),
      },
      {
         text = '',
         fg = get_hex('ColorColumn', 'bg'),
         bg = get_hex('Normal', 'bg'),
      },
      {
         text = function(buffer)
         return buffer.devicon.icon
         end,
         fg = function(buffer)
         return buffer.devicon.color
         end,
      },
      {
         text = ' ',
      },
      {
         text = function(buffer) return buffer.filename .. '  ' end,
         style = function(buffer)
         return buffer.is_focused and 'bold' or nil
         end,
      },
      {
         text = '',
         delete_buffer_on_left_click = true,
      },
      {
         text = '',
         fg = get_hex('ColorColumn', 'bg'),
         bg = get_hex('Normal', 'bg'),
      },
   },
})

return coke
