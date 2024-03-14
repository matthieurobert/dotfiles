local keymaps = {}

function keymaps.init()
        -- Keybindings
        vim.keymap.set("n", "<C-s>", "<cmd>:w<cr>", { silent = true })
        vim.keymap.set("n", "<up>", "<nop>", { silent = true })
        vim.keymap.set("n", "<down>", "<nop>", { silent = true })
        vim.keymap.set("n", "<left>", "<nop>", { silent = true })
        vim.keymap.set("n", "<right>", "<nop>", { silent = true })

        vim.keymap.set({ "n", "i"}, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", silent = true})

        -- Window management
        vim.keymap.set("n", "<leader>wd", "<C-w>c", { desc = "Delete window", silent = true})
        vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split below", silent = true})
        vim.keymap.set("n", "<leader>wv", "<C-w>s", { desc = "Split right", silent = true})

        -- Tab management
        vim.keymap.set("n", "<leader>tt", "<cmd>tabnew<cr>", { desc = "Open new tab", silent = true})
        vim.keymap.set("n", "<leader>td", "<cmd>tabclose<cr>", { desc = "Close current tab", silent = true})
        vim.keymap.set("n", "<S-h>", "<cmd>tabprevious<cr>", { desc = "Go to previous tab", silent = true})
        vim.keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Go to next tab", silent = true})
        vim.keymap.set("n", "<S-j>", "<cmd>-tabmove<cr>", { desc = "Move a tab to the left", silent = true})
        vim.keymap.set("n", "<S-k>", "<cmd>+tabmove<cr>", { desc = "Move a tab to the right", silent = true})

        -- Other
        vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv'", { desc = "Move line up", silent = true })
        vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv'", { desc = "Move line down", silent = true })
end

return keymaps
