## 基础配置
```
passwd root
apt update && apt upgrade -y
```

## 安装软件
```
apt install -y \
    docker docker.io \
    htop glances tree lrzsz \
    supervisor \
    unzip zip \
    vim 
    curl \

mkdir -p /root/pc/config
mkdir -p /root/pc/keymaps
mkdir -p /root/sync
```