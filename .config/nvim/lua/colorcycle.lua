--Init.lua example
local M = {}

local colorschemes = {
  "default",
  "desert",
  "evening",
  "ron",
  "solarized", -- Assuming you have solarized installed
  "gruvbox",   -- Assuming you have gruvbox installed
}

local current_scheme_index = 1

function M.CycleColorScheme()
  current_scheme_index = current_scheme_index % #colorschemes + 1
  vim.cmd("colorscheme " .. colorschemes[current_scheme_index])
end

return M

