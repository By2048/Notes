# XPath即为XML路径语言（XML Path Language），它是一种用来确定XML文档中某部分位置的语言。


## 选取节点
|   表达式     |   描述                                                         |
|   --------   |   ----------------------------------------------------------   |
|   nodename   |   选取此节点的所有子节点。                                     |
|   /          |   从根节点选取。                                               |
|   //         |   从匹配选择的当前节点选择文档中的节点，而不考虑它们的位置。   |
|   .          |   选取当前节点。                                               |
|   ..         |   选取当前节点的父节点。                                       |
|   @          |   选取属性。                                                   |

## 路径表达式以及表达式的结果
|   路径表达式        |   结果                                                                                             |
|   ---------------   |   ----------------------------------------------------------------------------------------------   |
|   bookstore         |   选取 bookstore 元素的所有子节点。                                                                |
|   /bookstore        |    选取根元素 bookstore。 注释：假如路径起始于正斜杠( / )，则此路径始终代表到某元素的绝对路径！    |
|   bookstore/book    |   选取属于 bookstore 的子元素的所有 book 元素。                                                    |
|   //book            |   选取所有 book 子元素，而不管它们在文档中的位置。                                                 |
|   bookstore//book   |   选择属于 bookstore 元素的后代的所有 book 元素，而不管它们位于 bookstore 之下的什么位置。         |
|   //@lang           |   选取名为 lang 的所有属性。                                                                       |


|   路径表达式                           |   结果                                                                                        |
|   ----------------------------------   |   -----------------------------------------------------------------------------------------   |
|   /bookstore/book[1]                   |   选取属于 bookstore 子元素的第一个 book 元素。                                               |
|   /bookstore/book[last()]              |   选取属于 bookstore 子元素的最后一个 book 元素。                                             |
|   /bookstore/book[last()-1]            |   选取属于 bookstore 子元素的倒数第二个 book 元素。                                           |
|   /bookstore/book[position()<3]        |   选取最前面的两个属于 bookstore 元素的子元素的 book 元素。                                   |
|   //title[@lang]                       |   选取所有拥有名为 lang 的属性的 title 元素。                                                 |
|   //title[@lang='eng']                 |   选取所有 title 元素，且这些元素拥有值为 eng 的 lang 属性。                                  |
|   /bookstore/book[price>35.00]         |   选取 bookstore 元素的所有 book 元素，且其中的 price 元素的值须大于 35.00。                  |
|   /bookstore/book[price>35.00]/title   |   选取 bookstore 元素中的 book 元素的所有 title 元素，且其中的 price 元素的值须大于 35.00。   |


|   通配符   |   描述                   |
|   ------   |   --------------------   |
|   *        |   匹配任何元素节点。     |
|   @*       |   匹配任何属性节点。     |
|   node()   |   匹配任何类型的节点。   |


|   路径表达式     |   结果                                |
|   ------------   |   ---------------------------------   |
|   /bookstore/*   |   选取 bookstore 元素的所有子元素。   |
|   //*            |   选取文档中的所有元素。              |
|   //title[@*]    |   选取所有带有属性的 title 元素。     |


|   路径表达式                        |   结果                                                                                  |
|   -------------------------------   |   -----------------------------------------------------------------------------------   |
|   //book/title | //book/price       |   选取 book 元素的所有 title 和 price 元素。                                            |
|   //title | //price                 |   选取文档中的所有 title 和 price 元素。                                                |
|   /bookstore/book/title | //price   |   选取属于 bookstore 元素的 book 元素的所有 title 元素，以及文档中所有的 price 元素。   |


|   轴名称               |   结果                                                       |
|   ------------------   |   --------------------------------------------------------   |
|   ancestor             |   选取当前节点的所有先辈（父、祖父等）。                     |
|   ancestor-or-self     |   选取当前节点的所有先辈（父、祖父等）以及当前节点本身。     |
|   attribute            |   选取当前节点的所有属性。                                   |
|   child                |   选取当前节点的所有子元素。                                 |
|   descendant           |   选取当前节点的所有后代元素（子、孙等）。                   |
|   descendant-or-self   |   选取当前节点的所有后代元素（子、孙等）以及当前节点本身。   |
|   following            |   选取文档中当前节点的结束标签之后的所有节点。               |
|   namespace            |   选取当前节点的所有命名空间节点。                           |
|   parent               |   选取当前节点的父节点。                                     |
|   preceding            |   选取文档中当前节点的开始标签之前的所有节点。               |
|   preceding-sibling    |   选取当前节点之前的所有同级节点。                           |
|   self                 |   选取当前节点。                                             |


<table>
    <tbody>
        <tr>
            <th>运算符</th>
            <th>描述</th>
            <th>实例</th>
            <th>返回值</th>
        </tr>
        <tr>
            <td>|</td>
            <td>计算两个节点集</td>
            <td>//book | //cd</td>
            <td>返回所有拥有 book 和 cd 元素的节点集</td>
        </tr>
        <tr>
            <td>+</td>
            <td>加法</td>
            <td>6 + 4</td>
            <td>10</td>
        </tr>
        <tr>
            <td>-</td>
            <td>减法</td>
            <td>6 - 4</td>
            <td>2</td>
        </tr>
        <tr>
            <td>*</td>
            <td>乘法</td>
            <td>6 * 4</td>
            <td>24</td>
        </tr>
        <tr>
            <td>div</td>
            <td>除法</td>
            <td>8 div 4</td>
            <td>2</td>
        </tr>
        <tr>
            <td>=</td>
            <td>等于</td>
            <td>price=9.80</td>
            <td>
                <p>如果 price 是 9.80，则返回 true。</p>
                <p>如果 price 是 9.90，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>!=</td>
            <td>不等于</td>
            <td>price!=9.80</td>
            <td>
                <p>如果 price 是 9.90，则返回 true。</p>
                <p>如果 price 是 9.80，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>&lt;</td>
            <td>小于</td>
            <td>price&lt;9.80</td>
            <td>
                <p>如果 price 是 9.00，则返回 true。</p>
                <p>如果 price 是 9.90，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>&lt;=</td>
            <td>小于或等于</td>
            <td>price&lt;=9.80</td>
            <td>
                <p>如果 price 是 9.00，则返回 true。</p>
                <p>如果 price 是 9.90，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>&gt;</td>
            <td>大于</td>
            <td>price&gt;9.80</td>
            <td>
                <p>如果 price 是 9.90，则返回 true。</p>
                <p>如果 price 是 9.80，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>&gt;=</td>
            <td>大于或等于</td>
            <td>price&gt;=9.80</td>
            <td>
                <p>如果 price 是 9.90，则返回 true。</p>
                <p>如果 price 是 9.70，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>or</td>
            <td>或</td>
            <td>price=9.80 or price=9.70</td>
            <td>
                <p>如果 price 是 9.80，则返回 true。</p>
                <p>如果 price 是 9.50，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>and</td>
            <td>与</td>
            <td>price&gt;9.00 and price&lt;9.90</td>
            <td>
                <p>如果 price 是 9.80，则返回 true。</p>
                <p>如果 price 是 8.50，则返回 false。</p>
            </td>
        </tr>
        <tr>
            <td>mod</td>
            <td>计算除法的余数</td>
            <td>5 mod 2</td>
            <td>1</td>
        </tr>
    </tbody>
</table>


