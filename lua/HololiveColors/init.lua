local util = require("HololiveColors.util")

local M = {}

---@param colorSchemeName string
function M.loadColorScheme(colorSchemeName)
  util.initColorScheme(colorSchemeName)
  local highlights = util.getHighlights(colorSchemeName)
  util.forEach(highlights, function (c, g) util.highlight(g, c) end)
end

return M
