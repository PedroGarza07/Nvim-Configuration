-- Carga Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Carga tus plugins
require("lazy").setup({
  spec = {
    { import = "palonso.plugins.mason" },  -- Mason base
    { import = "palonso.plugins.lsp" },    -- Config LSP
    { import = "palonso.plugins.colorscheme" },    -- Config colorscheme
    { import = "palonso.plugins.lualine" },    -- Config colorscheme
    { import = "palonso.plugins.telescope" }    -- Config colorscheme
    -- Puedes añadir más plugins aquí
  }
})
