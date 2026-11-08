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
vim.pack.add { gh 'stevearc/oil.nvim' }
require('oil').setup()

-- If inside a buffer that isn't associated with a path, Oil does nothing if
-- not handled manually.
vim.keymap.set('n', '-', function()
  local path = vim.fn.expand '%'
  if path == '' then
    vim.cmd('Oil' .. vim.fn.getcwd())
  else
    vim.cmd 'Oil'
  end
end, { desc = 'Open parent directory' })
