require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "bacon_ls",
  "bashls",
  "biome",
  "clangd",
  "csharp_lsp",
  "css_variables",
  "cssmodules_ls",
  "docker_language_server",
  "eslint",
  "fish_lsp",
  "hyprls",
  "intelephense",
  "jsonls",
  "laravel_ls",
  "lua_ls",
  "luau_lsp",
  "postgres_lsp",
  "pyright",
  "pylsp",
  "ruff",
  "rust_analyzer",
  "stylua",
  "tailwindcss",
  "ts_ls",
  "vimls",
  "tinymist",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
