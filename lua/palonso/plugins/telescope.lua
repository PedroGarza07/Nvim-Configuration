return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Requisito para telescope
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          layout_config = {
            horizontal = { preview_width = 0.6 },
          },
          mappings = {
            i = {
              ["<esc>"] = require("telescope.actions").close,
            },
          },
        },
      })

      -- Puedes mapear comandos útiles aquí mismo
      local keymap = vim.keymap.set
      keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Buscar archivos" })
      keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>",  { desc = "Buscar texto (live grep)" })
      keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>",    { desc = "Buscar buffers" })
      keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>",  { desc = "Buscar ayuda" })
    end,
  },
}
