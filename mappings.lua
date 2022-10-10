
local M = {}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>fe"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    ["<leader>fr"] = { "<cmd> NvimTreeFindFileToggle <CR>", "focus nvimtree" },
  },
}

return M
