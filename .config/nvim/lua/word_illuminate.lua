local word_illuminate = require('illuminate').configure({
   -- providers: provider used to get references in the buffer, ordered by priority
   providers = {
      'treesitter',
   },
   delay = 0,
   under_cursor = true,
   large_file_cutoff = nil,
   large_file_overrides = nil,
   min_count_to_highlight = 1,
})

return word_illuminate
