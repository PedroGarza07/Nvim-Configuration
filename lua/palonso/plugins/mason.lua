-- ~/.config/nvim/lua/pedro/plugins/mason.lua

return {
  {
    "williamboman/mason.nvim",
    version = "v1.8.3",  -- versión estable y compatible con nvim 0.9
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = "v1.29.0",  -- estable para nvim 0.9
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      ensure_installed = { "clangd" },
    },
  },
}
