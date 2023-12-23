return {
    "preservim/nerdtree",
    config = function()
        vim.api.nvim_set_keymap('n', '<leader>ee', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
    end
}
