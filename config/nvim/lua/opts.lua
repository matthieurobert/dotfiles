local opts = {}

function opts.init()
        -- Base options
        vim.opt.autoread = true
        vim.opt.encoding = 'UTF-8'
        vim.opt.number = true
        vim.opt.relativenumber = true
        vim.opt.mouse = "a"
        vim.opt.list = true
        vim.opt.listchars:append("eol:↴")
        vim.opt.signcolumn = "yes"
        vim.opt.wrap = false
        vim.opt.splitright = true
        vim.opt.splitbelow = true
        vim.opt.confirm = true
        vim.opt.cursorline = true
        vim.opt.expandtab = true
        vim.opt.smartindent = true
        vim.opt.winbar = ""
        vim.opt.scrolloff = 10
end

return opts
