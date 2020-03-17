
<style>
    .left {
        float: left;
        width: 49.5%;
    }
    
    .right {
        float: right;
        width: 49.5%;
    }
        
    .clear {
        clear: both;
    }
</style>

<div class="left">

```

# 1

## 2

### 3

#### 4

##### 5

```

</div>

<div class="right">

# 1
## 2
### 3
#### 4
##### 5

</div>

<div style="clear:both"></div>

-------------------------------------------------------------------------------------------------------------

<div class="left">

```
1
------------

2
************

3
____________

4 **粗体**

5 __粗体__

6 *斜体*

7 _斜体_

8 **粗体**

9 ~~删除线~~

```

</div>


<div class="right">

1
------------

2
************

3
____________

4 **粗体**

5 __粗体__

6 *斜体*

7 _斜体_

8 **粗体**

9 ~~删除线~~

    
</div>

<div style="clear:both"></div>


---------------------------------------------------------------------------------------------------------------



<div class="left">

```
> 引用 
>> 引用 
>>> 引用 
>>>> 引用 
>>>>> 引用


> 引用

>> 引用


> 引用  `www.github.com`     
> 引用
```

</div>


<div class="right">

> 引用 
>> 引用 
>>> 引用 
>>>> 引用 
>>>>> 引用


> 引用

>> 引用


> 引用  `www.github.com`     
> 引用
</div>

<div style="clear:both"></div>


-----------------------------------------------





<div class="left">

```
* 任务项
* 任务项
    * 任务项
    * 任务项

- 任务项
- 任务项
    - 任务项
    - 任务项

1. 任务项
    1. 任务项
    2. 任务项
2. 任务项
3. 任务项

- [x] 任务项
- [ ] 任务项
```

</div>


<div class="right">

* 任务项
* 任务项
    * 任务项
    * 任务项

- 任务项
- 任务项
    - 任务项
    - 任务项

1. 任务项
    1. 任务项
    2. 任务项
2. 任务项
3. 任务项

- [x] 任务项
- [ ] 任务项

</div>

<div style="clear:both"></div>

---------------------------------------------------------------------------------------------------------



<div class="left">

```
单行代码 `print('Hello')`

    def somefunc(param1='', param2=0):
        '''A docstring'''
        if param1 > param2: # interesting
            print ('Greater')
        return (param2 - param1 + 1) or None

\```
def somefunc(param1='', param2=0):
    '''A docstring'''
    if param1 > param2: # interesting
        print ('Greater')
    return (param2 - param1 + 1) or None
\```

\```py
def somefunc(param1='', param2=0):
    '''A docstring'''
    if param1 > param2: # interesting
        print ('Greater')
    return (param2 - param1 + 1) or None
\```
```

</div>


<div class="right">

单行代码 `print('Hello')`


    def somefunc(param1='', param2=0):
        '''A docstring'''
        if param1 > param2: # interesting
            print ('Greater')
        return (param2 - param1 + 1) or None


```
def somefunc(param1='', param2=0):
    '''A docstring'''
    if param1 > param2: # interesting
        print ('Greater')
    return (param2 - param1 + 1) or None
```


```py
def somefunc(param1='', param2=0):
    '''A docstring'''
    if param1 > param2: # interesting
        print ('Greater')
    return (param2 - param1 + 1) or None
```

</div>

<div style="clear:both"></div>

----------------------------------------------------------------------------------




--------------------------------------------------------------------

```
:--- 代表左对齐
:--: 代表居中对齐
---: 代表右对齐
```


<div class="left">

```
<style>
    #tb{
        background-color:blue;        
    }
    #tr td{
        background-color:blue;                
    }
</style>
<table id="tb">
    <tr>
        <td>表格测试</td>
        <td>表格测试</td>
    </tr>
      <tr>
        <td>表格测试</td>
        <td>表格测试</td>
    </tr>
</table>
```

```
|                      |                |
|----------------------|----------------|
| Ctrl + Shift + W     | 关闭窗口/实例  |
| Ctrl + Shift + P，F1 | 显示命令面板   |
| Ctrl + Shift + N     | 新窗口/实例    |
| Ctrl + P             | 快速快开       |
| Ctrl + K Ctrl +S     | 显示所有快捷键 |
```

</div>


<div class="right">

<style>
    #tb{
        background-color:blue;        
    }
    #tr td{
        background-color:blue;                
    }
</style>
<table id="tb">
    <tr>
        <td>表格测试</td>
        <td>表格测试</td>
    </tr>
      <tr>
        <td>表格测试</td>
        <td>表格测试</td>
    </tr>
</table>

|                      |                |
|----------------------|----------------|
| Ctrl + Shift + P，F1 | 显示命令面板   |
| Ctrl + P             | 快速快开       |
| Ctrl + Shift + N     | 新窗口/实例    |
| Ctrl + Shift + W     | 关闭窗口/实例  |
| Ctrl + K Ctrl +S     | 显示所有快捷键 |


</div>

<div style="clear:both"></div>



--------------------------------------------------------------------


```
转义字符
\
`
*
_
{}
[]
()
#
+
-
.
!
```


-----------------------------



<div class="left">

```
<details open> <summary> <code>排序脚本</code> </summary>

\```py
student_tuples = [
    ('john', 'A', 15),
    ('jane', 'B', 12),
    ('dave', 'B', 10),
]
sorted(student_tuples, key=lambda student: student[2])
[('dave', 'B', 10), ('jane', 'B', 12), ('john', 'A', 15)]
\```

</details>
```

</div>

<div class="right">

<details open> <summary> <code>排序脚本</code> </summary>

```py
student_tuples = [
    ('john', 'A', 15),
    ('jane', 'B', 12),
    ('dave', 'B', 10),
]
sorted(student_tuples, key=lambda student: student[2])
[('dave', 'B', 10), ('jane', 'B', 12), ('john', 'A', 15)]
```

</details>

</div>

<div style="clear:both"></div>






--------------------------------------------------------------


<div class="left">

```
1
[Google](http://www.google.com/)

2
[icon.png](./images/icon.png)

3
[Google](http://www.google.com/ "Google1234")

4
[Google][]

5
[Google]: http://www.google.com/ "Google"

6
<http://www.google.com/>

7
<123@email.com>

8
![GitHub](https://avatars2.githubusercontent.com/u/3265208?v=3&s=100 "GitHub,Social Coding")

9
![GitHub][github]

10
[github]: https://avatars2.githubusercontent.com/u/3265208?v=3&s=100 "GitHub,Social Coding"

11
<img src="https://avatars2.githubusercontent.com/u/3265208?v=3&s=100" alt="GitHub" title="GitHub,Social Coding" width="50" height="50" />

```

</div>


<div class="right">

1
[Google](http://www.google.com/)

2
[icon.png](./images/icon.png)

3
[Google](http://www.google.com/ "Google1234")

4
[Google][]

5
[Google]: http://www.google.com/ "Google"

6
<http://www.google.com/>

7
<123@email.com>

8
![GitHub](https://avatars2.githubusercontent.com/u/3265208?v=3&s=100 "GitHub,Social Coding")

9
![GitHub][github]

10
[github]: https://avatars2.githubusercontent.com/u/3265208?v=3&s=100 "GitHub,Social Coding"

11
<img src="https://avatars2.githubusercontent.com/u/3265208?v=3&s=100" alt="GitHub" title="GitHub,Social Coding" width="50" height="50" />

</div>

<div style="clear:both"></div>



--------------------------------------------------------------


<span style="color:black; background-color:blue; font-size:30px;">
    MarkDown
</span>


```html
<style>
    .left {
        float: left;
        width: 49.5%;
    }
    .right {
        float: right;
        width: 49.5%;
    }
    .clear {
        clear: both;
    }
</style>

<div class="left">
</div>

<div class="right">
</div>

<div style="clear:both"></div>
```