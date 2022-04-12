" 如果NERDTree是唯一选项卡中剩余的唯一窗口，则退出Vim。
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 如果NERDTree是其中唯一的窗口，请关闭该选项卡。
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 隐藏文件
let g:NERDTreeHidden=1

" 忽略文件
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__', '.idea'] 

let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "",
            \ "Staged"    : "",
            \ "Untracked" : "",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "ﮮ",
            \ "Clean"     : "✔︎ ",
            \ 'Ignored'   : "",
            \ "Unknown"   : "?"
            \}

" 使用精确匹配启用文件夹图标高亮显示
let g:NERDTreeHighlightFolders = 1
" 突出显示的文件夹名称
let g:NERDTreeHighlightFoldersFullName = 1

