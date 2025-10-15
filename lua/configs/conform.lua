local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "biome", "prettier" },
    typescript = { "biome", "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    markdown_inline = { "prettier" },
    vimwiki = { "prettier" },
    help = { "prettier" },
    gitcommit = { "prettier" },
    gitrebase = { "prettier" },
    svelte = { "prettier" },
    svelte_inline = { "prettier" },
    rust = { "rustfmt" },
    python = { "black" },
    cpp = { "clang_format" },
    c = { "clang_format" },
    go = { "gofmt" },
    sh = { "shfmt" },
    dockerfile = { "hadolint", "dockerfile_fmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
