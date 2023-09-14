local coc_options = { silent = true, noremap = true, expr = true, replace_keycodes = false }
vim.keymap.set("i", "<TAB>",   'coc#pum#visible() ? coc#pum#next(1) : "<TAB>"', coc_options)
vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], coc_options)
vim.keymap.set("i", "<cr>",    [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], coc_options)
