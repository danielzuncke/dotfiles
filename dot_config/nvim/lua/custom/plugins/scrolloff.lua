---Because most plugins are hosted on GitHub, you can use the helper
---function to have less repetition in the following sections.
---@param repo string
---@return string
local function gh(repo)
  return 'https://github.com/' .. repo
end

-- TODO: use official when merged (dev contains all the branches).
vim.pack.add { {
  src = gh 'danielzuncke/scrollEOF.nvim',
  version = 'dev',
} }
-- vim.pack.add { gh 'Aasim-A/scrollEOF.nvim' }
require('scrollEOF').setup {
  insert_mode = true,
  relative_scrolloff = 3,
}
