-- leader mappings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- tab options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- add line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable persistent undo
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("state") .. "/undo"
-- Create the undodir if it doesn't exist
if vim.fn.isdirectory(vim.o.undodir) == 0 then
    vim.fn.mkdir(vim.o.undodir, "p")
end

-- source config files
require("config.keymaps")
require("config.lazy")
