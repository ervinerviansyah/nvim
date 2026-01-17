return {
  -- Dependency Volt
  {
    "nvzone/volt",
    lazy = true,
  },

  -- Plugins Menu or righ click
  {
    "nvzone/menu",
    lazy = true,
    config = function() end,
    keys = {
      -- Keyboard users: Toggle menu dengan Ctrl + t
      {
        "<C-t>",
        function()
          require("menu").open("default")
        end,
        desc = "Open NvZone Menu",
      },
      -- Mouse users: Right click menu
      {
        "<RightMouse>",
        function()
          require("menu.utils").delete_old_menus()
          vim.cmd.exec('"normal! \\<RightMouse>"')

          -- Cek apakah klik di NvimTree atau tempat lain
          local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
          local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

          require("menu").open(options, { mouse = true })
        end,
        mode = { "n", "v" },
        desc = "Context Menu (Right Click)",
      },
    },
  },

  -- Plugins timer
  {
    "nvzone/timerly",
    dependencies = "nvzone/volt",
    cmd = "TimerlyToggle",
    opts = {}, -- optional
    keys = {
      -- Opsional: Tambahkan shortcut cepat untuk memanggil command :Timer
      { "<leader>tt", "<cmd>Timer<cr>", desc = "Start Focus Timer" },
    },
    config = function()
      -- Membuat User Command :Timer
      vim.api.nvim_create_user_command("Timer", function()
        -- Setting UI agar minimalis saat fokus (Zen Mode style)
        vim.o.showtabline = 0
        vim.o.laststatus = 0
        vim.wo.number = false
        vim.o.relativenumber = false -- Tambahkan ini jika kamu pakai relative number
        vim.o.scl = "no"
        vim.o.cmdheight = 0

        -- Menjalankan fungsi utama timerly
        vim.cmd("TimerlyToggle")
      end, {})
    end,
  },

  -- Plugin set warna
  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
  },

  -- Plugins latihan mengetik
  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },

  -- Plugins terminal
  {
    "nvzone/floaterm",
    dependencies = "nvzone/volt",
    cmd = "FloatermToggle",
    keys = {
      { "<C-p>", "<cmd>FloatermToggle<cr>", desc = "Toggle Floaterm", mode = "n", silent = true },
    },
    opts = {
      -- Kamu bisa masukkan tabel konfigurasi yang tadi (size, border, dll) di sini jika perlu
      border = false,
      size = { h = 60, w = 70 },
    },
  },

  -- Plugins show keys
  {
    "nvzone/showkeys",
    cmd = "ShowkeysToggle",
    opts = {
      timeout = 1,
      maxkeys = 5,
      -- more opts
    },
  },
}
