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

  util.highlight("Comment",     {fg = "#008800", bg = "#211D26"})
  util.highlight("Constant",    {fg = "#008800", bg = "#211D26"})
  util.highlight("Error",       {fg = "#880000", bg = "#211D26"})
  util.highlight("Function",    {fg = "#000088", bg = "#211D26"})
  util.highlight("Identifier",  {fg = "#008888", bg = "#211D26"})
  util.highlight("Keyword",     {fg = "#880000", bg = "#211D26"})
  util.highlight("Label",       {fg = "#880000", bg = "#211D26"})
  util.highlight("Number",      {fg = "#008888", bg = "#211D26"})
  util.highlight("Operator",    {fg = "#888800", bg = "#211D26"})
  util.highlight("PreProc",     {fg = "#888800", bg = "#211D26"})
  util.highlight("Special",     {fg = "#888800", bg = "#211D26"})
  util.highlight("Statement",   {fg = "#888800", bg = "#211D26"})
  util.highlight("String",      {fg = "#008888", bg = "#211D26"})
  util.highlight("Type",        {fg = "#888800", bg = "#211D26"})
  util.highlight("Underlined",  {fg = "#888800", bg = "#211D26"})
  util.highlight("Variable",    {fg = "#008888", bg = "#211D26"})
  util.highlight("WarningMsg",  {fg = "#888800", bg = "#211D26"})
  util.highlight("Todo",        {fg = "#888800", bg = "#211D26"})
  util.highlight("Normal",      {fg = "#ffffff", bg = "#211D26"})
end

return util
