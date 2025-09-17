-- Setting
vim.opt.number = true

vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.clipboard = ""
vim.opt.termguicolors = true
vim.opt.updatetime = 100

vim.opt.foldmethod = "marker"
vim.opt.cursorlineopt = "number"
-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true

-- Split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Indent
vim.opt.autoindent = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Statusline
vim.opt.laststatus = 3
vim.opt.backup = false
vim.opt.fileencoding = "utf-8"
vim.opt.signcolumn = "yes"
vim.opt.timeoutlen = 300
vim.opt.completeopt = { "menu", "menuone", "noselect" }
-- Undo
vim.opt.undofile = true

vim.opt.clipboard:append("unnamedplus")
vim.opt.scrolloff = 8
vim.opt.fillchars = {
    eob = " "
}

-- -- neovide
-- if vim.g.neovide then
--   -- vim.g.neovide_cursor_animation_length = 0.085
--   -- vim.g.neovide_cursor_trail_length = 0.75
--   vim.g.neovide_cursor_vfx_mode = "torpedo" -- các chế độ khác: "torpedo", "pixiedust", "sonicboom", "ripple", "wireframe" "railgun"

--   vim.g.neovide_transparency = 1.0
-- end

-- Biến toàn cục để theo dõi trạng thái auto-save




-- Di chuyển xuống 10 dòng
vim.api.nvim_set_keymap("n", "<C-j>", "10j", { noremap = true, silent = true })

-- Di chuyển lên 10 dòng
vim.api.nvim_set_keymap("n", "<C-k>", "10k", { noremap = true, silent = true })


