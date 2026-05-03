return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>t", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
    },
    opts = {
        git = {
            ignore = false,
        },
        on_attach = function(bufnr)
            local api = require("nvim-tree.api")
            api.map.on_attach.default(bufnr)
            vim.keymap.set("n", "=", api.tree.change_root_to_node, {
                buffer = bufnr,
                noremap = true,
                silent = true,
                nowait = true,
                desc = "CD into node",
            })
            -- keymaps for changing split
            local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }
            vim.keymap.set("n", "<S-h>", "<cmd>tabprev<CR>", opts)
            vim.keymap.set("n", "<S-l>", "<cmd>tabnext<CR>", opts)
        end,
    },
}
