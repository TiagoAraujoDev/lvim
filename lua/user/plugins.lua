-- Additional Plugins
lvim.plugins = {
  -- treesitter plugins
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "p00f/nvim-ts-rainbow",
  "windwp/nvim-ts-autotag",

  -- colorschemes
  "lunarvim/darkplus.nvim",
  "ellisonleao/gruvbox.nvim",

  -- Navigation
  "karb94/neoscroll.nvim",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks", -- TODO: Add keymaps
  "ghillb/cybu.nvim",
  "ggandor/leap.nvim",
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },

  -- Utilities
  "j-hui/fidget.nvim",
  "kylechui/nvim-surround",
  "NvChad/nvim-colorizer.lua",
  "moll/vim-bbye",
  "folke/todo-comments.nvim", -- TODO: Setup
  "windwp/nvim-spectre",
  "folke/zen-mode.nvim",
  "is0n/jaq-nvim",
  "kevinhwang91/nvim-bqf",

  -- cmp
  "hrsh7th/cmp-emoji",
  { "tzachar/cmp-tabnine", run = "./install.sh" },

  -- Git stuff
  "TimUntersberger/neogit",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "sindrets/diffview.nvim",
  "mattn/webapi-vim",

  -- Languages
  "mfussenegger/nvim-jdtls",
  "lvimuser/lsp-inlayhints.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  {
    "saecki/crates.nvim",
    tag = "v0.3.0",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },

  -- Telescope
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  {
    "0x100101/lab.nvim",
    run = "cd js && npm ci",
  },

  -- GitHub copilot
  {
    "zbirenbaum/copilot.lua",
    -- event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup {
        formatters = {
          insert_text = require("copilot_cmp.format").remove_existing,
        },
      }
    end,
  },
  -- "MunifTanjim/nui.nvim",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
