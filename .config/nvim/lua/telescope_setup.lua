local ok_m, m = pcall(require, "mapx")
local ok, telescope = pcall(require, "telescope")

if ok then
    local actions = require("telescope.actions")
    local fb_actions = telescope.extensions.file_browser.actions

    telescope.setup({
        pickers = {
            find_files = {
                find_command = {
                    "fd", "--type", "f", "-H", "-E", "node_modules", "-E",
                    ".git", "-E", ".env*", "-I"
                }
            }
        },
        extensions = {
            file_browser = {
                hidden = true,
                respect_gitignore = true,
                hijack_netrw = true,
                mappings = {
                    ["i"] = {
                        ["<A-t>"] = fb_actions.change_cwd,
                        ["<C-t>"] = actions.select_tab
                    }
                }
            },
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "ignore_case"
            }
        }
    })

    telescope.load_extension("file_browser")
    telescope.load_extension("fzf")
    telescope.load_extension("project")

end

if ok_m then
    m.noremap("<leader>fd", ":Telescope file_browser<CR>")
    m.noremap("<leader>fb", ":Telescope file_browser path=%:p:h<CR>", "silent")
    m.noremap("<leader>ff", ":Telescope find_files<CR>", "silent")
    m.noremap("<leader>fg", ":Telescope live_grep<CR>", "silent")
    m.noremap("<leader>pp", ":Telescope project<CR>", "silent")
end
