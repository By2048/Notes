`Kong` 中所有的操作管理基于 `RESTful API` 设计进行操作，在实际使用中使用 `konga` 进行界面式的管理

- `GET`（`SELECT`）：从服务器取出资源（一项或多项）。
- `POST`（`CREATE`）：在服务器新建一个资源。
- `PUT`（`UPDATE`）：在服务器更新资源（客户端提供改变后的完整资源）。
- `PATCH`（`UPDATE`）：在服务器更新资源（客户端提供改变的属性）。
- `DELETE`（`DELETE`）：从服务器删除资源。

其中使用 curl 直接进行 API 操作示例如下：

```sh
# 添加 api
curl -i -X POST \
    --url http://192.168.0.9:4444/apis/ \
    --data 'name=device' \
    --data 'uris=/baidu' \
    --data 'methods=GET,POST' \
    --data 'upstream_url=http://192.168.0.9:8080/device'
  
# 添加 api
curl -i -X POST \
      --url http://192.168.0.9:5314/apis \
      --data 'name=baidu' \
      --data 'upstream_url=https://www.baidu.com'
	  
# 删除 api
curl -i -X DELETE --url http://localhost:4444/apis/device_version_query

# 添加 api
curl -i -X POST --url http://192.168.0.9:4444/apis/ \
   --data 'name=1_device_device_id_status_online' \
   --data 'uris=/1/device/(\d+)/status/online' \
   --data 'methods=GET,POST' \
   --data 'upstream_url=http://192.168.0.9:8080/1/device/(\d+)/status/online'
```




向框架中添加一个API

```sh
# 上述方式通过指定请求路径来定位 api
curl -i -X POST \
      --url http://192.168.0.9:5314/apis \
      --data 'name=baidu' \
      --data 'uris=/baidu' \
      --data 'upstream_url=https://www.baidu.com'

# 测试
curl http://192.168.0.9:5312/baidu


# 也可以通过指定请求头来定位 api
curl -i -X POST \
      --url http://192.168.0.9:5314/apis \
      --data 'name=baidu' \
      --data 'hosts=baidu' \
      --data 'upstream_url=https://www.baidu.com'

curl -i -X GET \
        --url http://192.168.0.9:5312 \
        --header 'host: baidu'
```


在访问 api 的过程中 可以与普通访问一样使用 get post 参数

```sh
# 发送 get 数据
curl -i -X GET --url http://101.132.185.153:8000/get_all_person

# 发送 get 和 post 数据
curl -X POST -i 'http://101.132.185.153:8000/get_all_person/?id=123456' --data token=qwerter111
```


一些管理示例如下：
```sh
# 添加身份认证
curl -i -X POST \
        --url http://localhost:8001/apis/get_all_person/plugins/ \
        --data "name=key-auth" \

# 用户添加key
curl -i -X POST \
        --url http://localhost:8001/consumers/user_test/key-auth/ \
        --data 'key=123456'

# 通过key访问
curl -i -X GET \
        --url http://localhost:8000 \
        --header "Host: all_person" \
        --header "apikey: 123456" \
```