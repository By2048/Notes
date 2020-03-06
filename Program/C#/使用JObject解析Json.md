
添加引用：using Newtonsoft.Json.Linq;


```csharp
JObject _jObject = JObject.Parse("{'ID':'001','Name':'test','Mark':'Hello Word'}");  
   
foreach (JProperty item in _jObject.Children())  
{  
     str.Append(item.Name + "---" + item.Value+"\n");  
}  
   
/**************************************/  
   
_jObject = JObject.Parse("{ID:{ID1:{ID2:'value',name:'valueName'}},'Name':'test','Mark':'Hello Word'}");  
var _value = _jObject["ID"]["ID1"]["ID2"].ToString();    //取值
```


```csharp
JArray ja = JArray.Parse(@"[{""Name"":""lj"",""Age"":12}, {""Name"":""cy"",""Age"":28}]");
for (int i = 0; i < ja.Count; i++)
{
    JObject jo = JObject.Parse(ja[i].ToString());
    Console.WriteLine(jo["Name"].ToString());
    Console.WriteLine(jo["Age"].ToString());
}
Console.ReadKey();
```