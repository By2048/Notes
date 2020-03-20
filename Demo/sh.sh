find / -type f -size +1G | xargs rm


do_not_archive=$(find relative/path/to/directory -type f -size +10000000c)


zip -r backup_without_files_bigger_than_10mb.zip relative/path/to/directory -x $do_not_archive



pv backup.sql |  mysql -uroot --protocol=tcp -p123456 


mysqldump --defaults-extra-file=my.cnf --all-databases --protocol=tcp > backup.sql


mysqldump --defaults-extra-file=/home/deploy/backup/mysql/tmp.ini --protocol=tcp api > api.sql


mysqldump --defaults-extra-file=my.conf api > api.sql


tail -f socket.log | grep 20323363FC59

sed -n "/2CF4320F8E4C/"p socket.log


lsof -i:xxx
strace -p xxx



if [ ! -f /tmp/article.db ]; then cd echo yes; else echo no; fi


ssh -vT git@github.com


