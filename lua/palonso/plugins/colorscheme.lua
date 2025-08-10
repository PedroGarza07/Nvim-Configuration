return {
    "nickkadutskyi/jb.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        -- require("jb").setup({transparent = true})
        vim.cmd("colorscheme jb")
        -- Colores estilo CLion
        vim.api.nvim_set_hl(0, "@type", { fg = "#4EC9B0" })
        vim.api.nvim_set_hl(0, "@type.definition", { fg = "#4EC9B0" })
        vim.api.nvim_set_hl(0, "@namespace", { fg = "#569CD6" })
        vim.api.nvim_set_hl(0, "@function", { fg = "#DCDCAA" })
    end,
}
