# `frp` 内网穿透

- [GitHub 主页](https://github.com/fatedier/frp)
- [GitHub 下载](https://github.com/fatedier/frp/releases)

## 搭建远程shell访问

### 服务器部署
- `cd /root/service`
- `wget https://github.com/fatedier/frp/releases/download/v0.26.0/frp_0.26.0_linux_386.tar.gz`
- `tar -zxvf frp_0.26.0_linux_386.tar.gz`
- `mv frp_0.26.0_linux_386 frp`
> `/etc/supervisor/conf.d/frps.conf`
```ini
[program:frps]                                                             
user = root
command = /root/service/frp/frps -c /root/service/frp/frps.ini
autostart = true
autorestart = true
redirect_stderr = true
stdout_logfile = /var/log/supervisor/frps.log
```

> `/root/service/frp/frps.ini`
```ini
[common]               
bind_port = {server port}  ;服务运行端口
```

### 客户机部署
- `cd /root/service`
- `wget https://github.com/fatedier/frp/releases/download/v0.26.0/frp_0.26.0_linux_386.tar.gz`
- `tar -zxvf frp_0.26.0_linux_386.tar.gz`
- `mv frp_0.26.0_linux_386 frp`

> `/etc/supervisor/conf.d/frpc.conf`
```ini
[program:frpc]
user = root
command = /root/service/frp/frpc -c /root/service/frp/frpc.ini
autostart = true
autorestart = true
redirect_stderr = true
stdout_logfile = /var/log/supervisor/frpc.log
```
> `/root/service/frp/frpc.ini`
```ini
[common]
server_addr = {server ip}     ;运行frps服务的外网ip
server_port = {server port}   ;运行frps服务的外网port

[ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = {ssh remote port}  ;通过{server ip}:{server port} 即可访问此内网电脑
```