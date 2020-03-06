
## 安装

- `apt install ncdu`

---

- `wget http://soft.vpser.net/manage/ncdu/ncdu-1.6.tar.gz`
- `tar zxvf ncdu-1.6.tar.gz`
- `cd ncdu-1.6/`
- `./configure`
- `make && make install`



## 使用

`ncdu`

|             |                                             |
|------------:|---------------------------------------------|
|       up, k | Move cursor up                              |
|     down, j | Move cursor down                            |
| right/enter | Open selected directory                     |
|  left, <, h | Open parent directory                       |
|           n | Sort by name (ascending/descending)         |
|           s | Sort by size (ascending/descending)         |
|           C | Sort by items (ascending/descending)        |
|           d | Delete selected file or directory           |
|           t | Toggle dirs before files when sorting       |
|           g | Show percentage and/or graph                |
|           a | Toggle between apparent size and disk usage |
|           c | Toggle display of child item counts         |
|           e | Show/hide hidden or excluded files          |
|           i | Show information about selected item        |
|           r | Recalculate the current directory           |
|           b | Spawn shell in current directory            |
|           q | Quit ncdu                                   |