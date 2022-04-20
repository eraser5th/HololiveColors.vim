local util = require("HololiveColors.util")

local M = {}

---@param colorSchemeName string
function M.loadColorScheme(colorSchemeName)
  util.initColorScheme(colorSchemeName)

  util.forEach(
    util.getHighlights(colorSchemeName),
    function (c, g) util.highlight(g, c) end
  )
end

return M
