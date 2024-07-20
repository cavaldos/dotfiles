return {
    "akinsho/bufferline.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons", "moll/vim-bbye"},
    config = function()
        require('bufferline').setup {
            options = {
                -- Các tùy chọn cho bufferline
                numbers = "none",
                close_command = "bdelete! %d",
                right_mouse_command = "bdelete! %d",
                left_mouse_command = "buffer %d",
                middle_mouse_command = nil,
                -- Hiển thị bộ đệm đã sửa đổi với biểu tượng
                indicator = {
                    icon = '▎',
                    style = 'icon'
                },
                buffer_close_icon = '',
                modified_icon = '●',
                close_icon = '',
                left_trunc_marker = '',
                right_trunc_marker = '',
                -- Tên bộ đệm
                name_formatter = function(buf) -- buf chứa tất cả các trường về buffer
                    if buf.name:match('%.md') then
                        return vim.fn.fnamemodify(buf.name, ':t:r')
                    end
                end,
                max_name_length = 18,
                max_prefix_length = 15,
                tab_size = 18,
                diagnostics = false,
                diagnostics_update_in_insert = false,
                offsets = {{
                    filetype = "neo-tree",
                    text = "File Explorer",
                    text_align = "left",
                    separator = true
                }},
                show_buffer_icons = true,
                show_buffer_close_icons = true,
                show_close_icon = true,
                show_tab_indicators = true,
                persist_buffer_sort = true,
                separator_style = "thin",
                enforce_regular_tabs = false,
                always_show_bufferline = true,
                sort_by = 'id'
            }
        }

        vim.keymap.set("n", "<A-.>", "<CMD>BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<A-,>", "<CMD>BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<A->>", "<CMD>BufferLineMoveNext<CR>")
        vim.keymap.set("n", "<A-<>", "<CMD>BufferLineMovePrev<CR>")
        vim.keymap.set("n", "<A-c>", "<CMD>Bdelete<CR>")
    end
}
