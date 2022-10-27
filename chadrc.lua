local M = {}

M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"
M.ui = {
  hl_override = {
    DiffAdd = {
      fg = "none",
      bg = "#31392b"
    },
    DiffDelete = {
      fg = "none",
      bg = "#382b2c"
    },
    DiffChange = {
      fg = "none",
      bg = '#1c3448'
    },
  },
  hl_add = {
    DiffText = {
      fg = "none",
      bg = "#2c5372",
    }
  }
}

return M
