" Misc
set ignorecase
set nowrap
set encoding=utf-8

" Search Highlight
set showmatch
set hlsearch
set incsearch

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
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

	call plug#end()

" Autocomplete

" Colorscheme
set termguicolors
colorscheme gruvbox
