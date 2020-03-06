# Unable to locate package

sudo apt-get update

Ubuntu环境, 假设这台机器名字叫abc(机器的hostname), 每次执行sudo 就出现这个警告讯息:
sudo: unable to resolve host abc
虽然sudo 还是可以正常执行, 但是警告讯息每次都出来,而这只是机器在反解上的问题, 所以就直接从/etc/hosts 设定, 让abc(hostname) 可以解回127.0.0.1 的IP 即可.
/etc/hosts 原始内容
```conf
127.0.0.1       localhost

# The following lines are desirable for IPv6 capable hosts 

::1     localhost ip6-localhost ip6-loopback ip6-loopback

fe00::0 ip6-localnet 
ff00::0 ip6-mcastprefix 
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters 
ff02::3 ip6-allhosts  
```
在127.0.0.1 localhost 后面加上主机名称(hostname) 即可, /etc/hosts 内容修改成如下:
127.0.0.1       localhost abc  #要保证这个名字与 /etc/hostname中的主机名一致才有效
或改成下面这两行 

```conf
127.0.0.1       localhost 
127.0.0.1       abc
```
这样设完后, 使用sudo 就不会再有那个提示信息了。


# Could not get lock /var/lib/dpkg/lock
```
E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)
E: Unable to lock the administration directory (/var/lib/dpkg/), is another process using it?
```
在这个时候，主要是因为apt还在运行，此时的解决方案是

## 找到并且杀掉所有的apt-get 和apt进程

ps -A | grep apt
sudo kill -9 processnumber
sudo kill -SIGKILL processnumber
9是 SIGKILL 的信号数


## 删除锁定文件
当你没有看到 apt-get 或者 apt 进程的情况下在上面两个不同的文件夹中看到了锁定文件，这是因为进程由于某个原因被杀掉了，因此你需要删除锁定文件来避免该错误。

移除 `/var/lib/dpkg/` 文件夹下的锁定文件
`sudo rm /var/lib/dpkg/lock`

删除 `/var/lib/apt/lists/` 以及缓存文件夹下的锁定文件
`sudo rm /var/lib/apt/lists/lock`
`sudo rm /var/cache/apt/archives/lock`