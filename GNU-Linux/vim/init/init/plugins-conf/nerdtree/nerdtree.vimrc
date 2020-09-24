"NERDTree
"nerdtree configuration
"--------------------------------------------------------------------------------
"hide directories with name bin and obj
"to hide-Unhide these directories/files use 'f' inside NERDTree
let NERDTreeIgnore=['^bin$[[dir]]', '^obj$[[dir]]']

"vim-devicons config
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 0
let g:webdevicons_conceal_nerdtree_brackets = 1

" it's not working, I guess
let NERDTreeNodeDelimiter="\u00b7"
"********************************************************************************
