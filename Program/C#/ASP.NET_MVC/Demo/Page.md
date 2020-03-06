```C#
using PageDemo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PageDemo.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index(int pageIndex = 1)
        {
            PagingHelper<Student> StudentPaging = new PagingHelper<Student>(5, Students.data);//初始化分页器
            StudentPaging.PageIndex = pageIndex;//指定当前页
            return View(StudentPaging);//返回分页器实例到视图
        }
    }
}
```

### Model
#### PagingHelper
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PageDemo.Models
{
    public class PagingHelper<T>
    {
        //分页数据源
        public IEnumerable<T> DataSource { get; private set; }
        //每页显示记录的数量
        public int PageSize { get; private set; }
        //当前页数
        public int PageIndex { get; set; }
        //分页总页数
        public int PageCount { get; private set; }

        //是否有前一页
        public bool HasPrev { get { return PageIndex > 1; } }
        //是否有下一页
        public bool HasNext { get { return PageIndex < PageCount; } }
        //构造函数
        public PagingHelper(int pageSize, IEnumerable<T> dataSource)
        {
            this.PageSize = pageSize > 1 ? pageSize : 1;
            this.DataSource = dataSource;
            PageCount = (int)Math.Ceiling(dataSource.Count() / (double)pageSize);
        }
        //获取当前页数据
        public IEnumerable<T> GetPagingData()
        {
            return DataSource.Skip((PageIndex - 1) * PageSize).Take(PageSize);
        }
    }
}
```

#### Student.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PageDemo.Models
{
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
    public static class Students
    {
        public static IEnumerable<Student> data
        {
            get
            {
                return new List<Student>()
                {
                    new Student{ Id=0, Name="John"},
                    new Student{ Id=1, Name="Marry"},
                    new Student{ Id=2, Name="Andy"},
                    new Student{ Id=3, Name="Tom"},
                    new Student{ Id=4, Name="Lydia"},
                    new Student{ Id=5, Name="Chris"},
                    new Student{ Id=6, Name="Justin"},
                    new Student{ Id=7, Name="Susan"}
                };
            }
        }
    }
}
```

### cshtml
```html
@using PageDemo.Models

@model PagingHelper<Student>

@{
    ViewBag.Title = "Index";
}
<h2>Index</h2>
@foreach (var Data in Model.GetPagingData())
{
    <p>ID:@Data.Id Name:@Data.Name</p>
}
<p>
    @if (Model.HasPrev)
    {
        <a href="@Url.Action("Index", "Home", new { pageIndex = Model.PageIndex - 1 })">上一页</a>
    }
    else
    {
        <em style="color:Gray">上一页</em>
    }
    @if (Model.HasNext)
    {
        <a href="@Url.Action("Index", "Home", new { pageIndex = Model.PageIndex + 1 })">下一页</a>
    }
    else
    {
        <em style="color:Gray">下一页</em>
    }
</p>
```