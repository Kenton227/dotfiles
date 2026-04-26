return {
    "nvim-tree/nvim-tree.lua",
    name = "nvim-tree",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
        {
            "<leader>t",
            "<cmd>NvimTreeToggle<CR>",
            desc = "Toggle file tree"
        },
    },
}
