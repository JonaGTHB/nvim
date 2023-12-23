local cmp_setup = function()
    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local lsp_zero = require("lsp-zero")
    cmp.setup({
        sources = {
            { name = 'path' },
            { name = 'nvim_lsp' },
            { name = 'nvim_lua' },
        },
        formatting = lsp_zero.cmp_format(),
        mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
        }),
    })
end

return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline", "VonHeikemen/lsp-zero.nvim", "L3MON4D3/LuaSnip"},
    after = function()
        cmp_setup()
    end,
    opts = {
    }
}

