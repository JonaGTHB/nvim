return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
            dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NERDTreeToggle<CR>"),
            dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC fs", "➡  > Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("SPC fgb", "⇄  > Checkout Branch", "<cmd>Telescope git_branches<CR>"),
            dashboard.button("SPC sck", "  > Screencast Keys", "<cmd>KeysToggle<CR>"),
            dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
