---Because most plugins are hosted on GitHub, you can use the helper
---function to have less repetition in the following sections.
---@param repo string
---@return string
local function gh(repo)
  return 'https://github.com/' .. repo
end

-- Add extra colorschemes and related things here.

vim.pack.add { gh 'rebelot/kanagawa.nvim' }
---@diagnostic disable-next-line: missing-fields
require('kanagawa').setup {
  commentStyle = { italic = false },
  keywordStyle = { italic = false },
}

vim.pack.add {
  gh 'rktjmp/lush.nvim',
  gh 'nvim-telescope/telescope.nvim',
  gh 'MrSloth-dev/Switcheroo.nvim',
}
require('Switcheroo').setup()
