-- Python path
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"

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
-- Insert Mode
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
-- Normal Mode
vim.keymap.set("n", "fr",    ":%s@search@replace@gc",  options)
vim.keymap.set("n", "<C-h>", "<cmd>:let @/ = \"\"<CR>",options)

-- Colorscheme
vim.o.termguicolors = true
vim.o.background    = 'light'
vim.cmd("colorscheme everforest")
