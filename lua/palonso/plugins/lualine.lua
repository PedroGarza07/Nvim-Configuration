return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- iconos opcionales pero recomendados
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto", -- o el nombre de tu colorscheme (como "kanagawa")
          section_separators = { left = "", right = "" },
          component_separators = "|", 
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },
}
