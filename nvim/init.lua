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


-- keymaps
-- clipboard copy/paste
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
-- switching split
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
-- tab navigation
vim.keymap.set("n", "<leader>n", "<cmd>tabnew<CR>",   { desc = "Tab: New" })
vim.keymap.set("n", "<leader>q", "<cmd>tabclose<CR>", { desc = "Tab: Close" })
vim.keymap.set("n", "<leader>o", "<cmd>tabonly<CR>",  { desc = "Tab: Only" })
vim.keymap.set("n", "<S-l>", "<cmd>tabnext<CR>", { desc = "Tab: Next" })
vim.keymap.set("n", "<S-h>", "<cmd>tabprev<CR>", { desc = "Tab: Prev" })
for i = 1, 9 do
  vim.keymap.set("n", "<leader>" .. i, i .. "gt", { desc = "Tab: Go to " .. i })
end
-- resize split
vim.keymap.set("n", "<A-h>", "<cmd>vertical resize -5<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<A-l>", "<cmd>vertical resize +5<CR>", { desc = "Resize split right" })
vim.keymap.set("n", "<A-j>", "<cmd>resize -2<CR>",          { desc = "Resize split down" })
vim.keymap.set("n", "<A-k>", "<cmd>resize +2<CR>",          { desc = "Resize split up" })
-- LSP rename symbol under cursor
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- Enable persistent undo
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("state") .. "/undo"
-- Create the undodir if it doesn't exist
if vim.fn.isdirectory(vim.o.undodir) == 0 then
    vim.fn.mkdir(vim.o.undodir, "p")
end

-- source nvim/lua/config/lazy.lua
require("config.lazy")
