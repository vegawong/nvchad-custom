
local fn = vim.fn
local sep_style = vim.g.statusline_sep_style
local separators = (type(sep_style) == "table" and sep_style)
  or require("nvchad_ui.icons").statusline_separators[sep_style]
local sep_r = separators["right"]

return {
  -- 展示文件的相对路径
  fileInfo = function()
    local icon = "  "
    local filename = (fn.expand "%:~:." == "" and "Empty ") or fn.expand "%:~:."

    if filename ~= "Empty " then
      local devicons_present, devicons = pcall(require, "nvim-web-devicons")

      if devicons_present then
        local ft_icon = devicons.get_icon(filename)
        icon = (ft_icon ~= nil and " " .. ft_icon) or ""
      end

      filename = " " .. filename .. " "
    end

    return "%#St_file_info#" .. icon .. filename .. "%#St_file_sep#" .. sep_r
  end,
}
