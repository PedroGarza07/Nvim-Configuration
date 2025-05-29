return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- Asegura que se cargue antes que otros
    config = function()
      vim.cmd("colorscheme kanagawa-dragon") -- Puedes probar: kanagawa, wave, dragon, lotus
    end,
  },
}
