-- ~/.config/nvim/lua/pedro/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").clangd.setup({
        cmd = { "clangd" },
        filetypes = { "c", "cpp", "h", "hpp" },
      })
    end
  }
}
