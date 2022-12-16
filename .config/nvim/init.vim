" Misc
set ignorecase
set nowrap
set encoding=utf-8

" Search Highlight
set showmatch
set hlsearch
set incsearch

" Indentation
set shiftwidth=2
set autoindent
set backspace=start,eol,indent
filetype indent on

" Line Position
set number
set ruler

" Show Syntax
syntax on

" Mouse Access
set mouse=a

" Copy Paste
set clipboard=unnamedplus

" Cursor Type
set guicursor=n-c-i:block

" No Backups
set nobackup
set nowritebackup
set shortmess+=c

" Complete Pairs
inoremap " ""<left>
inoremap "" ""
inoremap ' ''<left>
inoremap '' ''
inoremap ( ()<left>
inoremap () ()
inoremap [ []<left>
inoremap [] []
inoremap { {}<left>
inoremap {} {}
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Plugins
filetype plugin on
call plug#begin("~/.vim/plugged")
  Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsSnippetDirectories=["snips"]
  Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='skim'
    let g:vimtex_view_skim_sync=1
    let g:vimtex_view_skim_activate=1
    let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:tex_conceal='adbmg'
  Plug 'morhetz/gruvbox'
    let g:gruvbox_contrast_dark='hard'
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()

" Autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Colorscheme
set termguicolors
colorscheme gruvbox