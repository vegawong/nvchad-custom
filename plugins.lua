return {

  ["NvChad/ui"] = {
    override_options = {
      tabufline = {
        lazyload = false,
      },
      statusline = {
        separator_style = "round",
        overriden_modules = function()
          return require "custom.plugins.statusline"
        end,
      },
    },
  },

  ["kyazdani42/nvim-tree.lua"] = {
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFileToggle" },
    override_options = function()
      return {
        view = {
          adaptive_size = false,
        },
      }
    end,
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
    disable = false,
    override_options = function()
      return {
        header = {
          type = "text",
          val = {
            "                                                                                                                 ",
            "                                                                                                                 ",
            "  ███╗   ██╗ ██████╗     ██████╗ ██╗   ██╗ ██████╗     ███╗   ██╗ ██████╗     ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗",
            "  ████╗  ██║██╔═══██╗    ██╔══██╗██║   ██║██╔════╝     ████╗  ██║██╔═══██╗    ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝",
            "  ██╔██╗ ██║██║   ██║    ██████╔╝██║   ██║██║  ███╗    ██╔██╗ ██║██║   ██║    ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ",
            "  ██║╚██╗██║██║   ██║    ██╔══██╗██║   ██║██║   ██║    ██║╚██╗██║██║   ██║    ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ",
            "  ██║ ╚████║╚██████╔╝    ██████╔╝╚██████╔╝╚██████╔╝    ██║ ╚████║╚██████╔╝    ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗",
            "  ╚═╝  ╚═══╝ ╚═════╝     ╚═════╝  ╚═════╝  ╚═════╝     ╚═╝  ╚═══╝ ╚═════╝      ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝",
            "                                                                                                                 ",
            "                                                                                                                 ",
          },
          opts = {
            position = "center",
            hl = "AlphaHeader",
          },
        },
      }
    end,
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
          "markdown",
        },
      }
    end,
  },

  ["nvim-telescope/telescope.nvim"] = {
    override_options = function()
      return {
        defaults = {
          winblend = 30,
        },
      }
    end,
  },
}
