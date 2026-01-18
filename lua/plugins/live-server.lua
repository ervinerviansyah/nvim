return {
  "ngtuonghy/live-server-nvim",
  cmd = { "LiveServerStart", "LiveServerStop" }, -- Commands to be available
  -- Optional: Configure the server to open in your default browser automatically
  opts = {
    open_target = "browser", -- or "internal" if you have a neovim internal browser
    -- root_dir = "public", -- Optional: specify a different root directory
    -- port = 8080, -- Optional: specify a different port
  },
}
