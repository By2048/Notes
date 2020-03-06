# NRPE

在需要监控的服务器上安装 `NRPE` 服务以实现 `Nagios` 对服务器的监控


服务重启  ` kill -9 $(pidof nrpe) && /usr/local/nagios/bin/nrpe -c /usr/local/nagios/etc/nrpe.cfg -d `




## 安装 Nrpe
```sh

wget https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-3.2.1/nrpe-3.2.1.tar.gz
tar -xzvf nrpe-3.2.1.tar.gz && cd nrpe-3.2.1
./configure --enable-command-args
make all && make nrpe && make check_nrpe && make install-groups-users && make install && make install-plugin && make install-daemon && make install-config && make install-inetd && make install-init



允许进行参数传递
编译时 ./configure --enable-command-args
客户端 nrpe.cfg 中配置 dont_blame_nrpe=1


allowed_hosts=127.0.0.1,::1

```


iptables -I INPUT -p tcp --destination-port 5666 -j ACCEPT


## NRPE 测试, 常用命令

```
检查是否能正常连接需要监控的服务器 （在Nagios服务器上运行） ./check_nrpe -H 192.168.0.62

service iptables start stop restart
ps -ef | grep nrpe
kill -9 $(pidof nrpe) && /usr/local/nagios/bin/nrpe -c /usr/local/nagios/etc/nrpe.cfg -d
service nagios restart
iptables -I INPUT -p tcp --destination-port 5666 -j ACCEPT
service iptables save




```


### 安装命令与参数
```
make  all                             builds nrpe and check_nrpe
make  nrpe                            builds nrpe only
make  check_nrpe                      builds check_nrpe only
make  install-groups-users            add the users and groups if they do not exist
make  install                         install nrpe and check_nrpe
make  install-plugin                  install the check_nrpe plugin
make  install-daemon                  install the nrpe daemon
make  install-config                  install the nrpe configuration file
make  install-inetd                   install the startup files for inetd, launchd, etc.
make  install-init                    install the startup files for init, systemd, etc.

允许进行参数传递
编译时 ./configure --enable-command-args
客户端 nrpe.cfg 中配置 dont_blame_nrpe=1
```



## NRPE 参数传递示例

```command[check_xxx]=/usr/local/nagios/libexec/check_xxx $ARG1$ $ARG2$  
command[check_xxx]=/usr/local/nagios/libexec/check_xxx -w $ARG1$ -c $ARG2$  
check_command    check_nrpe! -p 5666  -c check_xxx -a  arg1 arg2 

command[check_xxx]=/usr/local/nagios/libexec/check_xxx $ARG1$ $ARG2$ $ARG3$ $ARG4$
check_command    check_nrpe! -p 5666  -c check_xxx -a  "-d arg2 -w arg4"

command[check_xxx]=/usr/local/nagios/libexec/check_xxx -w $ARG1$ -c $ARG2$  
check_command    check_nrpe! -p 5666  -c check_xxx -a  arg1 arg2  
```


## nagios-plugins

```sh
wget https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz
tar -xzvf nagios-plugins-2.2.1.tar.gz && cd nagios-plugins-2.2.1
./configure --prefix=/usr/local/nagios
make && make install
```


## nagios-plugins-linux

```sh
mkdir /usr/local/nagios/libexec/plugins
git clone https://github.com/madrisan/nagios-plugins-linux.git && cd nagios-plugins-linux
autoreconf --install
./configure --libexecdir=/usr/local/nagios/libexec/plugins
make install
```




## 插件测试 

```sh

./check_http -H 192.168.0.9 -p 8000 -u "/api/person/" -v
./check_http -H 192.168.0.9 -p 8000 -u "/api/person/?id=1234" -v
./check_http -H 192.168.0.9 -p 8000 -u "/api/person/?id=1234" -P token=qwer1234  -v
./check_tcp -H 192.168.0.9 -p 2502 -v
./check_tcp -H 192.168.0.9 -p 2502 -s 5AA5000123000011 -w 20 -c 50 -v

/usr/local/nagios/libexec/check_users -c 10 -w 20

```

## 邮件发送

```
/usr/local/bin/sendEmail 命令主程序
-f ttlsafrom@163.com  发件人邮箱
-s smtp.163.com       发件人邮箱的smtp服务器
-u "我是邮件主题"     邮件的标题
-o message-content-type=html   邮件内容的格式,html表示它是html格式
-o message-charset=utf8        邮件内容编码
-xu ttlsafrom@163.com          发件人邮箱的用户名
-xp 123456               发件人邮箱密码
-m "我是邮件内容"        邮件的具体内容


/usr/local/bin/sendEmail -f (from_email) -t (to_email)  -s (mail_server)  -u "mail_data" -xu (you_mail) -xp (mail_psw) -m {mail_content}
```


## 邮件发送实际配置

- ` 'notify-host-by-email' command definition `
```
define command {
        command_name    notify-host-by-email
        command_line    /usr/bin/printf "%b" "***** Nagios *****\n\nNotification Type: $NOTIFICATIONTYPE$\nHost: $HOSTNAME$\nState: $HOSTSTATE$\nAddress: $HOSTADDRESS$\nInfo: $HOSTOUTPUT$\n\nDate/Time: $LONGDATETIME$\n" | /usr/local/bin/sendEmail -f () -t $CONTACTEMAIL$ -s mail.56iq.com  -u "** $NOTIFICATIONTYPE$ alert - $HOSTNAME$/$HOSTSTATE$ **" -xu () -xp passwd -m nagios_host
}   
```

- ` 'notify-service-by-email' command definition `
```
define command {
        command_name    notify-service-by-email
        command_line    /usr/bin/printf "%b" "***** Nagios *****\n\nNotification Type: $NOTIFICATIONTYPE$\n\nService: $SERVICEDESC$\nHost: $HOSTALIAS$\nAddress: $HOSTADDRESS$\nState: $SERVICESTATE$\n\nDate/Time: $LONGDATETIME$\n\nAdditional Info:\n\n$SERVICEOUTPUT$\n" | /usr/local/bin/sendEmail -f () -t $CONTACTEMAIL$ -s ()  -u "** $NOTIFICATIONTYPE$ alert - $HOSTALIAS$/$SERVICEDESC$ is $SERVICESTATE$ **" -xu () -xp passwd -m nagios_service
}   
```
