
local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<leader>ra"] = "",
  }
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>fe"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    ["<leader>fr"] = { "<cmd> NvimTreeFindFileToggle <CR>", "Find File location in NvimTree and Toggle" },
  },
}

M.general = {
  v = {
    -- 复制到粘贴板
    ["<leader>y"] = {'"+y'}
  }
}

M.lspconfig = {
  n = {
    -- disable default map
    ["<leader>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },

  }
}

return M
