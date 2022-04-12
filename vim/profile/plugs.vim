"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 工具
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 中文帮助文档
Plug 'yianwillis/vimcdoc'

" 文件浏览器
Plug 'preservim/nerdtree'

" buffer
Plug 'chxuan/vim-buffer'

" fzf
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" 括号自动补全
Plug 'jiangmiao/auto-pairs'

" 翻译
Plug 'voldikss/vim-translator'

" 代码片段
Plug 'SirVer/ultisnips'
Plug 'AhDumb/vim-snippets'

" 增强搜索
Plug 'junegunn/vim-slash'

" 注释
Plug 'preservim/nerdcommenter'

" 缩进指示线
Plug 'Yggdroot/indentLine'

" 格式化代码
Plug 'Chiel92/vim-autoformat'

" 流畅翻页
Plug 'terryma/vim-smooth-scroll'

" 大纲
Plug 'majutsushi/tagbar'

" Makdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'    }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }

" 多光标
Plug 'mg979/vim-visual-multi'

" 变量 函数 列表
Plug 'yegappan/taglist'

" 自动切换输入法
Plug 'rlue/vim-barbaric'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 美化
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 初始页
Plug 'mhinz/vim-startify'

" 主题
Plug 'joshdick/onedark.vim'

" dracula 主题
Plug 'dracula/vim', { 'as': 'dracula'  }

" 状态栏
Plug 'vim-airline/vim-airline'

" 图标
Plug 'ryanoasis/vim-devicons'

" 高亮图标文件名
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" nerdtree git 图标
Plug 'Xuyuanp/nerdtree-git-plugin'

" 彩虹括号
Plug 'frazrepo/vim-rainbow'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 增强代码高亮
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python
Plug 'vim-python/python-syntax'

" Java
Plug 'uiiaoo/java-syntax.vim'
