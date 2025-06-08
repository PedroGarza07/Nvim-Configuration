-- ~/.config/nvim/lua/palonso/plugins/gitconflict.lua
return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    require("git-conflict").setup({
      default_mappings = true,       -- usa los keymaps por defecto
      default_commands = true,       -- agrega comandos como :GitConflictChooseOurs
      disable_diagnostics = false,   -- permite mostrar diagnostics en archivos con conflicto
      list_opener = "copen",         -- comando para abrir lista de conflictos
      highlights = {
        incoming = "DiffAdd",        -- color para bloque entrante
        current = "DiffText",        -- color para bloque actual
      },
    })
  end,
}

