
# ZSH

## 安装

```
# 安装 Zsh
sudo apt install zsh

# 将 Zsh 设置为默认 Shell
chsh -s /bin/zsh

# 可以通过 echo $SHELL 查看当前默认的 Shell，如果没有改为 /bin/zsh，那么需要重启 Shell。

```

- `apt install zsh`
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## 配置

```
 ~/.oh-my-zsh/themes/robbyrussell.zsh-theme

%c -> $PWD
```


brew install autojump;
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions;
git clone git://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

