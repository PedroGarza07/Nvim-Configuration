-- ~/.config/nvim/lua/config/options.lua
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard:append("unnamedplus")  -- set clipboard+=unnamedplus

vim.cmd("syntax on")  -- Lua no tiene equivalente directo

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false      -- set nowrap
vim.opt.ignorecase = true
vim.opt.showmode = false

vim.opt.scrolloff = 8
