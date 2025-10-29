require('gitsigns').setup({
  signs = {
    add          = { text = "|" },
    change       = { text = "|" },
    delete       = { text = "|" },
    topdelete    = { text = "|" },
    changedelete = { text = "|" },
    untracked    = { text = "|" },
  },
})

vim.keymap.set("n", "gp", ":Gitsigns preview_hunk<CR>", options)
vim.keymap.set("n", "gb", ":Gitsigns blame_line<CR>", options)
