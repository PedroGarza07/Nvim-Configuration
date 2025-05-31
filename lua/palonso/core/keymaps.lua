-- ~/.config/nvim/lua/config/keymaps.lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local keymap = vim.keymap

-- Mapeo para salir del modo insertar
keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Mapeos generales para LSP
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Mostrar información del tipo" })
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Ir a definición" })
keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Ir a declaración" })
keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Ir a implementación" })
keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Mostrar referencias" })
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Renombrar símbolo" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Mostrar error flotante" })
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Quitar highlight de búsqueda" })
keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- Mapeos generales para Telescope
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Ventana izquierda" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Ventana derecha" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Ventana abajo" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Ventana arriba" })
