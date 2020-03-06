# Vim

## 配置

```

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ShowTrailingWhitespace'
Plugin 'tell-k/vim-autopep8'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " 必须
filetype plugin indent on    " 必须

" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <F2> :NERDTreeToggle <CR>
" :NERDTreeFind
"    Find the current file in the tree. If no tree exists for the current tab,
"    or the file is not under the current root, then initialize a new tree where
"    the root is the directory of the current file. -->
map <F1> :NERDTreeFind <CR>
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
let NERDTreeIgnore=['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

map <F3> :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_left=0

map <F5> :CtrlP<CR>

map <F11> :Autopep8<CR>
let g:autopep8_disable_show_diff=1

map <F12> :call RunPython()<CR>
func! RunPython()
    exec "W"
    if &filetype == 'python'
        exec "!time python3 %"
    endif
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" 禁止生成 swap 恢复文件
set noswapfile

" 行数字
set number              

" 当前行显示下划线
" set cursorline          

" 切换粘贴模式 F8
set pastetoggle=<F8>    

" 设置默认文件编码
set encoding=utf-8

" 定义tab所等同的空格长度
set tabstop=4

" set foldmethod=indent "代码折叠

" 文件编码探测列表
set fileencodings=utf-8,gb18030

" 在插入模式按回车时 vim 会自动根据上一行的缩进级别缩进
set autoindent

" 将状态行显示在窗口底部倒数第二行
" 移去状态行
" set laststatus=2
" set laststatus=0

" 高亮第 80 列 代码宽度限制
" set colorcolumn=80

" 显示窗口比较小的时候折行展示
set linebreak

" 打开文件类型检测
filetype on             
 
" 打开语法高亮显示
syntax on         

```

