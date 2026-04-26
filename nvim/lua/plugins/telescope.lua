return {
    'nvim-telescope/telescope.nvim', version = '*',
    name = "telescope",
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        require("config.telescope").keymaps()
    end,
}
