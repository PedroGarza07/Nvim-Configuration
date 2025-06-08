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
keymap.set("n", "<leader>w", vim.diagnostic.open_float, { desc = "Mostrar error flotante" })
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Quitar highlight de búsqueda" })
keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- Mapeos generales para Telescope
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Ventana izquierda" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Ventana derecha" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Ventana abajo" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Ventana arriba" })

-- Mapeos para Git Conflict (plugin: akinsho/git-conflict.nvim)
-- Activos únicamente en buffers con conflictos de git
keymap.set("n", "co", "<Plug>(git-conflict-ours)", { noremap = true, silent = true, desc = "Elegir nuestra versión (ours)" })
keymap.set("n", "ct", "<Plug>(git-conflict-theirs)", { noremap = true, silent = true, desc = "Elegir su versión (theirs)" })
keymap.set("n", "cb", "<Plug>(git-conflict-both)", { noremap = true, silent = true, desc = "Elegir ambas versiones" })
keymap.set("n", "c0", "<Plug>(git-conflict-none)", { noremap = true, silent = true, desc = "Descartar ambas versiones" })
keymap.set("n", "]x", "<Plug>(git-conflict-next-conflict)", { noremap = true, silent = true, desc = "Ir al siguiente conflicto" })
keymap.set("n", "[x", "<Plug>(git-conflict-prev-conflict)", { noremap = true, silent = true, desc = "Ir al conflicto anterior" })
