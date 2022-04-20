local colors = require("HololiveColors.tokoyami-towa.colors")

local highlights = {
--GroupName   = { fg = color       ,  bg = color,          sp = color,         style = Style },
  Normal      = { fg = colors.white,  bg = colors.bgDark,                                    },
  CursorLine  = {                     bg = colors.bgLight,                                   },
}

return highlights
