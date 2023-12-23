return {
    "iurimateus/luasnip-latex-snippets.nvim",
    config = function()
        require 'luasnip-latex-snippets'.setup({use_treesitter = true})
        require("luasnip").config.setup { enable_autosnippets = true }
    end
}
