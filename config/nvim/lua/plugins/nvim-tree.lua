return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("nvim-tree").setup({
            renderer = {
                indent_markers = {
                    enable = true, -- Bật hiển thị đường kẻ
                    icons = {
                        corner = "└",
                        edge = "│",
                        item = "├",
                        none = " "
                    }
                },
                icons = {
                    glyphs = {
                        default = "",
                        symlink = "",
                        folder = {
                            arrow_closed = "",
                            arrow_open = "",
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = ""
                        },
                        git = {
                            unstaged = "✗",
                            staged = "✓",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "★",
                            deleted = "",
                            ignored = "◌"
                        }
                    }
                }
            }
        })
        vim.keymap.set("n", "<C-n>", "<CMD>NvimTreeToggle<CR>")
    end
}
