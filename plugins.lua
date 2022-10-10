
return {
  -- override nvim-tree plugin init setting
  ["kyazdani42/nvim-tree.lua"] = {
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFileToggle" }
  },

  -- override lsp config
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
   override_options = {
      ensure_installed = {
        -- lua 
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "emmet-ls",
        "json-lsp",
        "eslint-lsp",

        -- shell
        "shfmt",
        "shellcheck",
      },
    },
  },

  ["goolord/alpha-nvim"] = {
    disable = false
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
     after = "nvim-lspconfig",
     config = function()
       require "custom.plugins.null-ls"
     end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = function() 
      return {
        ensure_installed = {
          "lua",
          "help",
          "typescript",
          "tsx",
          "json",
          "jsonc",
          "javascript",
          "jsdoc",
          "php",
          "twig",
          "markdown"
        },
      }
    end
  }



}
