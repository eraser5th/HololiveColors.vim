local colors = require("HololiveColors.tokoyami-towa.colors")

local highlights = {
--GroupName       = { fg = color,             bg = color,          sp = color,         style = Style },
  Normal          = { fg = colors.white,      bg = colors.bgDark,                                    },
  CursorLine      = {                         bg = colors.bgLight,                                   },
  Comment         = { fg = colors.comment,                                                           },
  Constant        = { fg = colors.orange,                                                            },
  Special         = { fg = colors.purple,                                                            },
  Type            = { fg = colors.pink,                                                              },
  Identifier      = { fg = colors.purple,                                                            },
  Statement       = { fg = colors.lightGreen,                                                        },
  Underlined      = { fg = colors.orange,                                                            },
  Error           = { fg = colors.red,                                                               },
}

return highlights
