return {
  { "dstein64/nvim-scrollview", enabled = false },
  {
    "gorbit99/codewindow.nvim",
    event = "VimEnter",
    config = function()
      local codewindow = require("codewindow")
      codewindow.setup({
        auto_enable = true,
        minimap_width = 10,
        window_border = "rounded", -- Thay đổi kiểu viền cửa sổ
        exclude_filetypes = {
          "TelescopePrompt",
          "packer",
          "alpha",
          "dashboard",
          "NvimTree",
          "Outline",
          "DressingInput",
          "toggleterm",
          "lazy",
          "mason",
          "neo-tree",
        },
        show_cursor = true, -- Hiển thị con trỏ trong minimap
        use_lsp = true, -- Sử dụng LSP để hiển thị lỗi trong minimap
        symbols = {
          error = "●", -- Ký hiệu cho lỗi
          warning = "▲", -- Ký hiệu cho cảnh báo
          hint = "■", -- Ký hiệu cho gợi ý
          info = "▶", -- Ký hiệu cho thông tin
        },
        colors = {
          background = "#1e1e1e", -- Màu nền của minimap
          cursorline = "#2c2c2c", -- Màu dòng con trỏ
          error = "#ff5f5f", -- Màu lỗi
          warning = "#ffaf00", -- Màu cảnh báo
          hint = "#5fafff", -- Màu gợi ý
          info = "#5faf5f", -- Màu thông tin
          border = "#3e3e3e", -- Màu viền của minimap (ví dụ này dùng highlight group)
        },
      })
      codewindow.apply_default_keybinds() -- Áp dụng các phím tắt mặc định

      -- Keybinding để bật/tắt minimap
      vim.api.nvim_set_keymap(
        "n",
        "<Leader>m",
        ':lua require("codewindow").toggle_minimap()<CR>',
        { noremap = true, silent = true }
      )

      -- Thay đổi màu viền của cửa sổ minimap
      vim.cmd("highlight CodewindowBorder guifg=#3e3e3e")
    end,
  },
}
