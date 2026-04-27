return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files)
        vim.keymap.set("n", "<leader>fg", builtin.live_grep)

        local actions = require("telescope.actions")
        require("telescope").setup({
            defaults = {
                mappings = {
                    n = {
                        ["<C-h>"] = actions.preview_scrolling_left,
                        ["<C-j>"] = actions.preview_scrolling_down,
                        ["<C-k>"] = actions.preview_scrolling_up,
                        ["<C-l>"] = actions.preview_scrolling_right,
                    },
                },
            },
        })
    end,
}
