|               |                             |
|   ---------   |   -----------------------   |
|   open        |   与服务器相连接；          |
|   send(put)   |   上传文件；                |
|   get         |   下载文件；                |
|   mget        |   下载多个文件；            |
|   cd          |   切换目录；                |
|   dir         |   查看当前目录下的文件；    |
|   del         |   删除文件；                |
|   bye         |   中断与服务器的连接。      |


```
ftp> help
命令可能是缩写的。  命令为:

!               delete          literal         prompt          send
?               debug           ls              put             status
append          dir             mdelete         pwd             trace
ascii           disconnect      mdir            quit            type
bell            get             mget            quote           user
binary          glob            mkdir           recv            verbose
bye             hash            mls             remotehelp
cd              help            mput            rename
close           lcd             open            rmdir
```

|                                         |                                                                       |
|   -----------------------------------   |   -----------------------------------------------------------------   |
|   ascii                                 |   设定以ASCII方式传送文件(缺省值)                                     |
|   bell                                  |   每完成一次文件传送,报警提示                                         |
|   binary                                |   设定以二进制方式传送文件                                            |
|   bye                                   |   终止主机FTP进程,并退出FTP管理方式                                   |
|   case                                  |   当为ON时,用MGET命令拷贝的文件名到本地机器中,全部转换为小写字母      |
|   cd                                    |   同UNIX的CD命令                                                      |
|   cdup                                  |   返回上一级目录                                                      |
|   chmod                                 |   改变远端主机的文件权限                                              |
|   close                                 |   终止远端的FTP进程,返回到FTP命令状态,所有的宏定义都被删除            |
|   delete                                |   删除远端主机中的文件                                                |
|   dir [remote-directory] [local-file]   |   列出当前远端主机目录中的文件.如果有本地文件,就将结果写至本地文件    |
|   get [remote-file] [local-file]        |   从远端主机中传送至本地主机中                                        |
|   help [command]                        |   输出命令的解释                                                      |
|   lcd                                   |   改变当前本地主机的工作目录,如果缺省,就转到当前用户的HOME目录        |
|   ls [remote-directory] [local-file]    |   同DIR                                                               |
|   macdef                                |   定义宏命令                                                          |
|   mdelete [remote-files]                |   删除一批文件                                                        |
|   mget [remote-files]                   |   从远端主机接收一批文件至本地主机                                    |
|   mkdir directory-name                  |   在远端主机中建立目录                                                |
|   mput local-files                      |   将本地主机中一批文件传送至远端主机                                  |
|   open host [port]                      |   重新建立一个新的连接                                                |
|   prompt                                |   交互提示模式                                                        |
|   put local-file [remote-file]          |   将本地一个文件传送至远端主机中                                      |
|   pwd                                   |   列出当前远端主机目录                                                |
|   quit                                  |   同BYE                                                               |
|   recv remote-file [local-file]         |   同GET                                                               |
|   rename [from] [to]                    |   改变远端主机中的文件名                                              |
|   rmdir directory-name                  |   删除远端主机中的目录                                                |
|   send local-file [remote-file]         |   同PUT                                                               |
|   status                                |   显示当前FTP的状态                                                   |
|   system                                |   显示远端主机系统类型                                                |
|   user user-name [password] [account]   |   重新以别的用户名登录远端主机                                        |
|   ?                                     |   同HELP                                                              |


