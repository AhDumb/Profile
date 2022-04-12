"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 加载 nerdtree 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.vim/profile/plugs-profile/vim-nerdtree.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 翻译配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:translator_target_lang="zh"
let g:translator_source_lang="auto"
" 翻译源
let g:translator_default_engines=['bing', 'youdao']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 加载彩色括号
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.vim/profile/plugs-profile/vim-rainbow.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 加载 YCM 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.vim/profile/plugs-profile/ycm.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索闪烁
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('timers')
    " Blink 2 times with 50ms interval
    noremap <expr> <plug>(slash-after) slash#blink(2, 50)
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快速注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 创建默认的映射键
let g:NERDCreateDefaultMappings = 1
" 注释后添加空格
let g:NERDSpaceDelims = 1
" 设置备用
let g:NERDAltDelims_java = 1
" 修改默认的注释样式
let g:NERDCustomDelimiters = {
            \'c': {
                \'left': '/*','right': '*/'
                \},
                \'java': {
                    \'left': '/*', 'right': '*/'
                    \},
                    \'python': {
                        \'left': '"""', 'right': '"""'
                        \}
                        \}
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启增强代码高亮
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 禁用折叠
let g:vim_markdown_folding_disabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VM_maps = {}
let g:VM_maps['Find Under'] = '<leader>n'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tag list (ctags)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缩进指示线
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_color_term = 255
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 0
func! AutoIndentLineOpen()
    let g:indentLine_enabled = 1
endfunction
au FileType c,cpp,python,java,javascript,html,css,vim call AutoIndentLineOpen()
