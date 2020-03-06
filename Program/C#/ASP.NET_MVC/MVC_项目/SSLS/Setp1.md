
###Setp1

1. 新建解决方案 SSLS
2. 添加 C#类库 ASP MVC SSLS.Domain SSLS.WebUI 
3. install-package ninject –projectname SSLS.WebUI
	install-package ninject.web.common –projectname SSLS.WebUI
	install-package ninject.mvc3 –projectname SSLS.WebUI
	install-package entityframework –projectname SSLS.WebUI
4. 两个项目引用
	SSLS.Domain 引用 System.ComponentModel.DataAnnotations
	SSLS.WebUI 引用 SSLS.Domain



??? 什么是引用 作用
