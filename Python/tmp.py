#%%
import os
import logging
import hashlib

logging.basicConfig(level=logging.INFO, format='[%(levelname)s %(lineno)d] %(message)s', )

file_path = os.path.join(os.getcwd(), '_code', 'config_example.ini')
logging.info(file_path)

#%%
# 获取文件的md5值
hash = hashlib.md5()
file = open(file_path, 'rb')
while True:
    data = file.read(8096)
    if not data:
        break
    hash.update(data)
file.close()
md5 = hash.hexdigest()
logging.info(md5)

#%%
# 获取文件 SHA1
hash = hashlib.sha1()
file = open(file_path, 'rb')
while True:
    byte = file.read(8096)
    if not byte:
        break
    hash.update(byte)
file.close()
sha1 = hash.hexdigest().lower()
logging.info(sha1)

#%%
# sha256加密
hash = hashlib.sha256()
hash.update('admin'.encode('utf-8'))
sha256 = hash.hexdigest()
logging.info(sha256)

#%%
hash = hashlib.md5()
hash.update('admin'.encode('utf-8'))
hash = hash.hexdigest()
logging.info(hash)
