[官网](https://ffmpeg.org/)

[ffmpeg 官方文档](https://trac.ffmpeg.org/wiki/Concatenate)

```ini
# list.txt
# 相对路径、绝对路径均可
file '/path/to/1.flv'
file '/path/to/2.flv'
file '/path/to/3.flv'
```

`shell` 中运行 `ffmpeg -f concat -i /path/to/list.txt -c copy output.mp4`

参数说明：
-    `-i` 设定输入文件
-    `-f` 设定编码器，这里使用 concat 无损合并
-    `-c` 流选择器，这里选择所有流
-    最后可以选择任何可以封装的格式，不一定是 MP4


