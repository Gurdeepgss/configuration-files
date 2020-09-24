" Vim Plug
"--------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" vim needs to be compiled for Ruby support
Plug 'git://git.wincent.com/command-t.git'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"" it's a HTML expansion plugin
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}

" NERDTree
Plug 'https://github.com/scrooloose/nerdtree'

" markdown preview and table of content
" markdown preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" generate table of contents for markdown
Plug 'mzlogin/vim-markdown-toc'

" ctrlP: a fuzzy file finder
"kien/ctrlp.vim is deprecated: Plugin 'https://github.com/kien/ctrlp.vim'
" latest version (i.e. 1.79) gave an error with regards to readdir function in ctrlp.vim,
" which was not an issue with 1.78 so explicitly installed version with tag 1.78 and now
" the error has gone
Plug 'https://github.com/ctrlpvim/ctrlp.vim', { 'tag': '1.78' }

" color schemes
" {{{
" In-use Color themes
" gruvbox theme
Plug 'https://github.com/morhetz/gruvbox'
" Not-in-use Color themes
" Dark dracula theme for vim
Plug 'dracula/vim'
Plug 'https://github.com/dunstontc/vim-vscode-theme'
" paper color theme
Plug 'https://github.com/NLKNguyen/papercolor-theme'
" solarized
Plug 'altercation/vim-colors-solarized'
"}}}

" airline
" {{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"}}}

" Auto completions
"----------------------------------------
" OmniSharp-Vim
" for it's proper working plugins: vim-dispatch, syntastic and Ctrl-P are required
" Ctrl-P is already installed, rest are installed below
Plug 'tpope/vim-dispatch'
Plug 'w0rp/ale'
Plug 'OmniSharp/Omnisharp-vim'

" Coc (Conquerer of Completion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"****************************************

" close all buffers except current, main command: <C-w><m>
Plug 'vim-scripts/BufOnly.vim'

" possibly csharp syntax highlight support
"Plugin 'OrangeT/vim-csharp'

Plug 'https://github.com/ryanoasis/vim-devicons'

"Tmux like zoom for Vim
Plug 'https://github.com/dhruvasagar/vim-zoom'

" easy motion across a line
Plug 'https://github.com/unblevable/quick-scope'

" smooth scroll for vim
" check if it even makes any difference on this machinke
"Plug 'psliwka/vim-smoothie'

call plug#end()
"********************************************************************************
