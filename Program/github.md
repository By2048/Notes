使用`ssh`进行`clone`

`C:\Users\Administrator\.ssh\config`

```
Host {server}
    HostName {server ip / host}
    User {user}
    Port {port}
    IdentityFile {key file path}

Host github.com
    HostName github.com
    User By2048
    PreferredAuthentications publickey
    IdentityFile E:\Sync\Config\AM
```