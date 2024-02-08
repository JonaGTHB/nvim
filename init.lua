vim.g.mapleader = " "

vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
        vim.opt_local.textwidth = 80
        vim.opt_local.formatoptions:append("t")
    end,
})

require("covu.core")
require("covu.lazy")
require("covu.set")
