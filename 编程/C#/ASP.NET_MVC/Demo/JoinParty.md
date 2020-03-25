### Control
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Dome1.Controllers
{
    public class PartyController : Controller
    {
        // GET: Party
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ViewResult JoinPartyFrom()
        {
            return View();
        }
        [HttpPost]
        public ViewResult JoinPartyFrom(GuestResponse gr)
        {
            if (ModelState.IsValid)
                return View("JoinPartyFromReturn", gr);
            else
                return View();
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
using System.ComponentModel.DataAnnotations;

namespace Dome1
{
    public class GuestResponse
    {
        [Required(ErrorMessage = "请输入姓名")]
        public string Name { get; set; }
        [Required(ErrorMessage = "请输入邮箱")]
        [RegularExpression(".+\\@.+\\..+", ErrorMessage = "请输入正确的邮箱地址")]
        public string Email { get; set; }
        [Required(ErrorMessage = "请输入电话")]
        public string Phone { get; set; }
        [Required(ErrorMessage = "请选择是否参加宴会 Yes No")]
        public bool? WillAttend { get; set; }
    }
}
```


### cshtml
#### JoinPartyFrom.cshtml
```html
@model Dome1.GuestResponse

<body>
    <h4>嘉宾信息单</h4>
    @using (Html.BeginForm())
    {
        @Html.ValidationSummary()
        //ValidationSummary 控件用于在网页、消息框或在这两者中内联显示所有验证错误的摘要
        <p>Name:@Html.TextBoxFor(gr => gr.Name)</p>
        <p>Email:@Html.TextBoxFor(gr => gr.Email)</p>
        <p>Phone:@Html.TextBoxFor(gr => gr.Phone)</p>

        <p>
            是否参加？
            @Html.DropDownListFor(
                gr => gr.WillAttend,
                new[] {
                    new SelectListItem(){Text="Yes",Value=bool.TrueString},
                    new SelectListItem(){Text="No",Value=bool.FalseString}
            },
            "Plece Select")
        </p>
        <input class="btn btn-success" type="submit" value="提交" />
    }
</body>
```
#### JoinPartyFromReturn.cshtml
```html
@model Dome1.GuestResponse

<body>
    <div class="text-center">
        <h1>Thanke,@Model.Name!</h1>
        <div class="lead">
            @if (Model.WillAttend == true)
            {
                @:很高兴你能来参加。
            }
            else
            {
                @:很遗憾你不能来参加。
            }
            <p>@Model.Email</p>

        </div>
    </div>
</body>
```