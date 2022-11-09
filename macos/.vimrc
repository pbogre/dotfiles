colorscheme industry
syntax on
filetype indent on
filetype plugin on 

set encoding=utf8
set number
set nowrap
set tabstop=2
set shiftwidth=0
set backspace=indent,eol,start
set guifont=JetBrains\ Mono\ Medium:h16

" plugin manager
call plug#begin()
" vimtex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_view_skim_sync=1
let g:vimtex_view_skim_activate=1
let g_vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='adbmg'
" ultisnips
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
call plug#end()
