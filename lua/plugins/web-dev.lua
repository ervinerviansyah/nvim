return {
  -- Tambahkan dukungan treesitter untuk pewarnaan sintaks yang akurat
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "html", "css" })
      end
    end,
  },

  -- Setup LSP via nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        emmet_ls = {
          filetypes = { "html", "css", "scss", "javascriptreact", "typescriptreact" },
        },
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
