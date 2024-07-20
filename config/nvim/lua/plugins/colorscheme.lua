return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('onedark').setup {

            style = 'darker', -- Tùy chọn style: dark, darker, cool, deep, warm, warmer, light
            transparent = false, -- Hiển thị nền trong suốt
            term_colors = true, -- Thay đổi màu terminal theo theme đã chọn
            ending_tildes = true, -- Hiển thị dấu ngã ở cuối buffer
            cmp_itemkind_reverse = false, -- Đảo ngược các highlight item kind trong cmp menu

            -- toggle theme style ---
            toggle_style_key = '<leader>ts', -- Phím tắt để thay đổi style
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- Danh sách các style để thay đổi giữa

            -- Thay đổi kiểu code ---
            code_style = {
                types = "bold", -- Style that is applied to types
                numbers = "NONE", -- Style that is applied to numbers
                strings = "NONE", -- Style that is applied to strings
                comments = "italic", -- Style that is applied to comments
                keywords = "bold,italic", -- Style that is applied to keywords
                constants = "NONE", -- Style that is applied to constants
                functions = "italic", -- Style that is applied to functions
                operators = "NONE", -- Style that is applied to operators
                variables = "italic", -- Style that is applied to variables
                conditionals = "italic", -- Style that is applied to conditionals
                virtual_text = "NONE" -- Style that is applied to virtual text
            },

            -- Cấu hình cho lualine --
            lualine = {
                transparent = false -- Sự trong suốt của lualine
            },

            -- Custom Highlights --
            colors = {
                bg = "#1E222A",
                -- bg = "#1B1F26",
                red = "#E35D67",
                indentline = "#E25252",
                cyan = "#41B3DC",
                mycolor = "#16EE77"

            },
            highlights = {
                CursorLine = {
                    bg = "#1E222A"
                },
                CursorLineNR = {
                    bg = "#1E222A"
                },
                NormalFloat = {
                    bg = "#1E222A"
                },
                FloatBorder = {
                    bg = "#1E222A"
                }
            }, -- Ghi đè nhóm highlight
            options = {
                bold = true, -- Use bold styles?
                italic = true, -- Use italic styles?
                underline = true, -- Use underline styles?
                undercurl = true, -- Use undercurl styles?

                cursorline = true, -- Use cursorline highlighting?
                transparency = false, -- Use a transparent background?
                terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
                highlight_inactive_windows = false -- When the window is out of focus, change the normal background?
            },

            -- Plugins Config --
            diagnostics = {
                darker = true, -- Màu tối hơn cho chẩn đoán
                undercurl = true, -- Sử dụng undercurl thay vì gạch chân cho chẩn đoán
                background = true -- Sử dụng màu nền cho văn bản ảo
            }
        }
        require('onedark').load()
        vim.api.nvim_set_hl(0, "CursorLine", {
            fg = "none",
            bg = "none"
        })
        vim.api.nvim_set_hl(0, "CursorLineNR", {
            fg = "orange",
            bold = true
        })
        vim.api.nvim_set_hl(0, "NormalFloat", {
            bg = "none"
        })
        vim.api.nvim_set_hl(0, "FloatBorder", {
            bg = "none"
        })
    end
}
