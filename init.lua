
-- override leader key setting
vim.g.mapleader = ','

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- 根据文件名识别jsonc格式
autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = "tsconfig*.json",
  callback = function()
		vim.opt_local.filetype = 'jsonc'
  end,
})

