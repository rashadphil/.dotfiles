local status_ok, navic = pcall(require, "nvim-navic")
if not status_ok then
  return
end

-- local icons = require "rp.icons"

navic.setup {
    icons = {
    Text = " ",
    Method = "m ",
    Function = " ",
    Constructor = " ",
    Field = " ",
    Variable = " ",
    Class = " ",
    Interface = " ",
    Module = " ",
    Property = " ",
    Unit = " ",
    Value = " ",
    Enum = " ",
    Keyword = " ",
    Snippet = " ",
    Color = " ",
    File = " ",
    Reference = " ",
    Folder = " ",
    EnumMember = " ",
    Constant = " ",
    Struct = " ",
    Event = " ",
    Operator = " ",
    TypeParameter = " ",
  },

  highlight = true,
  separator = " > " ,
  --[[ separator = " " .. icons.ui.ChevronRight .. " ", ]]
  depth_limit = 0,
  depth_limit_indicator = "..",
}

