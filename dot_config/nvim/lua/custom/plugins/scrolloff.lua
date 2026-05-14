---Because most plugins are hosted on GitHub, you can use the helper
---function to have less repetition in the following sections.
---@param repo string
---@return string
local function gh(repo)
  return 'https://github.com/' .. repo
end

vim.pack.add { gh 'Aasim-A/scrollEOF.nvim' }
-- TODO: when scrollEOF is patched, move this into init.lua (or comment out)
vim.o.scrolloff = math.floor(vim.api.nvim_win_get_height(0) / 3)
require('scrollEOF').setup({relative_scrolloff = 3})
-- Alternatively: hot reload the vim.o.scrolloff instead of caching so that
-- users can create an Autocmd to update on 'Win{Resized,Enter}', but that
-- seems more hacky instead of having the plugin offer a bit more.
