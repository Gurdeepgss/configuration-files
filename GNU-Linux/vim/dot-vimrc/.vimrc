" organisation style borrowed from https://tuckerchapman.com/2020/05/09/vimrc_organization/

" General Vim configuration
source $HOME/.vim/init/vim-conf/vim-conf.vimrc
" VimPlug
source $HOME/.vim/init/vim-plug/vim-plug.vimrc

" Plugin-specific configuration
source $HOME/.vim/init/plugins-conf/ctrl-p/ctrl-p.vimrc 			" Ctrl-P
source $HOME/.vim/init/plugins-conf/vim-airline/vim-airline.vimrc 	" vim-Airline

" Omnisharp and friends
source $HOME/.vim/init/plugins-conf/autocomplete/omnisharp-and-friends/omnisharp-vim-and-friends.vimrc

source $HOME/.vim/init/plugins-conf/autocomplete/coc/coc.vimrc 		" coc (Conquer of Completion)
source $HOME/.vim/init/plugins-conf/nerdtree/nerdtree.vimrc 		" NERDTree
source $HOME/.vim/init/plugins-conf/markdown-preview/markdown-preview.nvim.vimrc " markdown-preview.nvim
source $HOME/.vim/init/plugins-conf/vim-markdown-toc/vim-markdown-toc.vimrc 	 " markdown-toc (Table of Contents)

" ColorSchemes
source $HOME/.vim/init/vim-themes/vim-themes.vimrc
