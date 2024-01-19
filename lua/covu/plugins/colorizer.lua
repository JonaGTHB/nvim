return {
    "norcalli/nvim-colorizer.lua",
    config = function()
        require("colorizer").setup({
            '*',
        })
        vim.api.nvim_set_keymap('n', '<Leader>ab', [[:ColorizerAttachToBuffer<CR>]], { noremap = true, silent = true })
    end
}
