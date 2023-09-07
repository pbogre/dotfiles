-- Misc
vim.o.ignorecase   = true
vim.wo.wrap        = false
vim.o.encoding     = 'utf-8'
vim.o.conceallevel = 1

-- Search Highlight
vim.o.showmatch = true
vim.o.hlsearch  = true
vim.o.incsearch = true

-- Indentation
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.cmd("filetype indent on")

-- Line Numbers
vim.o.number          = true
vim.wo.relativenumber = true
vim.o.cursorline      = true
vim.o.ruler           = true

-- Show Syntax
vim.cmd("syntax on")

-- Mouse Access
vim.o.mouse = 'a'

-- Clipboard
vim.o.clipboard = 'unnamedplus'

-- Cursor Type
vim.o.guicursor = 'n-c-i:block'

-- Remappings
local options = { noremap = true, silent = true }

vim.keymap.set("i", "\"",    "\"\"<left>",   options)
vim.keymap.set("i", "\"\"",  "\"\"",         options)
vim.keymap.set("i", "'",     "''<left>",     options)
vim.keymap.set("i", "''",    "''",           options)
vim.keymap.set("i", "(",     "()<left>",     options)
vim.keymap.set("i", "()",    "()",           options)
vim.keymap.set("i", "[",     "[]<left>",     options)
vim.keymap.set("i", "[]",    "[]",           options)
vim.keymap.set("i", "{",     "{}<left>",     options)
vim.keymap.set("i", "{}",    "{}",           options)
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O", options)

vim.keymap.set("n", "rs",    ":%s@search@replace@gc", options)
vim.keymap.set("n", "<C-h>", "<cmd>:noh<CR>",         options)

-- Plugins
vim.cmd("filetype plugin on")

-- Autocomplete
local coc_options = { silent = true, noremap = true, expr = true, replace_keycodes = false }
vim.keymap.set("i", "<TAB>",   'coc#pum#visible() ? coc#pum#next(1) : "<TAB>"', coc_options)
vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], coc_options)
vim.keymap.set("i", "<cr>",    [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], coc_options)

-- Gitsigns
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

-- Telescope
vim.keymap.set("n", "ff", ":Telescope find_files<CR>", options)
vim.keymap.set("n", "fg", ":Telescope live_grep<CR>",  options)
vim.keymap.set("n", "fb", ":Telescope buffers<CR>",    options)
vim.keymap.set("n", "fs", ":Telescope git_status<CR>", options)

-- Colorscheme
vim.o.termguicolors = true
vim.o.background    = 'light'
vim.cmd("colorscheme everforest")
