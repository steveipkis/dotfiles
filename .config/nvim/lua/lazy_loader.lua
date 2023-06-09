-- Configuration for impatient to lazy load our plugins

_G.__luacache_config = {
   chunks = {
      enable = true,
      path = '/Users/hnadeem/.config/nvim/cache/luacache_chunks',
   },
   modpaths = {
      enable = true,
      path = '/Users/hnadeem/.config/nvim/cache/luacache_modpaths',
   }
}

local lazy_loader = require('impatient').enable_profile()
return lazy_loader
