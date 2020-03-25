[原始博客 链接](https://yrom.net/)
#### Android - Button(按钮)的响应点击事件的4种写法

Button控件setOnclickListener(View.OnClickListener listener)来接收一个点击事件的监听器



然后注册到按钮上
```java
btn.setOnclickListener(new MyOnClickListener ());
```
自定义一个点击事件监听器类让其实现View.OnClickListener的onClick(View v)方法
```java
private class MyOnClickListener implements View.OnclickListener{
     public void onClick(View v){
     ...
     }
}
```

当监听器只适用一个按钮时，可以将上面一个方法简化：
```java
btn.setOnclickListener(new View.OnClickListener (){
     public void onClick(View v){
     ...
     }    
});
```
将当前Activity去实现View.OnClickListener

```java
// 在Activity中实现其onClick()方法。这样可以使多个按钮复用一个监听器。
// 注册监听时，只需将当前对象(this)给按钮即可：
btn.setOnclickListener(this);
```
Tips：用switch-case针对各个Button的id来做相应的响应:
```java
public void onClick(View v){
     switch(v.getId()){
     case R.id.btn_login:
     login();
     break;
     case R.id.btn_regist:
     regist();
     break;
     default:
     doSomething();
     break;
     }
}
```
在布局文件中显式指定按钮的onClick属性
对应Activity的布局文件加入形如：
```xml
<Button
  android:onClick="click"
  android:layout_width="wrap_content"
  android:layout_height="wrap_content"
  android:text="@string/btn_text" />
```
这样按钮点击时会利用反射的方式调用对应Activity中的click()方法：
```java
public void click(View v){
...
}
```

一个Button只能有一个onClick属性值，一个click()方法可以赋给多个Button。
在click()方法中可以针对Button的Id来做响应，参见上面的Tips。