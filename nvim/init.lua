require ("matth")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup("plugins")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.cmd('colorscheme rose-pine')
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

vim.opt.wrap = false

vim.opt.confirm = true

vim.opt.scrolloff = 8

-- KEYMAPS
-- No arrow key allowed
vim.keymap.set("n", "<up>", "<nop>", { silent = true})
vim.keymap.set("n", "<down>", "<nop>", { silent = true})
vim.keymap.set("n", "<left>", "<nop>", { silent = true})
vim.keymap.set("n", "<right>", "<nop>", { silent = true})

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", silent = true })

-- MOVE CODE
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- WINDOWS MANAGEMENT
-- Move to window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", silent = true })

-- Resize window
vim.keymap.set("n", "<S-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height", silent = true })
vim.keymap.set("n", "<S-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height", silent = true })
vim.keymap.set("n", "<S-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width", silent = true })
vim.keymap.set("n", "<S-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width", silent = true })

-- Others
vim.keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", silent = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", silent = true })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below", silent = true })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right", silent = true })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", silent = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", silent = true })
-- END WINDOWS MANAGEMENT

--
-- TAB MANAGEMENT
vim.keymap.set("n", "<leader>tt", "<CMD>tabnew<CR>", { desc = "New Tab", silent = true })
vim.keymap.set("n", "<leader>td", "<CMD>tabclose<CR>", { desc = "Close Tab", silent = true }) -- Check the Bufremove configuration

vim.keymap.set("n", "<S-h>", "<cmd>tabprevious<cr>", { desc = "Prev buffer", silent = true })
vim.keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Next buffer", silent = true })
vim.keymap.set("n", "<S-<", "<cmd>-tabmove<cr>", { desc = "Move tab to left", silent = true, noremap = true })
vim.keymap.set("n", "<S->", "<cmd>+tabmove<cr>", { desc = "Move tab to right", silent = true })
vim.keymap.set("n", "<leader>tf", "<CMD>tabfirst<CR>", { desc = "First Tab", silent = true })
vim.keymap.set("n", "<leader>tl", "<CMD>tablast<CR>", { desc = "Last Tab", silent = true })
-- END TAB MANAGEMEN
