#### DefaultController
```C#
 public JsonResult GetJSON()
 {
     return Json(new { Id = 1, Name = "刘备", Age = 23 });
 }
```

#### JavaScript
```html

<script type="text/javascript">
    $(function () {
        $("#btn1").click(function () {
            $.ajax({
                url: "/Default/GetJSON",
                type: "post",
                dataType: "json",
                success: function (response) {
                    alert(response);
                    $("#Id").text(response.Id);
                    $("#Name").text(response.Name);
                    $("#Age").text(response.Age);
                }
            })
        })
    })
</script>
<body>
    <div id="imglist">
        <ul>
            <li id="Id"></li>
            <li id="Name"></li>
            <li id="Age"></li>
        </ul>
        <input type="button" id="btn1" value="确认" />
    </div>
</body>
```





```csharp
[HttpPost]
public JsonResult SaveInfo(string json_info)
{
    try
    {
        Result res = new Result();
        res.savedata(json_info);
        return Json(new { success = true, message = "keep success" });
    }
    catch (Exception e)
    {
        return Json(new { error = false, message = "keep fail" });
    }
}
```

```js
function save_node_info() {
    var json_str = JSON.stringify(gf.exportData());
    $.ajax({
        type: "POST",
        url: "/Home/SaveInfo",
        data: { json_info: json_str },
        dataType: "json",
        success: function (data) {
            //alert(data.message);
        },
        error: function (data) {
            //alert(data.message);
        }
    });
};
```