#### Controllers
``` C#
public ActionResult Login()
{
    ViewBag.LoginState = "befor";
    return View();
}
[HttpPost]
public ActionResult Login(FormCollection formCollection)
{
    string email = formCollection["inputEmailName"];
    string password = formCollection["inputPasswordName"];
    ViewBag.LoginState ="after..."+email;
    return View();
}

```

#### View

```HTML
<body>
    <div id="loginState">
        @ViewBag.LoginState
    </div>
    <div>
        @*<form action="/account/login" method="post" class="form-horizontal" role="form">*@
        @using (Html.BeginForm("login", "Account", FormMethod.Post))
        {
            <p>Email</p>
            <input type="email" id="inputEmail" placeholder="Email" name="inputEmailName">
            <br>
            <p>Password</p>
            <input type="password" placeholder="Input Password ..." id="inputPassword" name="inputPasswordName">
            <br>
            <button type="submit">Sign in</button>
        }
        @*</form>*@
    </div>
</body>

```