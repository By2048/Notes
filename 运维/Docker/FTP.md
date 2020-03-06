
``` sh
docker stop ftp && docker rm ftp
docker pull bogem/ftp
docker run -d 
    --name ftp \
    --restart=always \
    -v /home/ftp:/home/vsftpd \
    -p 20:20 \
    -p 21:21 \
    -p 47400-47470:47400-47470 \
    -e FTP_USER=root \
    -e FTP_PASS=123456789 \
    -e PASV_ADDRESS=0.0.0.0 \
    bogem/ftp
```


