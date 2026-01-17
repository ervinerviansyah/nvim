return {
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
    keys = {
      -- Open compiler
      { "<F6>", "<cmd>CompilerOpen<cr>", desc = "Compiler Open", silent = true },
      -- Redo last selected option (Stop then Redo)
      {
        "<S-F6>",
        "<cmd>CompilerStop<cr><cmd>CompilerRedo<cr>",
        desc = "Compiler Redo Last Action",
        silent = true,
      },
      -- Toggle compiler results
      { "<S-F7>", "<cmd>CompilerToggleResults<cr>", desc = "Compiler Toggle Results", silent = true },
    },
  },
  {
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },
}
