---Because most plugins are hosted on GitHub, you can use the helper
---function to have less repetition in the following sections.
---@param repo string
---@return string
local function gh(repo)
  return 'https://github.com/' .. repo
end

-- This file is for 1-5 five files, anything complex should be neatly sorted
-- into their own file.

vim.pack.add { gh 'Bekaboo/deadcolumn.nvim' }
vim.pack.add { gh 'ypcrts/securemodelines' }
vim.pack.add { gh 'nvim-treesitter/nvim-treesitter-context' }
