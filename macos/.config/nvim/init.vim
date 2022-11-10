set showmatch
set ignorecase
set hlsearch
set encoding=utf-8

set tabstop=2
set shiftwidth=0
set backspace=start,eol,indent
set autoindent
set nowrap
set number

filetype plugin on
filetype indent on
syntax on
set mouse=a
set clipboard=unnamedplus
set guicursor=n-c-i:block

set nobackup
set nowritebackup
set updatetime=500

" plugins
call plug#begin("~/.vim/plugged")
	Plug 'sirver/ultisnips'
		let g:UltiSnipsExpandTrigger = '<tab>'
		let g:UltiSnipsJumpForwardTrigger = '<tab>'
		let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	Plug 'lervag/vimtex'
		let g:tex_flavor='latex'
		let g:vimtex_view_method='skim'
		let g:vimtex_view_skim_sync=1
		let g:vimtex_view_skim_activate=1
		let g:vimtex_quickfix_mode=0
		set conceallevel=1
		let g:tex_conceal='adbmg'
	call plug#end()
