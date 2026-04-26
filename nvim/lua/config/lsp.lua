local M = {}

function M.setup()
    local opts = {
        ensure_installed = {
            "lua_ls",   -- Lua lsp
            "clangd",   -- C/C++ lsp
            "pylsp",    -- Python lsp
            "jdtls",    -- Java lsp
            "prettier", -- Java formatter
            "marksman", -- Markdown
        },
    }
    require("mason-lspconfig").setup(opts)
end

return M
