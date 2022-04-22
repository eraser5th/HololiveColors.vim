local vim = vim

local M = {}

local colorschemes = {
  "tokoyami-towa",
  "tunomaki-watame",
}

function M.loadColorSchemeRandom()
  local scheme = colorschemes[vim.api.nvim_eval("rand(srand())")  % #colorschemes + 1]
  vim.cmd("colorscheme " .. scheme)
  print("Loaded colorscheme: " .. scheme)
end

function M.loadColorScheme(num)
  local scheme = colorschemes[num]
  vim.cmd("colorscheme " .. scheme)
  print("Loaded colorscheme: " .. scheme)
end

return M
