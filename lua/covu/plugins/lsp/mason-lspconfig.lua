local lsp_zero = require("lsp-zero")
return {
    "williamboman/mason-lspconfig.nvim",
    config = true,
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
        ensure_installed = { 'rust_analyzer', 'lua_ls', 'texlab' },
        handlers = {
            lsp_zero.default_setup,
            lua_ls = function()
                local lua_opts = lsp_zero.nvim_lua_ls()
                require('lspconfig').lua_ls.setup(lua_opts)
                require 'lspconfig'.ltex.setup {
                    settings = {
                        ltex = {
                            language = "de-DE",
                        }
                    }
                }
            end,
        },
        automatic_installation = true,
    }
}
