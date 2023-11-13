return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
	{ "<leader>fd", ":Telescope file_browser<CR>", silent = true, desc = "Open file browser (project dir)"},
	{ "<leader>fb", ":Telescope file_browser path=%:p:h<CR>", silent = true, desc = "Open file browser (current dir)"},
	{ "<leader>ff", ":Telescope find_files<CR>", silent = true, desc = "Find file"},
	{ "<leader>fg", ":Telescope live_grep<CR>", silent = true, desc = "Live grep"},
	{ "<leader>bf", ":Telescope buffers<CR>", silent = true, desc = "Open buffer browser"},
    },
}
