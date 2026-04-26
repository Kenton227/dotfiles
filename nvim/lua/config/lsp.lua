local M = {}

function M.setup()
    local opts = {
        ensure_installed = {
            "lua_ls",       -- Lua
            "clangd",       -- C/C++
            "pylsp",        -- Python
            "jdtls",        -- Java
            "marksman",     -- Markdown
            "ts_ls",        -- TS/JS
        },
    }
    require("mason-lspconfig").setup(opts)
end

return M
