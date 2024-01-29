return {
    "robitx/gp.nvim",
    config = function()
        vim.keymap.set("n", "<leader>dgp", "<cmd>GpChatDelete<cr>", { noremap = true, silent = true })
        require("gp").setup({
            openai_api_key = "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",
            chat_confirm_delete = false,
        })
    end,
}
