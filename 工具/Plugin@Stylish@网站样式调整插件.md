# zhihu

```css
/* 网址前缀 https://www.zhihu.com/hot */
header, /* 顶部导航栏 */
.GlobalSideBar /* 右边信息栏 */
{ 
    display: none !important;
}
.Topstory-mainColumn /* 主体内容宽度 */
{
    width: 1100px;
    min-height: 100vh;
}

/* 网址前缀 https://www.zhihu.com/question */
header, /* 首部导航栏 */
.Reward, /* 赞赏区块 */
.Question-sideColumn /* 右边信息栏 */
{
    display: none !important;
}
.Question-mainColumn /* 主体内容宽度 */
{
    width: 1000px;
    margin-left: auto;
}

/* 网址前缀 https://www.zhihu.com/ */
header /* 首部导航栏 */
{
    display: none !important;
}

```

# csdn

```css
/* 该域上的网址 blog.csdn.net */
#csdn-toolbar, /* 顶部导航栏 */
.blog_container_aside, /* 左边信息栏 */
.recommend-right,  /* 右边信息栏 */
.tool-box,   /* 右边按钮 */
.csdn-side-toolbar, /* 底部按钮 */
.recommend-box, /* 推荐文章 */
.template-box,  /* 文章主题模板信息 */
.comment-box,  /* 文章评论 */
.article-copyright,  /* 文章版权信息 */
.article-info-box, /* 文章其他信息（发布时间，作者，阅读数） */
.postTime, /* 文章发布时间信息 */
.person-messagebox, /* 底部作者信息 */
.more-toolbox, /* 点赞收藏分享 */
.blog-column-pay, /* 官方推送 */
.t0 /* 文章底部推荐 */
{
    display: none !important;
}
main /* 文章主体内容宽度修改 */
{
	position: absolute;
	width: 1300px !important;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	margin: auto;
}
```

# juejin
```css
/* 该域上的网址 juejin.im */
.add, /*写文章按钮*/
.suspension-panel /*底部悬浮反馈按钮*/
{
    display: none !important;
}

/* 网址 https://juejin.im/timeline */
.sidebar-block /*右边推荐榜*/
{
    display: none !important;
}
.timeline-entry-list /*文章列表宽度*/
{
    width: 960px !important;
}

/* 网址前缀 https://juejin.im/post/ */
.comment-btn, /*评论按钮*/
.share-title, /*分享标题*/
.share-btn, /*分享按钮*/
.author-block,  /*右边作者信息*/
.wechat-banner, /*微信社区推荐*/
.index-book-collect,  /*右边掘金小册推荐*/
.app-download-sidebar-block, /*app下载*/
.related-entry-sidebar-block /*相关文章推荐*/
{
    display: none !important;
}
.catalog-block {
    position: absolute important;
    top: 50px  important;
}
```