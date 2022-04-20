local util = {}
local vim = vim

---@alias Style "bold" | "italic" | "underline" | "undercurl" | "strikethrough" | "inverse" | "none"

--- @class Color
  --- @field fg string
  --- @field bg string
  --- @field sp string
  --- @field style Style

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

---@param colorSchemeName string
function util.load(colorSchemeName)
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = colorSchemeName

  local hilights = require("HololiveColors." .. colorSchemeName .. ".hilights")

  for group, color in pairs(hilights) do
    util.highlight(group, color)
  end
end

return util
