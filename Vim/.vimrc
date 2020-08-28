" Vim configuration
"---------------------------------------------------------------------------------------------------------------
set nu
set rnu
syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

" for instantaneous jump to normal mode, from website,
" https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

" setting text width for automatic word wrapping
set textwidth=90
"
"This will set tabstops every 2 spaces and set the shiftwidth (that amount you indent) as 2 spaces also to match your tabstops.
set ts=2 sw=2

" enabling utf-8 encoding
set encoding=utf-8

" current theme paper-color
" colo PaperColor
"colo dracula

" split below the new split
set splitbelow

" folding rules
set foldmethod=indent
set foldnestmax=3

" Mapping Keys
"------------------------------------------------------------------------------
"map leader key to spacebar key
let mapleader = "\<Space>"


" key mappings for NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" key mappings for NERDTree
nnoremap <leader>N :NERDTree<CR>

" key mapping for vertical terminal
nnoremap <leader>t :vert term<CR>
"------------------------------------------------------------------------------

" Macros
"------------------------------------------------------------------------------
" macro recorded for creating a code block
" For more on  macro's checkout: https://vim.fandom.com/wiki/Macros

" Not Working As Expected
" macro recorded for creating a comment block
" For more on  macro's checkout: https://vim.fandom.com/wiki/Macros
"------------------------------------------------------------------------------

"  Windows Specific
"------------------------------------------------------------------------------
" set PowerShell as default shell for vim when using :term or :shell
"set shell=powershell
"------------------------------------------------------------------------------
"---------------------------------------------------------------------------------------------------------------



" Plugins using Vundle 
"------------------------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" This is YouCompleteMe Plugin
" In order to get YouCompleteMe working, run install.py present in the plugin directory.
 Plugin 'Valloric/YouCompleteMe'

" Multiple cursor plugin
Plugin 'https://github.com/terryma/vim-multiple-cursors'

" NERDTree
Plugin 'https://github.com/scrooloose/nerdtree'

" vim markdown preview
Plugin 'JamshedVesuna/vim-markdown-preview'

" ctrlP: a fuzzy file finder
Plugin 'https://github.com/kien/ctrlp.vim'

" Dark dracula theme for vim
Plugin 'dracula/vim'

" paper color theme
Plugin 'https://github.com/NLKNguyen/papercolor-theme'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" OmniSharp-Vim
" for it's proper working plugins: vim-dispatch, syntastic and Ctrl-P are required
" Ctrl-P is already installed, rest are installed below
Plugin 'tpope/vim-dispatch'
Plugin 'w0rp/ale'
Plugin 'vim-syntastic/syntastic'
Plugin 'OmniSharp/Omnisharp-vim'

Plugin 'vim-scripts/BufOnly.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"------------------------------------------------------------------------------



" Plugin Customisations
"---------------------------------------------------------------------------------------------------------------

" Ctrl-P
"------------------------------------------------------------------------------
let g:ctrlp_open_new_file = 'v'
"------------------------------------------------------------------------------

" Vim Markdown Preview
"------------------------------------------------------------------------------
" to view as per github flavoured markdown
let vim_markdown_preview_github=1

" to use Firefox as default browser
" let vim_markdown_preview_browser='Firefox'
" the above command did not work but
" sudo update-alternatives --config gnome-www-browser
" worked

" to display images automatically on buffer write
let vim_markdown_toggle=2
"------------------------------------------------------------------------------

" Vim Airline Configuration
"------------------------------------------------------------------------------
let g:airline_theme='base16_chalk'
"let g:airline_theme='base16_bright'
"let g:airline_theme='base16_atelierdune'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"nnoremap <Leader>u :AirlineTheme random<CR>	"random Airline theme
"------------------------------------------------------------------------------

" OmniSharp Configurtation
" Default configuration from https://github.com/OmniSharp/Omnisharp-vim#configuration
"------------------------------------------------------------------------------
" Use the stdio OmniSharp-roslyn server
let g:OmniSharp_server_stdio = 1

" Set the type lookup function to use the preview window instead of echoing it
"let g:OmniSharp_typeLookupInPreview = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 5

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview

" Fetch full documentation during omnicomplete requests.
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
"let g:omnicomplete_fetch_full_documentation = 1

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
set previewheight=5

" Ale is installed
" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }
"
" Syntastic not installed
" Enable syntastic integration
let g:syntastic_cs_checkers = ['code_checker']

" Update semantic highlighting on BufEnter and InsertLeave
let g:OmniSharp_highlight_types = 2

augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <F2> :OmniSharpRename<CR>
" <Leader>nm slows the opening of NerdTree as it opens with <Leader>n and the system
" possibly waits for an input for another key.
" nnoremap <Leader>nm :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Enable snippet completion
" This works with Utlisnips plugin
" https://github.com/SirVer/ultisnips
" let g:OmniSharp_want_snippet=1
"------------------------------------------------------------------------------

"---------------------------------------------------------------------------------------------------------------
"
colo dracula
