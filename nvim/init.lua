-- leader mappings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- tab options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- add line numbers
vim.wo.number = true

-- run nvim/lua/config/lazy.lua
require("config.lazy")
