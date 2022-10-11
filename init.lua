
-- override leader key setting
vim.g.mapleader = ','

local opt = vim.opt

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- 开启相对行号
opt.relativenumber = true

-- 根据文件名识别jsonc格式
autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = "tsconfig*.json",
  callback = function()
		vim.opt_local.filetype = 'jsonc'
  end,
})

