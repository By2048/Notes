# Nginx 服务器

## 安装
```sh
apt update
apt install nginx

# 配置用户密码登陆
apt install apache2-utils

# useradmin
# qwer1234

```

## 常用命令 配置
```sh
# 检查安装是否成功
/usr/sbin/nginx -V

# 测试配置文件
sudo /usr/sbin/nginx -t

# 修改配置文件
# 1. 在nginx文件中 server节点下有: include /etc/nginx/conf.d/*.conf  
# nginx会将conf.d文件下的*.conf文件全部自动引入到配置文件中，
sudo vim /etc/nginx/nginx.conf

# 2. 配置文件路径
sudo vim /etc/nginx/conf.d/file_server.conf

# 测试配置文件
sudo /usr/sbin/nginx -t 
 
# 重启 Nginx
sudo /etc/init.d/nginx reload
service nginx -s  reload

# 开发过程中，我们会经常的修改nginx的配置文件，每次修改配置文件都可以先测试下本次修改的配置文件是否正确，可以利用以下命令：
service nginx -t -c /alidata/server/nginx/conf/nginx.conf

# 运行 Nginx
/etc/init.d/nginx

# 停止 Nginx
kill -QUIT 主进程号
# 当然还有通用的停止进程的命令，那就是暴力停止了
kill -9 进程号

# 查询nginx进程
ps -ef | grep nginx

# 添加用户呢
# 在/etc/nginx/pass_file 中添加了了一个用户
htpasswd -c -d /etc/nginx/pass_file user_test

# 配置用户名和密码，并把用户名、密码保存到指定文件中：
htpasswd -c /usr/local/src/nginx/passwd coderschool
New password: 
Re-type new password: 
Adding password for user coderschool

# 查看成的密码文件的内容：
cat /usr/local/src/nginx/passwd 
coderschool:$apr1$DhlW8hIu$BXyCQ7hiEos1DiqgwEYcZ1

root@aly:/etc/nginx# ls
conf.d  fastcgi.conf  fastcgi_params  koi-utf  koi-win  mime.types  nginx.conf  password_file  proxy_params  scgi_params  sites-available  sites-enabled  snippets  uwsgi_params  win-utf
root@aly:/etc/nginx# vim password_file 
root@aly:/etc/nginx# 


# htpasswd选项参数
htpasswd [-cmdpsD] passwordfile username
htpasswd -b[cmdpsD] passwordfile username password
htpasswd -n[mdps] username
htpasswd -nb[mdps] username password
htpasswd命令选项参数说明
-c 创建一个加密文件
-n 不更新加密文件，只将htpasswd命令加密后的用户名密码显示在屏幕上
-m 默认htpassswd命令采用MD5算法对密码进行加密
-d htpassswd命令采用CRYPT算法对密码进行加密
-p htpassswd命令不对密码进行进行加密，即明文密码
-s htpassswd命令采用SHA算法对密码进行加密
-b htpassswd命令行中一并输入用户名和密码而不是根据提示输入密码
-D 删除指定的用户

# htpasswd例子
# a、如何利用htpasswd命令添加用户？
htpasswd -bc ./.passwd tonyzhang pass
在当前目录下生成一个.passwd文件，用户名tonyzhang ，密码：pass，默认采用MD5加密方式

# b、如何在原有密码文件中增加下一个用户？
htpasswd -b ./.passwd onlyzq pass
去掉c选项，即可在第一个用户之后添加第二个用户，依此类推

# c、如何不更新密码文件，只显示加密后的用户名和密码？
htpasswd -nb tonyzhang pass
不更新.passwd文件，只在屏幕上输出用户名和经过加密后的密码

# d、如何利用htpasswd命令删除用户名和密码？
htpasswd -D .passwd tonyzhang

# e、如何利用 htpasswd 命令修改密码？
htpasswd -D .passwd tonyzhang
htpasswd -b .passwd tonyzhang pass
```

## 配置文件
```conf
server {
        client_max_body_size 4G;
        listen  8008;
        server_name    XXX.XXX.XXX;
        root /home/download;
	    location / {
		autoindex on; # 显示索引
                autoindex_exact_size on; # 显示大小
		autoindex_localtime on;   # 显示时间
        }
}

# nginx自带的认证模块,键的是auth_basic auth_basic_user_file字段
# auth_basic表示的输入密码时的提示语
# auth_basic_user_file则显示认证时的用户密码文件存放路径
server {
        client_max_body_size 4G;
        listen  80;  ## listen for ipv4; this line is default and implied
        server_name static.test.sdk.iwplay.com.tw;
	    root /home/mini/Sync;
	    location / {
                auth_basic   "password error";  
  	        auth_basic_user_file /etc/nginx/pass_file;
	 	autoindex on;
                autoindex_exact_size on;
		autoindex_localtime on;  
        }
}
```