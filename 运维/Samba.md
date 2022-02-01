docker stop samba && docker rm samba
docker run \
    -d \
    --name samba \
    -v /root/samba:/mount \
    -m 512m \
    -p 139:139 \
    -p 445:445 \
    dperson/samba -p \
    -u "admin;admin123" \
    -s "admin;/mount/;yes;no;yes;all;all;all" \
    -g "force user=admin" \
    -g "guest account=admin"


    -w "WORKGROUP" \


smbclient -L 127.7.0.1 -U admin%admin


smbclient -L 127.7.0.1 -U zzxworld%123456




docker run -it --rm \
    --name samba \
    -p 139:139 -p 445:445 \
    -v /home/zzxworld/Public:/mount dperson/samba \
    -u "zzxworld;123456" \
    -s "zzxworld;/mount/;yes;no;yes;all;all;all" \
    -w "WORKGROUP" \

    sudo docker run -it -p 139:139 -p 445:445 -d dperson/samba -p \
            -u "example2;badpass" \
            -s "public;/share" \
            -s "users;/srv;no;no;no;example1,example2" \
            -s "example1 private share;/example1;no;no;no;example1" \
            -s "example2 private share;/example2;no;no;no;example2"
