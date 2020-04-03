- 创建新的虚拟机 （典型）（15.X)虚拟机
- `ubuntu-18.04.4-live-server-amd64.iso`
- 个性化Linux
    - 全名    am
    - 用户名  am
    - 密码    pwd
- 虚拟机名称位置
    - Ubuntu
    - D:\VMwareComputer\Ubuntu
- 磁盘大小
    - 100G
    - 拆分为多个文件
- 自定义硬件
    - 内存 4G
    - CPU 4核
    - 网络适配器 
        - 启动时链接
        - 桥接
        - 复制物理网络连接状态
    - 声卡 移除
    - USB控制器 移除
    - 打印机 移除
- 安装完成后
    - 删除 cd/dvd
    - 删除软盘

--------------------------


- 安装过程中使用默认配置
- profile setup
    - am
    - pc
    - am
    - pwd
    - pwd
- install openssh server
- freatured server snaps
    - 不选择 直接Done


--------------------------

- 设置root密码
- 路由器中修改DHCP分配的IP
- SSH
    - allow root login
    - 允许公钥登录
    - 添加登陆用公钥
- 删除am用户
- 安装
    - pyenv pyenv-virtualenv pyenv-update
    - lrzsz
    - htop 
    - tree
    - supervisor
    - glanse
    - docker docker.io
    - unzip zip


------------------------------


使用`upgrade.sh`初始化`docker`环境以及`其他`环境


------------------------------


pyenv install 
    - 2.7.x
    - 3.7.x
    - 3.8.x
    - 3.9.x