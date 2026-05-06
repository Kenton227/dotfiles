return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    opts = {
        filesystem = {
            window = {
                mappings = {
                    ["="] = "set_root",
                    ["-"] = "navigate_up",
                    ["<tab>"] = "toggle_node",
                    ["p"] = {
                        "toggle_preview",
                        config = {
                            use_float = true,
                        },
                    },
                },
            },
        },
    },
    keys = {
        { "<leader>t", "<cmd>Neotree toggle<CR>", desc = "Toggle file tree" },
    },
    lazy = false, -- neo-tree will lazily load itself
}
