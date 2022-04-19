local util = {}
local vim = vim

---@class Color
local c = {
  fg = "#000000",
  bg = "#ffffff",
  sp = "?",
  style = "?",
}

---@param group string
---@param color Color
function util.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
end

---@param group_from string
---@param group_to string
function util.link(group_from, group_to)
  vim.cmd("highlight! " .. group_from .. " " .. group_to)
end

function util.load()
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "tokoyami-towa"

  util.highlight("Normal",      {fg = "#ffffff", bg = "#211D26"})
  util.highlight("CursorLine",  {                bg = "#2A2A2A"})

  util.highlight("Comment",     {fg = "#00ff00", bg = "#211D26"})
  util.highlight("Constant",    {fg = "#00ff00", bg = "#211D26"})
  util.highlight("Error",       {fg = "#ff0000", bg = "#211D26"})
  util.highlight("Function",    {fg = "#0000ff", bg = "#211D26"})
  util.highlight("Identifier",  {fg = "#00ffff", bg = "#211D26"})
  util.highlight("Keyword",     {fg = "#ff0000", bg = "#211D26"})
  util.highlight("Label",       {fg = "#ff0000", bg = "#211D26"})
  util.highlight("Number",      {fg = "#00ffff", bg = "#211D26"})
  util.highlight("Operator",    {fg = "#ffff00", bg = "#211D26"})
  util.highlight("PreProc",     {fg = "#ffff00", bg = "#211D26"})
  util.highlight("Special",     {fg = "#ffff00", bg = "#211D26"})
  util.highlight("Statement",   {fg = "#ffff00", bg = "#211D26"})
  util.highlight("String",      {fg = "#00ffff", bg = "#211D26"})
  util.highlight("Type",        {fg = "#ffff00", bg = "#211D26"})
  util.highlight("Underlined",  {fg = "#ffff00", bg = "#211D26"})
  util.highlight("Variable",    {fg = "#00ffff", bg = "#211D26"})
  util.highlight("WarningMsg",  {fg = "#ffff00", bg = "#211D26"})
  util.highlight("Todo",        {fg = "#ffff00", bg = "#211D26"})
end

return util
