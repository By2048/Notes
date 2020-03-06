apt install openssh-server


- edit /etc/ssh/sshd_config

- PermitRootLogin without-password  Just below it, add the following line: PermitRootLogin yes

- service ssh reload