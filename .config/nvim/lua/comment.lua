local comment = require('nvim_comment').setup({
   marker_padding = true,
   comment_empty = true,
   comment_empty_trim_whitespace = true,
   create_mappings = true,
   line_mapping = "gcc",
   operator_mapping = "gc",
   comment_chunk_text_object = "ic",
})

return comment
