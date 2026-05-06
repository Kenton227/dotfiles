return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",   -- Lua
            "clangd",   -- C/C++
            "pylsp",    -- Python
            "jdtls",    -- Java
            "marksman", -- Markdown
            "ts_ls",    -- TS/JS
            "gopls",    -- GoLang
            "bashls",   -- bash/sh
        },
    },
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            },
        },
        "neovim/nvim-lspconfig",
    },
}
