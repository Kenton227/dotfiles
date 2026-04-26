local M = {}

function M.setup()
    -- install default languages
    local langs = {
        "lua",
        "c",
        "java",
        "go",
        "markdown",
        "vim",
        "vimdoc"
    }
    require("nvim-treesitter").install(langs)
    -- enable highlighting
    vim.api.nvim_create_autocmd('FileType', {
        pattern = langs,
        callback = function()
            vim.treesitter.start()
            -- enable indentation
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
    })
end

return M
