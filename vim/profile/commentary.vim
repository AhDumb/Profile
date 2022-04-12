"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 头部注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Java JavaScript TypeScript C C++ 头部注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""
func SetTitle_java_js()
    let desc = input("desc> ") " 输入描述
    call append(0, "/**")
    call append(1, " * @author aaron")
    call append(2, " * @version 1.0")
    call append(3, " * @fileName ".expand("%"))
    call append(4, " * @email wzj020109@163.com")
    call append(5, " * @date ".strftime("%F"))
    call append(6, " * @desc ".desc)
    call append(7, " */")
    call append(8, "")
    call append(9, "")
endfunc
autocmd BufNewFile *.java,*.js,*.ts,*.c,*cpp exec ":call SetTitle_java_js()"

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python 头部注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""
func Set_title_py()
    let desc = input("desc> ") " 输入描述
    call append(0, "#!/usr/bin/python")
    call append(1, "# -*- coding: utf-8 -*-")
    call append(2, "")
    call append(3, "#################################################")
    call append(4, "# File Name ".expand("%"))
    call append(5, "# Version 1.0")
    call append(6, "# Author aaron")
    call append(7, "# Email wzj020109@163.com")
    call append(8, "# Created Time ".strftime("%F"))
    call append(9, "# Desc ".desc)
    call append(10, "#################################################")
    call append(11, "")
    call append(12, "")
endfunc
autocmd BufNewFile *.py exec ":call Set_title_py()"

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shell 头部注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""
func Set_title_sh()
    let desc = input("desc> ") " 输入描述
    call append(0, "#!/usr/bin/bash")
    call append(1, "")
    call append(2, "#################################################")
    call append(3, "# File Name ".expand("%"))
    call append(4, "# Version 1.0")
    call append(5, "# Author aaron")
    call append(6, "# Email wzj020109@163.com")
    call append(7, "# Created Time ".strftime("%F"))
    call append(8, "# Desc ".desc)
    call append(9, "#################################################")
    call append(10, "")
    call append(11, "")
endfunc
autocmd BufNewFile *.sh exec ":call Set_title_sh()"

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""""""
func Commentary()
    if &filetype == "python"
        call Set_title_py()
    elseif &filetype == "sh"
        call Set_title_sh()
    elseif &filetype == "java" || &filetype == "c" || &filetype == "cpp"
        call SetTitle_java_js()
    elseif &filetype == "javascript" || &filetype == "typescript"
        call SetTitle_java_js()
    endif
endfunc
