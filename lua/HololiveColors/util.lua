local vim = vim

local util = {}

---@param group string
---@param color Color
function util.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hlCommand = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hlCommand)
end

---@param group_from string
---@param group_to string
function util.link(group_from, group_to)
  vim.cmd("highlight! " .. group_from .. " " .. group_to)
end

--- @param colorSchemeName string
function util.initColorScheme(colorSchemeName)
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  -- if vim.fn.exists("syntax_on") then
  --   uim.cmd("syntax reset")
  -- end

  vim.o.termguicolors = true
  vim.g.colors_name = colorSchemeName
end

--- @param colorSchemeName string
--- @return table
function util.getHighlights(colorSchemeName)
  return require("HololiveColors." .. colorSchemeName .. ".highlights")
end

---@param target table
---@param callback function
function util.forEach(target, callback)
  for key, value in pairs(target) do
    callback(value, key)
  end
end

return util
