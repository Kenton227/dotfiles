return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("config.lsp").setup()
        end,
    },
}
