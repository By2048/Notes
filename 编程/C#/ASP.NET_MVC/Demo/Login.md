### AccountController.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCDemo.DAL;
using MVCDemo.Models;
using System.Data.Entity;

namespace MVCDemo.Controllers
{
    public class AccountController : Controller
    {
        private AccountContext db = new AccountContext();
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            ViewBag.LoginState = "登陆前。。。";
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection fc)
        {
            string email = fc["inputEmail3"];
            string password = fc["inputPassword3"];
            ViewBag.LoginState = email + "  " + password + "  " + "登录";

            var user = db.SysUsers.Where(b => b.Email == email & b.Password == password);
            if (user.Count()>0)
                ViewBag.YesNo= email + "  " + password + "  " + "登录后。。。";
            else
                ViewBag.YesNo = email + "  " + password + "  " + "登录出现错误。。。";

            return View();
        }

        public ActionResult Register()
        {
            ViewBag.RegisterState = "请输入注册邮箱密码！";
            return View();
        }
        [HttpPost]
        public ActionResult Register(FormCollection fc)
        {
            string email = fc["inputEmail3"];
            string password = fc["inputPassword3"];
            ViewBag.RegisterState = "注册信息" + "   " + email + "    " + password;
            return View();
        }
    }
}
```

### DAl
#### AccountContext.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using MVCDemo.Models;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace MVCDemo.DAL
{
    public class AccountContext:DbContext
    {
        public AccountContext()
            : base("AccountContext")
        {
        }
        public DbSet<SysUser> SysUsers { get; set; }
        public DbSet<SysRole> SysRoles { get; set; }
        public DbSet<SysUserRole> SysUserRoles { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}

```
#### AccountInitializer.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using MVCDemo.Models;

namespace MVCDemo.DAL
{
    public class AccountInitializer:DropCreateDatabaseIfModelChanges<AccountContext>
    {
        protected override void Seed(AccountContext context)
        {
            var sysUsers = new List<SysUser>
            {
                new SysUser {UserName="Tom",Email="Tom@111.com",Password="1" },
                new SysUser {UserName ="Jerry",Email="Jerry@111.com", Password="1" }
            };
            sysUsers.ForEach(s => context.SysUsers.Add(s));
            context.SaveChanges();

            var sysRoles = new List<SysRole>
            {
                new SysRole {RoleName="Admin",RoleDesc="Admin - ALL" },
                new SysRole {RoleName="General",RoleDesc="General - SOME" }
            };
            sysRoles.ForEach(s => context.SysRoles.Add(s));
            context.SaveChanges();
        }
    }
}
```

### Model
#### SysRole.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCDemo.Models
{
    public class SysRole
    {
        public int ID { get; set; }
        public string RoleName { get; set; }
        public string RoleDesc { get; set; }
        public ICollection<SysUserRole> SysUserRoles { get; set; }

    }
}
```
#### SysUser.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCDemo.Models
{
    public class SysUser
    {
        public int ID { get; set; }
        public string Email { get; set; }
        public string UserName { get; set; } 
        public string Password { get; set; }
        public virtual ICollection<SysUserRole> SysUserRoles { get; set; }
    }
}
```
#### SysUserRole.cs
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCDemo.Models
{
    public class SysUserRole
    {
        public int ID { get; set; }
        public string SysUserID { get; set; }
        public string SysRoleID { get; set; }
        public virtual SysRole SysRole { get; set; }
        public virtual SysUser SysUser { get; set; }
    }
}
```

### cshtml
#### Login.cshtml
```html

@{
    Layout = null;
}

<!DOCTYPE html>

<html lang="en">
<head>
    <meta name="viewport" content="width=device-width" />
    <link href="~/Bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <title>Login</title>
</head>
<body>
    <center>
        <br /><br /><br /><br />
        <div id="LoginState">
            @ViewBag.LoginState
            <br />
            @ViewBag.YesNo
        </div>
        <br /><br /><br /><br />
        <div style="width:500px">
           @using (Html.BeginForm("login", "Account", FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
           {
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="inputEmail3">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="inputPassword3">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember me
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                </div>
           }
        </div>

    </center>
</body>
</html>

```

#### Register.cshtml
```html

@{
    Layout = null;
}

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Register</title>
    <link href="~/Bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <center>
        <br /><br /><br /><br />
        <div id="RegisterState">
            @ViewBag.RegisterState
        </div>
        <br /><br /><br /><br />
        <div style="width:500px">
            @using (Html.BeginForm("Register", "Account", FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
            {
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="inputEmail3">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="inputPassword3">
                    </div>
                </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Register</button>
                        </div>
                    </div>
            }
        </div>

    </center>
</body>
</html>

```