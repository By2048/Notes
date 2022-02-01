
https://masuit.com/111
- 选取DOM元素
$('tagName') 、$('.class') 、$('#id') 和 $'.class #id') 相当于 document.querySelector('')。它返回选择器在 DOM 中匹配到的第一个元素。

你可以使用 $$(‘tagName’) 或 $$(‘.class’) 构建特殊的选择器来选取 DOM 中所有匹配的元素。这会把结果放入一个数组。

举个例子，$$(‘.className’) 将给你返回所有 class 为 className 的元素，$$(‘.className’)[0] 和 $$(‘.className’)[1] 分别给你返回第一个和第二个元素。



- 将你的浏览器变成编辑器 `document.body.contentEditable=true`
- 查找DOM中元素关联的事件

getEventListeners($(‘selector’)).eventName[0].listener
这将展示与特定事件相关联的监听器。eventName[0] 是一个包含所有特定事件的数组。比如：

getEventListeners($(‘firstName’)).click[0].listener
它会展示 ID 为「firstName」元素的点击事件所关联的监听器。

- 监控事件
如果你想在 DOM 中特定元素绑定的事件执行时监控它们，你可以通过控制台中完成。你可以使用很多不同的命令来监控部分或全部事件：

monitorEvents($(‘selector’)) 能够监控你所选取元素所关联的所有事件，当事件触发时，在控制台打印它们。比如 monitorEvents($(‘#firstName’)) 会打印 ID 为「firstName」的元素绑定的所有事件。
monitorEvents($(‘selector’),’eventName’) 将打印元素绑定的特定事件。你可以将事件名字作为参数传入函数。它将打印特定元素绑定的特定事件。比如，monitorEvents($(‘#firstName’),’click’) 会打印 ID 为「firstName」的元素绑定的点击事件。
monitorEvents($(‘selector’),[‘eventName1′,’eventName3’,…]) 会根据你的要求打印多个事件。传递参数包含所有事件的字符串数组，而不是单个事件名字。比如，monitorEvents($(‘#firstName’),[‘click’,’focus’]) 会打印 ID 为「firstName」的元素绑定的点击事件和焦点事件。
unmonitorEvents($(‘selector’)) ：这个会停止监视和在控制台打印事件。

5. 查询代码块执行时间

console.time('myTime'); //Starts the timer with label - myTime
console.timeEnd('myTime'); //Ends the timer with Label - myTime


console.time('myTime'); //Starts the timer with label - myTime
for(var i=0; i < 100000; i++){
  2+4+5;
}
console.timeEnd('mytime'); //Ends the timer with Label - myTime
//Output - myTime:12345.00 ms
1. 将变量里的值排列成表格 `console.table(variableName)`

2. 检查DOM中的元素
你可以直接在控制台中检查元素：

inspect($(‘selector’)) 会检查与选择器匹配的元素，并切换 Chrome 开发者工具到元素标签页。举个例子，inspect($(‘#firstName’)) 检查 ID 为「firstName」的元素，inspect($(‘a’)[3]) 检查 DOM 中第 4 个锚点元素。

$0、$1、$2 等等能帮助你取到最近检查的元素。比如，$0 给你返回上次检查的 DOM 元素，$1 返回上上次检查的 DOM 元素。

8. 列举元素的属性
你可以在控制台中做以下事情来列举一个元素的所有属性。

dir($(‘selector’)) 返回一个对象和与其 DOM 元素关联的所有属性。你可以展开它查看细节。

9. 检索最近一个结果的值
你可以把控制台当做计算器。一旦你这么做，你可能需要在计算中使用上一次的计算结果。下面是如何从内存中取到上一次计算的结果。

 $_
就像下面这样：

2+3+4
9 //- The Answer of the SUM is 9
$_
9 // Gives the last Result
$_ * $_
81  // As the last Result was 9
Math.sqrt($_)
9 // As the last Result was 81
$_
9 // As the Last Result is 9
10. 清空控制台和内存
如果你想清空控制台和内存，只需要输入：

clear()
然后敲回车键。就是酱紫。

这是使用 Chrome JavaScript 控制台的几个例子。我希望这些小贴士能让你的生活更美好。