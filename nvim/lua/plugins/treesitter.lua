return {
    "nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("config.treesitter").setup()
    end,
}
