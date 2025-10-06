return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.hlchunk"
    end,
  },

  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  {
    "nvzone/volt",
    lazy = true,
  },

  {
    "nvzone/menu",
    lazy = true,
  },

  {
    "nvzone/timerly",
    dependencies = "nvzone/volt",
    cmd = "TimerlyToggle",
    opts = {}, -- optional
  },

  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
  },

  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "supermaven-inc/supermaven-nvim",
      opts = {},
    },
  },

  opts = function(_, opts)
    opts.sources[1].trigger_chars = { "-" }
    table.insert(opts.sources, 1, { name = "supermaven" })
  end,
}
