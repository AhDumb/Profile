""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 定义<leader>键
let mapleader = ";" 

inoremap <leader><leader> <esc>

" 光标移动
nnoremap <expr>H 0
nnoremap <expr>- "^"
nnoremap <expr>e "$"

" 窗口移动
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" 刷新配置文件
nnoremap <leader>r :source $HOME/.vimrc<CR>

" 安装、更新、删除插件
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>pc :PlugClean<CR>

" 文件浏览器
nnoremap <c-e> :NERDTreeToggle<CR>

"vim-buffer
"" 上一个 Buffer
nnoremap <silent> <c-p> :w<CR>:PreviousBuffer<CR>
" 下一个 Buffer
nnoremap <silent> <c-n> :w<CR>:NextBuffer<CR>
" 关闭当前buffer
nnoremap <silent><leader>d :w<CR>:CloseBuffer<CR>
" 删除当前buffer外的所有buffer
nnoremap <silent><leader>D :w<CR>:BufOnly<CR>

" FZF 搜索当前文件夹
nnoremap <silent> <Leader>f :Files<CR>

" 本文件内的搜索
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>a :Ag<CR>

" 翻译
nmap <silent> <Leader>w <Plug>Translate
vmap <silent> <Leader>w <Plug>TranslateV

" 翻页
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll, 0, 2)<CR>

" 大纲
" nnoremap <f8> :Tagbar<CR>
nnoremap <F8> :TlistToggle<CR>

" 一键运行
nnoremap <F4> :call BuildCode()<CR>
nnoremap <F5> :call RunCode()<CR>
nnoremap <C-r> :call BuildRunCode()<CR>

" 函数跳转
nnoremap <leader>t :YcmCompleter GoToDefinition<CR> 
nnoremap <leader>v :YcmCompleter GoToDeclaration<CR>

" 添加头部注释
nnoremap <leader>h :call Commentary()<CR>
