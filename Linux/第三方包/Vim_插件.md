# `NERDTree 文件浏览`

## 快捷键
- `h` `j` `k` `l` 移动光标定位 
- `o` 打开关闭文件或者目录，如果是文件的话，光标出现在打开的文件中 
- `go` 效果同上，不过光标保持在文件目录里，类似预览文件内容的功能 
- `i` 和 `s` 可以水平分割或纵向分割窗口打开文件，前面加`g`类似`go`的功能 
- `t` 在标签页中打开 
- `T` 在后台标签页中打开 
- `p` 到上层目录 
- `P` 到根目录 
- `K` 到同目录第一个节点 
- `J` 到同目录最后一个节点 
- `m` 显示文件系统菜单（添加、删除、移动操作） 
- `?` 帮助 
- `q` 关闭

## 配置说明
| 参数                          | 说明                                                     |
| ----------------------------- | -------------------------------------------------------- |
| `loaded_nerd_tree`            | 不使用NerdTree脚本                                       |
| `NERDChristmasTree`           | 让Tree把自己给装饰得多姿多彩漂亮点                       |
| `NERDTreeAutoCenter`          | 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心 |
| `NERDTreeAutoCenterThreshold` | 与NERDTreeAutoCenter配合使用                             |
| `NERDTreeCaseSensitiveSort`   | 排序时是否大小写敏感                                     |
| `NERDTreeChDirMode`           | 确定是否改变Vim的CWD                                     |
| `NERDTreeHighlightCursorline` | 是否高亮显示光标所在行                                   |
| `NERDTreeHijackNetrw`         | 是否使用:edit命令时打开第二NerdTree                      |
| `NERDTreeIgnore`              | 默认的“无视”文件                                       |
| `NERDTreeBookmarksFile`       | 指定书签文件                                             |
| `NERDTreeMouseMode`           | 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）   |
| `NERDTreeQuitOnOpen`          | 打开文件后是否关闭NerdTree窗口                           |
| `NERDTreeShowBookmarks`       | 是否默认显示书签列表                                     |
| `NERDTreeShowFiles`           | 是否默认显示文件                                         |
| `NERDTreeShowHidden`          | 是否默认显示隐藏文件                                     |
| `NERDTreeShowLineNumbers`     | 是否默认显示行号                                         |
| `NERDTreeSortOrder`           | 排序规则                                                 |
| `NERDTreeStatusline`          | 窗口状态栏                                               |
| `NERDTreeWinPos`              | 窗口位置 left right                                      |
| `NERDTreeWinSize`             | 窗口宽                                                   |




# SpaceVim和Vim共存
`git clone https://github.com/SpaceVim/SpaceVim.git ~/.SpaceVim`

`alias svim='vim -u ~/.SpaceVim/vimrc'`