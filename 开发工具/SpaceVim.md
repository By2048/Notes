# SpaceVim



## 安装

- 默认安装
    - `curl -sLf https://spacevim.org/cn/install.sh | bash`
- 获取安装脚本的帮助信息，定制安装、更新和卸载等。
    - `curl -sLf https://spacevim.org/cn/install.sh | bash -s -- -h`
- Docker 安装
    - `docker pull spacevim/spacevim && docker run -it --rm spacevim/spacevim nvim`
- Docker 安装，载入本地配置
    - `docker run -it -v ~/.SpaceVim.d:/home/spacevim/.SpaceVim.d --rm spacevim/spacevim nvim`




## 配置

```ini
# /root/.SpaceVim.d/init.toml
[options]
    # --- my ---
    filemanager = "nerdtree"
    filetree_direction = "left"
    # --- my ---
```

# SpaceVim和Vim共存
`git clone https://github.com/SpaceVim/SpaceVim.git ~/.SpaceVim`

`alias svim='vim -u ~/.SpaceVim/vimrc'`