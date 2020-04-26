# Vim

## 基础使用
- 命令行模式（Command mode）
    - a i o进入插入模式
    - ：进入底行模式
- 插入模式（Insert mode）
    - 只有在Insert mode下，才可以做文字输入
    - 按「ESC」键可回到命令行模式。
- 底行模式（Lastline mode）
    - 将文件保存或退出vi，也可以设置编辑环境，如寻找字符串、列出行号……等，使用命令执行编辑操作等
    - 可缩写(:setà:se)补齐(tab键的功效+CTRL-D)  历史记录(借助CTRL-UP)

## 打开文件
|                        |                                                 |
|------------------------|-------------------------------------------------|
| vim                    | 进入vim而不读入任何文件                         |
| vim filename           | 进入vim并读入指定名称的文件                     |
| vim +n filename        | 进入vim并且由文件的第几行开始。                 |
| vim + filename         | 进入vim并且由文件的最后一行开始。               |
| vimdiff fileA fileB    | 比较编辑两个不同的文件                          |
| vim +/pattern filename | 打开文件，并将光标置于第一个与pattern匹配的串处 |
| vim -r filename        | 在上次正用vmi编辑时发生系统崩溃，恢复filename   |
| vim -R file            | 只读方式打开文件                                |
| vim -x exam.txt        | 新编辑的文件加密，会提示输入密码                |
| / (查找)    ?(反查)    |                                                 |



## 编辑模式操作
|               |                                                                                                    |
|---------------|----------------------------------------------------------------------------------------------------|
| 复制 y yank   |                                                                                                    |
| y             | 在使用v模式选定了某一块的时候，复制选定块到缓冲区用；                                              |
| yy            | 复制整行（nyy或者yny ，复制n行，n为数字）；                                                        |
| y^            | 复制当前到行头的内容；                                                                             |
| y$            | 复制当前到行尾的内容；                                                                             |
| yw            | 复制一个word （nyw或者ynw，复制n个word，n为数字）；                                                |
| yG            | 复制至档尾（nyG或者ynG，复制到第n行，例如1yG或者y1G，复制到档尾）                                  |
| 剪切 d delete |                                                                                                    |
| d             | 剪切选定块到缓冲区；                                                                               |
| dd            | 剪切整行                                                                                           |
| d^            | 剪切至行首                                                                                         |
| d$            | 剪切至行尾                                                                                         |
| dw            | 剪切一个word                                                                                       |
| dG            | 剪切至档尾                                                                                         |
| 粘贴 p put    |                                                                                                    |
| p             | 小写p代表贴至游标后（下）,因为游标是在具体字符的位置上，所以实际是在该字符的后面                   |
| P             | 大写P代表贴至游标前（上）,整行的复制粘贴在游标的上（下）一行，非整行的复制则是粘贴在游标的前（后） |
| u             | 撤销                                                                                               |
| zo            | 展开                                                                                               |
| zc            | 收起                                                                                               |
| zn            | 全部展开                                                                                           |
| zN            | 全部折叠                                                                                           |



## 指令模式操作
|                      |                                                                                               |
|----------------------|-----------------------------------------------------------------------------------------------|
| :w                   | 将编辑的数据写入硬盘                                                                          |
| :w!                  | 若文件属性为`只读`时 强制写入                                                                 |
| :w [filename]        | 文件以 filename 为文件名保存                                                                  |
| :q                   | 退出 vim                                                                                      |
| :q!                  | 强制退出不储存                                                                                |
| :wq                  | 强制性写入文件并退出。即使文件没有被修改也强制写入，并更新文件的修改时间                      |
| :x                   | 写入文件并退出。仅当文件被修改时才写入，并更新文件修改时间，否则不会更新文件修改时间          |
| :e                   | 重新载入 刷新                                                                                 |
| :e!                  | 放弃修改文件内容，重新载入该文件编辑                                                          |
| :e filename          | 打开filename进行编辑 退出当前的并打开另一个文件                                               |
| :wq!                 | 则为强制储存后离开                                                                            |
| :r [filename]        | 将 filename 这个档案内容加到游标所在行后面                                                    |
| :n1,n2 w [filename]  | 将 n1 到 n2 的内容储存成 filename 这个文件                                                    |
| :! command           | 暂时离开 vim 到指令行模式下执行 command 的显示结果                                            |
| :r! command          | 将命令command的输出结果放到当前行                                                             |
| :set number/nonumber | 显示/取消行号                                                                                 |
| ZZ                   | 保存并退出                                                                                    |
| ZQ                   | 无条件退出                                                                                    |
| gg                   | 跳转到文件头                                                                                  |
| shift + g            | 跳转到文件末尾                                                                                |
| 行数 + gg            | 跳转到指定行                                                                                  |
| :X                   | 加密文件                                                                                      |
| :sh                  | 暂时退出vi到系统下，结束时按 `ctrl+d`则回到vim                                                |
| :f                   | 显示文件名,当前光标所在行的行号,总的行数,以及当前行所在文件中的百分比和当前光标所在的列的信息 |
| :f filename          | 改变编辑中的文件名(file)相当于复制了一个文件，执行这个命令后，新编辑不会应用于原文件          |
| :jumps               | 列出关于你曾经跳转过的位置的列表，你最后一个跳转的位置被特别以一个”>”号标记                   |
| :marks               | 列出自定义的标记，包含VIM内部自定义的标识                                                     |
| :version             | 显示VIM版本信息，包含特性、编译方式及配置文件目录                                             |
| :w !sudo tee %       | 以普通用户身份打开的vim，修改后以root身份保存                                                 |
| :map                 | 列出当前已定义的映射                                                                          |



## 插件

### `NERDTree 文件浏览`

#### 快捷键
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

#### 配置说明
| 参数                          | 说明                                                     |
|-------------------------------|----------------------------------------------------------|
| `loaded_nerd_tree`            | 不使用NerdTree脚本                                       |
| `NERDChristmasTree`           | 让Tree把自己给装饰得多姿多彩漂亮点                       |
| `NERDTreeAutoCenter`          | 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心 |
| `NERDTreeAutoCenterThreshold` | 与NERDTreeAutoCenter配合使用                             |
| `NERDTreeCaseSensitiveSort`   | 排序时是否大小写敏感                                     |
| `NERDTreeChDirMode`           | 确定是否改变Vim的CWD                                     |
| `NERDTreeHighlightCursorline` | 是否高亮显示光标所在行                                   |
| `NERDTreeHijackNetrw`         | 是否使用:edit命令时打开第二NerdTree                      |
| `NERDTreeIgnore`              | 默认的 无视 文件                                         |
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
