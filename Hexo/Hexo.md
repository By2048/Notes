# Install
```sh
apt install npm -y
npm install hexo-cli -g

cd /root/project 
hexo init blog

cd blog
npm install
git clone https://github.com/iissnan/hexo-theme-next themes/next

hexo server

```


npm install hexo-generator-feed --save
npm install hexo-generator-searchdb --save
npm install --save hexo-helper-live2d  --save
npm install hexo-deployer-git --save


# config


```yml
# {path}/_config.yml

theme: next
language: zh-Hans

```



```yml
# {path}/themes/next/_config.yml

scheme: Pisces

scrollpercent: true

number: false

```
