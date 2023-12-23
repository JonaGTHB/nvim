return {
    "lervag/vimtex",
    config = function()
        vim.cmd('filetype plugin indent on')
        vim.cmd('syntax enable')

        -- Set tex_flavor to 'latex'
        vim.g.tex_flavor = 'latex'

        -- Set vimtex_view_method to 'zathura'
        vim.g.vimtex_view_method = 'zathura'

        -- Set vimtex_quickfix_mode to 0
        vim.g.vimtex_quickfix_mode = 0

        -- Set conceallevel to 0
        vim.cmd('set conceallevel=0')

        -- Set tex_conceal to 'abdmg'
        vim.g.tex_conceal = 'abdmg'

        vim.g.vimtex_quickfix_ignore_filters = {
            'Underfull',
            'Overfull',
        }

        -- Keybinds
        vim.api.nvim_set_keymap('n', '<leader>lc', [[:VimtexCompile<CR>]], { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>lv', [[:VimtexView<CR>]], { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>lf', [[:silent call system('latexindent -w ' .. expand('%'))<CR>:e!<CR>]],
            { noremap = true, silent = true })
    end
}
