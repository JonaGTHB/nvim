return {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.cmd([[colorscheme rose-pine]])
    end
}
