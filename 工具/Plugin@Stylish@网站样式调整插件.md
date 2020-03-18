[
    {
        "sections": [
            {
                "urls": [],
                "urlPrefixes": [],
                "domains": [
                    "blog.csdn.net"
                ],
                "regexps": [],
                "code": "\n/* 该域上的网址 blog.csdn.net */\n#csdn-toolbar, /* 顶部导航栏 */\n.blog_container_aside, /* 左边信息栏 */\n.recommend-right,  /* 右边信息栏 */\n.tool-box,   /* 右边按钮 */\n.csdn-side-toolbar, /* 底部按钮 */\n.recommend-box, /* 推荐文章 */\n.template-box,  /* 文章主题模板信息 */\n.comment-box,  /* 文章评论 */\n.article-copyright,  /* 文章版权信息 */\n.article-info-box, /* 文章其他信息（发布时间，作者，阅读数） */\n.postTime, /* 文章发布时间信息 */\n.person-messagebox, /* 底部作者信息 */\n.more-toolbox, /* 点赞收藏分享 */\n.blog-column-pay, /* 官方推送 */\n.t0 /* 文章底部推荐 */\n{\n    display: none !important;\n}\n\n\n.container#mainBox main /* 文章主体内容宽度修改 */\n{\n\tposition: absolute;\n\twidth: 1300px !important;\n\tleft: 0;\n\ttop: 0;\n\tright: 0;\n\tbottom: 0;\n\tmargin: auto;\n}"
            }
        ],
        "url": "http://userstyles.org/styles/172390",
        "updateUrl": "https://userstyles.org/styles/chrome/172390.json",
        "md5Url": "https://update.userstyles.org/172390.md5",
        "originalMd5": "5c5e3ce236d6d850893623a987a474d0",
        "name": "csdn",
        "method": "saveStyle",
        "enabled": true,
        "id": 1
    },
    {
        "sections": [
            {
                "urls": [],
                "urlPrefixes": [
                    "https://www.zhihu.com/hot"
                ],
                "domains": [],
                "regexps": [],
                "code": "header, /* 顶部导航栏 */\n.GlobalSideBar /* 右边信息栏 */\n{ \n    display: none !important;\n}\n.Topstory-mainColumn /* 主体内容宽度 */\n{\n    width: 1100px;\n    min-height: 100vh;\n}"
            },
            {
                "urls": [],
                "urlPrefixes": [
                    "https://www.zhihu.com/question"
                ],
                "domains": [],
                "regexps": [],
                "code": "header, /* 首部导航栏 */\n.Reward, /* 赞赏区块 */\n.Question-sideColumn /* 右边信息栏 */\n{\n    display: none !important;\n}\n.Question-mainColumn /* 主体内容宽度 */\n{\n    width: 1000px;\n    margin-left: auto;\n}"
            },
            {
                "urls": [
                    "https://www.zhihu.com/"
                ],
                "urlPrefixes": [],
                "domains": [],
                "regexps": [],
                "code": "header\n{\n    display: none !important;\n}\n"
            }
        ],
        "url": "http://userstyles.org/styles/159687",
        "updateUrl": "https://userstyles.org/styles/chrome/159687.json",
        "md5Url": "https://update.userstyles.org/159687.md5",
        "originalMd5": "015d77f521c47c5cb376a2da20edb1e6",
        "name": "zhihu",
        "enabled": true,
        "id": 2,
        "method": "saveStyle"
    },
    {
        "method": "saveStyle",
        "name": "oschina",
        "enabled": true,
        "sections": [
            {
                "urls": [],
                "urlPrefixes": [
                    "https://www.oschina.net/news"
                ],
                "domains": [],
                "regexps": [],
                "code": "/* 网址前缀 https://www.oschina.net/news */\n#headerNavMenu ,\n#commentsContainer ,\n.news-links,\n.source-info ,\n.wonderful-comments-wrap,\n#mainScreen > div > div > div > div.twelve.wide.widescreen.screen.twelve.wide.large.screen.twelve.wide.computer.sixteen.wide.tablet.sixteen.wide.mobile.column > div.float-menu-content > div.article-detail > div.ui.basic.center.aligned.segment.action,\n#mainScreen > div > div > div > div.twelve.wide.widescreen.screen.twelve.wide.large.screen.twelve.wide.computer.sixteen.wide.tablet.sixteen.wide.mobile.column > div.ui.basic.segment.article-list.article-footer-list,\n#mainScreen > div > div > div > div.four.wide.widescreen.screen.four.wide.large.screen.four.wide.computer.sixteen.wide.tablet.sixteen.wide.mobile.column.sidebar.news-sidebar,\n#footer,\n#copyright\n{\n\tdisplay: none !important;\n}\n"
            }
        ],
        "updateUrl": null,
        "md5Url": null,
        "url": null,
        "originalMd5": null,
        "id": 4
    },
    {
        "method": "saveStyle",
        "name": "cuiqingcai",
        "enabled": true,
        "sections": [
            {
                "urls": [],
                "urlPrefixes": [
                    "https://cuiqingcai.com"
                ],
                "domains": [],
                "regexps": [],
                "code": "#header,\n#qrcodes,\n.meta,\n.banner.banner-post,\n.article-social,\n.article-nav,\n.speedbar,\n.speedbar,\n.related_top,\n.comment-ad,\n#respond,\n.article-nav,\n#comment-ad,\n.footer,\n.left-ad,\n.ws_thumbs,\n.ws_images,\n.auth-span,\n.muted,\n.sidebar {\n    display: none !important;\n}\n\n.content {\n    position: absolute;\n    width: 1000px !important;\n    left: 0;\n    top: 0;\n    right: 0;\n    bottom: 0;\n    margin: auto;\n}"
            }
        ],
        "updateUrl": null,
        "md5Url": null,
        "url": null,
        "originalMd5": null,
        "id": 5
    },
    {
        "sections": [
            {
                "urls": [],
                "urlPrefixes": [],
                "domains": [
                    "juejin.im"
                ],
                "regexps": [],
                "code": "/* 该域上的网址 juejin.im */\n.add, /*写文章按钮*/\n.suspension-panel /*底部悬浮反馈按钮*/\n{\n    display: none !important;\n}\n"
            },
            {
                "urls": [
                    "https://juejin.im/timeline"
                ],
                "urlPrefixes": [],
                "domains": [],
                "regexps": [],
                "code": "\n/* 该域上的网址 https://juejin.im/timeline */\n.add, /*写文章按钮*/\n.sidebar-block, /*右边推荐榜*/\n.suspension-panel /*底部悬浮反馈按钮*/\n{\n    display: none !important;\n}\n.timeline-entry-list /*文章列表宽度*/\n{\n    width: 960px !important;\n}"
            },
            {
                "urls": [],
                "urlPrefixes": [
                    "https://juejin.im/post"
                ],
                "domains": [],
                "regexps": [],
                "code": "/* 网址前缀 https://juejin.im/post/ */\n.comment-btn, /*评论按钮*/\n.share-title, /*分享标题*/\n.share-btn, /*分享按钮*/\n.author-block,  /*右边作者信息*/\n.wechat-banner, /*微信社区推荐*/\n.index-book-collect,  /*右边掘金小册推荐*/\n.app-download-sidebar-block, /*app下载*/\n.related-entry-sidebar-block /*相关文章推荐*/\n{\n    display: none !important;\n}\n.catalog-block {\n    position: absolute important;\n    top: 50px  important;\n}\n\n.sticky-block-box\n{\n    position: fixed;\n    top: 6.766999999999999rem;\n    width: inherit;\n    transition: top .2s;\n}"
            }
        ],
        "url": "http://userstyles.org/styles/159306",
        "updateUrl": "https://userstyles.org/styles/chrome/159306.json",
        "md5Url": "https://update.userstyles.org/159306.md5",
        "originalMd5": "0e924c7bc51ee58b4ca3aeeab65b7125",
        "name": "juejin",
        "method": "saveStyle",
        "enabled": true,
        "id": 6
    },
    {
        "method": "saveStyle",
        "name": "baidu",
        "enabled": true,
        "sections": [
            {
                "urls": [],
                "urlPrefixes": [
                    "https://www.baidu.com"
                ],
                "domains": [],
                "regexps": [],
                "code": "#content_right /*垃圾热点*/\n{\n    display: none !important;\n}\n"
            }
        ],
        "updateUrl": null,
        "md5Url": null,
        "url": null,
        "originalMd5": null,
        "id": 7
    },
    {
        "method": "saveStyle",
        "name": "cnblogs",
        "enabled": true,
        "sections": [
            {
                "urls": [],
                "urlPrefixes": [
                    "https://www.cnblogs.com/"
                ],
                "domains": [],
                "regexps": [],
                "code": "\n/*  */\n/* 网址前缀 https://www.cnblogs.com */\n#header, /* 顶部导航栏 */\n#sideBar, /* 侧边栏 */\n#footer, /* 底部信息栏 */\n#blog-comments-placeholder,  /* 评论 */\n#blog_post_info_block, /* 作者信息 */\n#comment_form /* 底部推荐 */\n{\n    display: none !important;\n}\n\n\n#topics {\n\twidth: 81% !important;\n}\n"
            }
        ],
        "updateUrl": null,
        "md5Url": null,
        "url": null,
        "originalMd5": null,
        "id": 9
    }
]