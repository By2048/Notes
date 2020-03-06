# `supervisor` 服务管理

## 安装
- `python`
  - `Python 2.7.15`
  - `pyenv virtualenv 2.7.15 supervisor`
  - `pyenv activate supervisor`
  - `pip install supervisor`
- `apt`
  - `apt install supervisor`
- `echo_supervisord_conf` 显示配置


## `supervisor`配置
- 默认配置文件的位置 `/etc/supervisor/supervisord.conf`
```ini
[inet_http_server]          ; inet (TCP) server disabled by default
port=0.0.0.0:9001           ; ip_address:port specifier, *:port for all iface
username=admin              ; default is no username (open server)
password=123456789          ; default is no password (open server)

[include]
files = /etc/supervisor/conf.d/*.conf
```


### 项目配置文件示例
- 天气启动

```ini
[program:weather]
command = /root/.pyenv/versions/weather/bin/python /root/project/weather/server.py
autostart = true
autorestart = true
startsecs = 3
stdout_logfile = /var/log/project/weather/log.txt
```

- 分别在8000和8001两个端口开启两个Tornado进程：

```ini
[program:TornadoBlog]
command = python /opt/data/product/blog/run.py --port=80%(process_num)02d
process_name = 80%(process_num)02d
stdout_logfile = /opt/data/product/blog/log/tornado-80%(process_num)02d.log
numprocs = 2
numprocs_start = 0
autorestart = true
redirect_stderr = true
```

```ini
[program:{name}]     
#设置进程的名称

command = {command}  
#这个就是队列执行的命令

directory = {directory}  
#执行 command 之前，先切换到的工作目录

process_name=%(process_num)02d
#默认为 %(program_name)s，即 [program:x] 中的 x 这个是进程名，
#如果numprocs参数为1的话，就不用管这个参数                                 
#它默认值%(program_name)s也就是上面的那个program冒号后面的

numprocs = 5  
#进程数量当不为1时的时候，就是进程池的概念

autostart = true
#是否自动启动

autorestart = true
#程序意外退出是否自动重启

startsecs = 1 
# 这个选项是子进程启动多少秒之后，此时状态如果是running，则我们认为启动成功了
#默认值为1 。。非必须设置


startretries = 3
# 当进程启动失败后，最大尝试启动的次数。。当超过3次后，supervisor将把此进程的状态置为FAIL 默认值为3 s

redirect_stderr = true
# 如果为true，则stderr的日志会被写入stdout日志文件中  理解为重定向输出的日志

user = root
# 如果supervisord是root启动，我们在这里设置这个非root用户，可以用来管理该program

stdout_logfile = /www/wwwroot/admin/test.out.log
# 子进程的stdout的日志路径 输出日志文件

stderr_logfile = /www/wwwroot/admin/test.err.log 
# 错误日志文件 当redirect_stderr=true。这个就不用

```

### 常用命令
- 启动 `supervisord`
- 添加好项目配置文件后,更新配置文件  `supervisorctl update`
- 重新启动配置中的所有程序 `supervisorctl reload`
- 启动某个进程 `supervisorctl start {program_name}`
- 查看正在守候的进程 `supervisorctl`
- 停止某一进程 `pervisorctl stop {program_name}`
- 重启某一进程 `supervisorctl restart {program_name}`
- 停止全部进程 `supervisorctl stop all`
- 显示用`stop`停止掉的进程，用`reload`或者`update`都不会自动重启
- 当使用自定义位置的配置文件时，运行命令时需要加上 `-c {config path}`
  - `supervisord -c /root/service/supervisor/supervisord.conf`
  - `supervisorctl -c /root/service/supervisor/supervisord.conf`
