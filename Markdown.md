
# 浮动布局

<div style="float:left;width:49.5%;">

## 方法一
```py
sorted({1: 'D', 2: 'B', 3: 'B', 4: 'E', 5: 'A'})
```

</div>


<div style="float:right;width:49.5%">

## 方法二
```py
a = [5, 2, 3, 1, 4]
a.sort()
```

</div>


<div style="clear:both"></div>

## 方法三
```py
student_tuples = [
    ('john', 'A', 15),
    ('jane', 'B', 12),
    ('dave', 'B', 10),
]
sorted(student_tuples, key=lambda student: student[2])
[('dave', 'B', 10), ('jane', 'B', 12), ('john', 'A', 15)]
```

<!-- ------------------------------------------------------------------------------------------------------------------------ -->

# 折叠显示

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


<!-- ------------------------------------------------------------------------------------------------------------------------ -->


:--- 代表左对齐
:--: 代表居中对齐
---: 代表右对齐

|   |   |
|---|---|
| 1 | 2 |

<table>
    <thead>
        <tr>
            <th colspan="2">The table header</th>
        </tr>
    </thead>
    <tbody>
<tr><td>

```py
student_tuples = [
    ('john', 'A', 15),
    ('jane', 'B', 12),
    ('dave', 'B', 10),
]
sorted(student_tuples, key=lambda student: student[2])
[('dave', 'B', 10), ('jane', 'B', 12), ('john', 'A', 15)]
```
</td><td>

```py
student_tuples = [
    ('john', 'A', 15),
    ('jane', 'B', 12),
    ('dave', 'B', 10),
]
sorted(student_tuples, key=lambda student: student[2])
[('dave', 'B', 10), ('jane', 'B', 12), ('john', 'A', 15)]
```
</td></tr>

</tbody>
</table>






<!-- ------------------------------------------------------------------------------------------------------------------------ -->


>也可以在引用中
>>使用嵌套的引用


[Google](http://www.google.com/)

[icon.png](./images/icon.png)

[Google](http://www.google.com/ "Google1234")

[Google][]

[Google]: http://www.google.com/ "Google"

<http://www.google.com/>

<123@email.com>


![GitHub](https://avatars2.githubusercontent.com/u/3265208?v=3&s=100 "GitHub,Social Coding")


![GitHub][github]

[github]: https://avatars2.githubusercontent.com/u/3265208?v=3&s=100 "GitHub,Social Coding"


<img src="https://avatars2.githubusercontent.com/u/3265208?v=3&s=100" alt="GitHub" title="GitHub,Social Coding" width="50" height="50" />
GitHub

*演示*

**演示**

__演示__

_演示_



 ~~删除线~~


 - [ ] Eat
- [x] Code
  - [x] HTML
  - [x] CSS
  - [x] JavaScript
- [ ] Sleep