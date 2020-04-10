## 安装

```sh
apt install npm -y
npm install hexo-cli -g
```

```sh
cd /root/project
hexo init blog

cd /root/project/blog
npm install
```

```sh
cd /root/project/blog
git clone https://github.com/iissnan/hexo-theme-next themes/next
```

## 配置 Hexo & Next

### 初始化博客目录
```sh
cd /root/project/blog
hexo new page tags
hexo new page categories
```


```md
<!-- /root/project/blog/source/categories/index.md -->

---
title: 目录索引
date: 2020-04-10 17:27:52
type: "categories"
---
```

```md
<!-- /root/project/blog/source/tags/index.md -->

---
title: 标签索引
date: 2020-04-10 17:27:52
type: "tags"
---

```

### 初始化 Hexo 配置
```yml
# /root/project/blog/_config.yml

title: Blog
subtitle: Python Blog
description: Python Blog
keywords:  Python, Blog
author: AM
language: zh-Hans
timezone: Asia/Shanghai

permalink: :category/:title/

theme: next
```


### 初始化 Next 配置
```yml
# /root/project/blog/themes/next/_config.yml

menu:
  home: /|| home
  categories: /categories/|| th
  archives: /archives/|| archive

scheme: Gemini # 主题选择

scrollpercent: true # 底部返回头部按钮

auto_excerpt:  
  enable: true # 首页文章折叠
  length: 150

motion:
  enable: false # 取消动画

```



## 运行测试 
```
ufw allow 8800
```
```
hexo server
```
```
hexo generate && hexo server --ip 0.0.0.0 --port 8800
```

## 插件

```
npm install hexo-generator-feed --save
npm install hexo-generator-searchdb --save
npm install --save hexo-helper-live2d  --save
npm install hexo-deployer-git --save
```


## 配置下载

<a href="_config_/hexo__config.yml" download="hexo__config.yml">hexo__config.yml</a>

<a href="_config_/hexo__next__config.yml" download="hexo__next__config.yml">hexo__next__config.yml</a>