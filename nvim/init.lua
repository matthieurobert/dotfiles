-- INIT PLUGINS FIRST
vim.g.mapleader = " "

-- OPTIONS
vim.opt.encoding = "UTF-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.autoread = true
vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.opt.signcolumn = "yes"
vim.opt.wrap = false

require("plugins")

-- THEMES
local ok_catpuccin, catppuccin = pcall(require, "catppuccin")
if ok_catpuccin then
    catppuccin.setup({transparent_background = true})
    vim.cmd("colorscheme catppuccin")
    vim.g.catppuccinflavour = "mocha"
end
local ok_m, m = pcall(require, "mapx")

if ok_m then
    m.noremap("<up>", "<nop>", "silent")
    m.noremap("<down>", "<nop>", "silent")
    m.noremap("<left>", "<nop>", "silent")
    m.noremap("<right>", "<nop>", "silent")

    m.noremap("<leader>w", ":w<CR>", "silent")

    -- -- tab navigation
    m.noremap("<S-H>", ":tabprev<CR>", "silent")
    m.noremap("<S-L>", ":tabnext<CR>", "silent")

    -- -- window navigation
    m.noremap("<F2>", "<C-w>w", "silent")
    m.noremap("<leader><up>", ":vertical resize +2<CR>", "silent")
    m.noremap("<leader><down>", ":vertical resize -2<CR>", "silent")
    m.noremap("<leader><right>", ":resize +2<CR>", "silent")
    m.noremap("<leader><left>", ":resize -2<CR>", "silent")

    -- -- lazygit
    m.nnoremap("<leader>gg", ":LazyGit<CR>", "silent")
end
