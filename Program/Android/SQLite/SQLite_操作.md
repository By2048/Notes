[引用  SQLite 操作](http://blog.csdn.net/hosterZhu/article/details/6133927)

```java
//创建数据库
SQLiteDatabase db = openOrCreateDatabase("test.db", Context.MODE_PRIVATE, null);
db.execSQL("DROP TABLE IF EXISTS person");
//_id 主键 自整张
db.execSQL("CREATE  TABLE  person (_id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR, age SMALLINT,info VARCHAR)");
//使用execSQL执行数据库语句
db.execSQL("insert into person values(NULL,?,?,?)",new Object[]{"text_name",100,"text_info"});
db.close( );
```

>Android提供了一个名为SQLiteDatabase的类，该类封装了一些操作数据库的API，使用该类可以完成对数据进行添加(Create)、查询(Retrieve)、更新(Update)和删除(Delete)操作（这些操作简称为CRUD）。对SQLiteDatabase的学习，我们应该重点掌握execSQL()和rawQuery()方法。 execSQL()方法可以执行insert、delete、update和CREATE TABLE之类有更改行为的SQL语句； rawQuery()方法用于执行select语句。 
execSQL()方法的使用例子： 
```java
SQLiteDatabase db = ....; 
db.execSQL("insert into person(name, age) values('测试数据', 4)"); 
db.close(); 
```
执行上面SQL语句会往person表中添加进一条记录，在实际应用中， 语句中的“测试数据”这些参数值会由用户输入界面提供，如果把用户输入的内容原样组拼到上面的insert语句， 当用户输入的内容含有单引号时，组拼出来的SQL语句就会存在语法错误。要解决这个问题需要对单引号进行转义，也就是把单引号转换成两个单引号。有些时候用户往往还会输入像“ & ”这些特殊SQL符号，为保证组拼好的SQL语句语法正确，必须对SQL语句中的这些特殊SQL符号都进行转义，显然，对每条SQL语句都做这样的处理工作是比较烦琐的。 SQLiteDatabase类提供了一个重载后的execSQL(String sql, Object[] bindArgs)方法，使用这个方法可以解决前面提到的问题，因为这个方法支持使用占位符参数(?)。使用例子如下： 
```java
SQLiteDatabase db = ....; 
db.execSQL("insert into person(name, age) values(?,?)", new Object[]{"测试数据", 4});  
db.close(); 
```
execSQL(String sql, Object[] bindArgs)方法的第一个参数为SQL语句，第二个参数为SQL语句中占位符参数的值，参数值在数组中的顺序要和占位符的位置对应。 


```java
//查询数据库
private void PrintInfo()
{
    String info="";
    SQLiteDatabase db = openOrCreateDatabase("test.db", Context.MODE_PRIVATE, null);
    Cursor cur = db.rawQuery("SELECT  *  FROM  person " ,  null ) ;
    while (cur.moveToNext())
    {
        String name=cur.getString(cur.getColumnIndex("name"));
        int age=cur.getInt(cur.getColumnIndex("age"));
        info+="[Name]\t\t"+name+" \t\t[Age]\t\t"+age+"\n";
    }
    cur.close(  );
    db.close( );
    Toast.makeText(Main2Activity.this, info, Toast.LENGTH_LONG).show();
}
```