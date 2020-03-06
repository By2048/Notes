### Control
#### StudentController.cs
```C#
using MVCPageDemo.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Entity;
using System.Net;
using PagedList;
using MVCPageDemo.DAL;

namespace MVCPageDemo.Controllers
{
    public class StudentController : Controller
    {
        private StudentContext db = new StudentContext();

        public ViewResult Index(int? page)
        {

            //学生列表  
            var students = from s in db.Students select s;

            //第几页  
            int pageNumber = page ?? 1;

            //每页显示多少条  
            int pageSize = int.Parse(ConfigurationManager.AppSettings["pageSize"]);

            //根据ID排序  
            students = students.OrderBy(x => x.ID);

            //通过ToPagedList扩展方法进行分页  
            IPagedList<Student> pagedList = students.ToPagedList(pageNumber, pageSize);

            //将分页处理后的列表传给View  
            return View(pagedList);
        }
    }
}
```
#### appSettings
```xml
<appSettings>
  <add key="webpages:Version" value="3.0.0.0" />
  <add key="webpages:Enabled" value="false" />
  <add key="ClientValidationEnabled" value="true" />
  <add key="UnobtrusiveJavaScriptEnabled" value="true" />
  <add key="pageSize" value="8" />
</appSettings>
```




### DAl
#### StudentContext.cs
```C#
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;
using MVCPageDemo.Models;

namespace MVCPageDemo.DAL
{
    public class StudentContext : DbContext
    {
        public StudentContext() : base("StudentContext") { }
        public DbSet<Student> Students { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}

```
#### StudentInitializer.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVCPageDemo.Models;
using MVCPageDemo.DAL;
namespace MVCPageDemo.DAL
{
    public class StudentInitializer : System.Data.Entity.DropCreateDatabaseAlways<StudentContext>
    {
        protected override void Seed(StudentContext context)
        {
            List<Student> students = new List<Student>();
            for (int i = 1; i < 40; i++)
            {
                Student student = new Student();
                student.ID = i;
                student.Name = "张" + i;
                student.Age = 10 + i;
                student.Sex = i % 2 == 0 ? Sex.Female : Sex.Male;
                student.Score = 60 + i;

                students.Add(student);
            }

            context.Students.AddRange(students);
            context.SaveChanges();
        }
    }
}
```


### Model
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCPageDemo.Models
{
    public enum Sex { Female, Male }
    public class Student
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public Sex Sex { get; set; }
        public double Score { get; set; }
    }
}
```

#### 
```html
@model PagedList.IPagedList<MVCPageDemo.Models.Student>
@using PagedList.Mvc;
<link href="~/Content/PagedList.css" rel="stylesheet" />
<table class="table">
    <tr>
        <th>
            姓名
        </th>
        <th>
            年龄
        </th>
        <th>
            性别
        </th>
        <th>
            分数
        </th>
    </tr>

    @foreach (var item in Model)
    {
        <tr>
            <td>
                @Html.DisplayFor(modelItem => item.Name)
            </td>
            <td>
                @Html.DisplayFor(modelItem => item.Age)
            </td>
            <td>
                @Html.DisplayFor(modelItem => item.Sex)
            </td>
            <td>
                @Html.DisplayFor(modelItem => item.Score)
            </td>
        </tr>
    }
</table>

每页 @Model.PageSize 条记录，共 @Model.PageCount 页，当前第 @Model.PageNumber 页
@Html.PagedListPager(Model, page => Url.Action("Index", new { page }))  
```