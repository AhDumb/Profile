"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置不兼容原始vi模式
set nocompatible         
" 设置开启文件类型侦测
filetype on
" 设置加载对应文件类型的插件
filetype plugin on
" 关闭错误的提示
set noeb
" 开启语法高亮功能
syntax enable
" 自动语法高亮
syntax on
" 开启256色支持
set t_Co=256 
" 设置命令行的高度
set cmdheight=2
" select模式下显示选中的行数
set showcmd
" 总是显示光标位置
set ruler
" 总是显示状态栏
set laststatus=2
" 开启行号显示
set number
" 开启相对行号
set relativenumber
" 高亮显示当前行
set cursorline 
" 高亮光标所在列
set cursorcolumn
" 设置<ESC>键响应时间
set ttimeoutlen=0
" 允许光标出现在最后一个字符的后面
set virtualedit=block,onemore

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置自动缩进
set autoindent
" 设置使用C/C++语言的自动缩进方式
set cindent
" 设置C/C++语言的具体缩进方式
set cinoptions=g0,:0,N-s,(0
" 智能的选择对其方式
set smartindent
" 自适应不同语言的智能缩进
filetype indent on 
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4 
" 设置4个空格为制表符
set softtabstop=4
" 在行和段开始处使用制表符
set smarttab
" 禁止折行
set nowrap
" 使用回车键正常处理indent,eol,start等
set backspace=2 
" 设置向右滚动字符数
set sidescroll=10
" 禁用折叠代码
set nofoldenable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim自身命名行模式智能补全
set wildmenu
" 补全时不显示窗口，只显示补全列表
set completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 高亮显示搜索结果
set hlsearch 
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置不备份
set nobackup
" 禁止生成临时文件
set noswapfile
" 文件在vim之外修改过，自动重新读入
set autoread
" 设置自动保存
set autowrite
" 在处理未保存或只读文件的时候，弹出确认
set confirm

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running")
    let system = system('uname -s')
    if system == "Darwin\n"
        " 设置字体
        set guifont=Hack\ Nerd\ Font\ Mono\ Regular:h20
    else
        " 设置字体
        set guifont=Hack\ Nerd\ Font\ Mono\ Regular 20
    endif
    " 隐藏菜单栏
    set guioptions-=m
    " 隐藏工具栏
    set guioptions-=T
    " 隐藏左侧滚动条
    set guioptions-=L
    " 隐藏右侧滚动条
    set guioptions-=r
    " 隐藏底部滚动条
    set guioptions-=b
    " 隐藏Tab栏
    set showtabline=0
    " 设置光标为竖线
    set guicursor=n-v-c:ver5
endif

