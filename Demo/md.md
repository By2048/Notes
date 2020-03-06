<style>
    .box1 {
        float: left;
        width: 49%;
    }
    .box2 {
        float: right;
        width: 49%;
    }
    .clear {
        clear:both;
    }
</style>


<div class="box1">

### 方法一
```py
def get_device_mysql(self):
    """ 通过设备的mac获取设备其他信息
    设备通过握手帧上报设备的mac、key，通过mac获取设备基础信息
    通过设备mac获取用户的信息
    """

    sql = f"SELECT ebf_factory_id,ebf_device_alias,ebf_device_mac,dt_id,ebf_device_key FROM ebt_device WHERE"
    sql = f"{sql} ebf_device_mac = '{self.mac}';"

    device_info = {}
    connection = mysql_conn_pool_smartsys.connection()
    try:
        cursor = connection.cursor()
        cursor.execute(sql)
        device_info = cursor.fetchone()
    except Exception as e:
        logging.exception(e)
    finally:
        connection.close()

    if not device_info:
        return

    self.mac = device_info.get('ebf_device_mac', '')
    self.type = device_info.get('dt_id', 0)
    self.name = device_info.get('ebf_device_alias', '')
    self.factory = device_info.get('ebf_factory_id', 0)
    self.key = device_info.get('ebf_device_key', '')

```

</div>



<div class="box2">

### 方法二
```py
def get_device_mysql(self):
    """ 通过设备的mac获取设备其他信息
    设备通过握手帧上报设备的mac、key，通过mac获取设备基础信息
    通过设备mac获取用户的信息
    """

    sql = f"SELECT ebf_factory_id,ebf_device_alias,ebf_device_mac,dt_id,ebf_device_key FROM ebt_device WHERE"
    sql = f"{sql} ebf_device_mac = '{self.mac}';"

    device_info = {}
    connection = mysql_conn_pool_smartsys.connection()
    try:
        cursor = connection.cursor()
        cursor.execute(sql)
        device_info = cursor.fetchone()
    except Exception as e:
        logging.exception(e)
    finally:
        connection.close()

    if not device_info:
        return

    self.mac = device_info.get('ebf_device_mac', '')
    self.type = device_info.get('dt_id', 0)
    self.name = device_info.get('ebf_device_alias', '')
    self.factory = device_info.get('ebf_factory_id', 0)
    self.key = device_info.get('ebf_device_key', '')

```

</div>


<div class="clear"></div>


### 方法三
```py
def get_device_mysql(self):
    """ 通过设备的mac获取设备其他信息
    设备通过握手帧上报设备的mac、key，通过mac获取设备基础信息
    通过设备mac获取用户的信息
    """

    sql = f"SELECT ebf_factory_id,ebf_device_alias,ebf_device_mac,dt_id,ebf_device_key FROM ebt_device WHERE"
    sql = f"{sql} ebf_device_mac = '{self.mac}';"

    device_info = {}
    connection = mysql_conn_pool_smartsys.connection()
    try:
        cursor = connection.cursor()
        cursor.execute(sql)
        device_info = cursor.fetchone()
    except Exception as e:
        logging.exception(e)
    finally:
        connection.close()

    if not device_info:
        return

    self.mac = device_info.get('ebf_device_mac', '')
    self.type = device_info.get('dt_id', 0)
    self.name = device_info.get('ebf_device_alias', '')
    self.factory = device_info.get('ebf_factory_id', 0)
    self.key = device_info.get('ebf_device_key', '')

```




[![fuzzit](https://app.fuzzit.dev/badge?org_id=2zv5qI33roZkRm0oO2Mi&target_id=YVkkS6RPVpKhSixyFWcT&branch=master)](https://app.fuzzit.dev/admin/2zv5qI33roZkRm0oO2Mi/target)
<a href="https://repology.org/metapackage/radare2">
<img src="https://repology.org/badge/vertical-allrepos/radare2.svg" alt="Packaging status" align="right" width="150px">
</a>








<iframe
  src="https://carbon.now.sh/embed/TY6tbflnxMEaRwscrQEz"
  style="transform:scale(0.7); width:1024px; height:473px; border:0; overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>


- <details><summary><code>12312321/</code> 12312312</summary>
    
    - `conf/` - 配置文件

  </details>