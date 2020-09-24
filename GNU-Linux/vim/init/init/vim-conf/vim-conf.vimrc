" Vim configuration
"---------------------------------------------------------------------------------------------------------------
set nu
set rnu
syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

"recommended by 'https://github.com/morhetz/gruvbox/wiki/Terminal-specific'
set termguicolors

" for instantaneous jump to normal mode, from website,
" https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

" setting text width for automatic word wrapping
set textwidth=90
"
"This will set tabstops every 4 spaces and set the shiftwidth (that amount you indent) as
"4 spaces also to match your tabstops.
set ts=4 sw=4
set expandtab

" enabling utf-8 encoding
set encoding=utf-8

" opens up quick suggestions menu for command mode
set wildmenu

" split below the new split
set splitbelow

" folding rules
set foldmethod=marker
"set foldmethod=syntax
"set foldnestmax=3

"highlight cursor line
set cursorline
" cursorcolumn highlights the column also
"set cursorcolumn

" Search related
" search case insensitive{{{
set ignorecase
" highlight search matches " not that helpful, I guess one should turn-on hlsearch on
" requirement and be it off all other times
"set hlsearch
"}}}

" Mapping Keys
"------------------------------------------------------------------------------
"map leader key to spacebar key
let mapleader = "\<Space>"

" key mappings for NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" key mappings for NERDTree
nnoremap <leader>N :NERDTree<CR>

" key mapping for vertical terminal
nnoremap <leader>t :term ++rows=13<CR>
"------------------------------------------------------------------------------

"  Windows Specific
"------------------------------------------------------------------------------
" set PowerShell as default shell for vim when using :term or :shell
"set shell=powershell
"------------------------------------------------------------------------------
"---------------------------------------------------------------------------------------------------------------
