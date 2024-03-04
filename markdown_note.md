# Markdown笔记记录(个人向)

# 1.标题编辑
- 用#加空格表示标题
-  用#用的越多标题级别越小，如“### xxx”表示三级标题，字号比一级小两级

- 也可以用文字下加虚线的方式来实现一二级标题，加====是一级标题，加----是二级标题
  
  如以下表示
```
一级标题 
======== 
二级标题
--------
```
- 结果为：

一级标题 
======== 
二级标题
--------

# 2.正文
- 直接写就是正文，不用符号
  
如这就是正文的情况。

# 3.1代码块
- markdown可以直接表示代码块，它们在正文中会用不透明的背景框起来
  
如下边这个
```C++
#include<iostream>
using namespace std;

int main(){
    cout<<"Hello World!"<<endl;
    return 0;
}
```
- 用两行```来框住代码部分。如果写的代码是某种语言，则可以在第一行的末尾加上这种语言的名字，则vscode会自动执行语言相应的高亮语法，把相应的字段用颜色表示出来
如下边这个
```java
public class MyClass {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}
```
-或者可以靠代码块换行并缩进一个tab或者至少4个空格来使用  
如下边这个   

    <html>
        <head>
        </head>
    </html>





# 3.2行内代码
- 如果要表示说明字段内的代码，则可以用两个" ` "框住对应的代码以表示输出

如下边这个：

我要说明的是库函数`vector`,它是使用stl库中的vector对象的前提。

# 4.列表
- 在markdown中，有向列表可以用"数字. "为前缀表述，而且会自然递进补位表示且分行
- 基本在markdown中的前缀都要用空格和内容隔开，否则可能会失效
- 系统自动编译的优先顺序是先1./2./3. 再i./ii./ 最后a./b./c./，用法是换行之后用tab缩进再开始
  
如以下情况

1. 大白菜
2. 大大白菜
    - 巨白菜
3. 大大大白菜

- 也可以用-、+、*来表示无序列表，但每一次只能使用一种。它本身表示的内容重要性不分先后。无向
  
# 5.加粗和倾斜
- 用两个*框住文本来表示倾斜，用两个**框住文本来表示加粗
- 用两个***来表示又加粗又倾斜

如下边的几个内容

1. 大白菜
2. *大白菜*
3. **大白菜** 

# 5.换行
- 可以用文本后加两个空格再加一个换行来表示markdown中的换行
- 也可以用文本间空开一行来表示换行

# 6.引用
- 在引用的内容之前加上>并隔开即可表示引用；若要在引用中分段则空出一行并在段首加>
  
如以下部分
> Dorothy followed her through many of the beautiful rooms in her castle.
>
> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.

- 如果要在引用段中嵌套引用，则在引用中用>>隔开说明
  
如以下部分
> Dorothy followed her through many of the beautiful rooms in her castle.
>
>> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.
- 若在引用中使用其他内容，则用>后正常使用相关语法。  
>大白菜
>- 大大白菜
>>* 大大大白菜

# 7.分割线
- 要创建分割线，要在单独一行上使用三个或多个(***)、(---)、(___)，且不能包含其他内容。
  
如以下内容  
***
---
___  
都可以表示分割线

# 8.超链接  
- 格式为  
`[超链接名(自己取的)]("超链接地址或url")`

如下面的例子 
```
[我的个人博客网址]("https://lin-nanxing.github.io")  
[markdown官网]("https://markdown.com.cn")
``` 

- 也可以给超链接加上title，也就是在你的鼠标停到那个超链接名上边时，会浮现一个title做标志或者说明。  
格式如下`
[超链接名]("url或者网页地址" "title内容")`

如以下例子  
```
[这是一个超链接地址]("https://www.bilibili.com" "阿b") 
```

- 上述格式在html上的实现格式为  
  ```html
  <a href="超链接地址" title=”超链接title“>
    超链接提示名
  </a>
  ```

- 使用尖括号包含可以很方便地把url或者email变成可以点击的链接  

如以下的例子  
~~~
<https://lin-nanxing.github.io>

~~~

- 同样可以对链接进行修饰，例如：  
  * 将链接表示为代码块，则用反引号包括超链接名
    
  * 将超链接加粗或者倾斜  


- 还可以在方括号内容后隔开添加方括号补充作为链接的引用说明，  

如以下例子  
```
[B站]("https://www.bilibili.com") [1]`
或者  
[1]:[bilibili]("https://bilibili.com")  
```

- 在有些情况下，不同的markdown编译器对空格的说明情况不同，***请尽量用%20替代空格输出***,虽然在vscode中空格还是可以用的

# 9.插入图片
- 在markdown中添加图片，可以像超链接一样，只是要在说明格式之前加上感叹号！

  格式为`![图片名](图片地址 "图片title")`  

例如以下为渲染效果：    
```
![美丽的少女](D:\Pictures\MoeGrils\d030806aly1h6l6raef0qj215o15oq5n.webp "my wife")
```

- 同样，我们可以把图像作为链接的入口，即对图片加上超链接。具体实现是通过在图片部分外加超链接url的形式实现。

  格式为`[![图片名](图片地址 "图片title")](图片超链接)`

如以下的例子 
```
[![美丽的少女](D:\Pictures\MoeGrils\d030806aly1h6l6raef0qj215o15oq5n.webp "my wife")](https://www.pixiv.com)`
```   

# 10.转义字符
- 由于markdown中很多符号本程序重载使用，所以若要在文本中实际使用相关字符，需要对字符做转义描述。
- 转义时，在字符前面添加反斜杠字符\
  
  如以下例子  
  \#大白菜
- 可以转义的字符有：\ , `  ,  *  ,  _  ,  {} ,  [] ,  () ,  #  ,  +  ,  -  ,  .  ,  !  ,  |
- 关于一部分特殊的字符，要将其转义，必须使用实体的形式。像是html的< 和& ，必须写作`&lt`和`&amp;`,
  这种情况在你使用html中用的非常多。

如下例子  
  &lt;和&amp;  
  `http://images.google.com/images?num=30&q=larry+bird `是错的，`http://images.google.com/images?num=30&amp;q=larry+bird `是对的。

也就是你写成&系统自动映成`&amp;`,而要表示&反而要写成`&amp;`来表示。**你要手动把所有的`<`和 `&`用名字手动表示**  
# 11.行级内联标签
- markdown支持内嵌行内标签，如`<span>`、`<cite>`、`<del>`、`<a>`、`<img>`和`<image>`不受限制
  
  在使用元素时，若要更改元素内容，用html标签更改更方便。

- 一些区块标签，如`dib` 和`table`  和`<p>` 也是可以使用的，markdown会自动识别这些区块元素，但***这些元素的开始和结尾标签不可以用tab或者空白来进行缩进，只需要在代码块前后加上空行即可***
  
  如以下的例子  
```html
  <table>
    <te>
      <td>Foo</td>
    </tr>
  </table>
```
  演示为

  <table>
    <te>
      <td>Foo</td>
    </tr>
  </table>

- 故请尽量前后选择使用分行来与其他内容进行分隔。

# 12.表格
- 用三个或多个连字符`---`来创建每一列的标题(表头)，用管道符号`|`来分割每列的元素，则可以构建出相关的表格。
  
如以下例子  
```
|pig|sheep|
|---|---|
|60kg|35kg|
|2500￥|3000￥|
```
输出的结果为  
|pig|sheep|
|---|---|
|60kg|35kg|
|2500￥|3000￥|

- 除此之外，还可以通过更改`---|---`的左右长度比例来控制单元格的宽度

如以下例子  
```
| Syntax | Description |
| --- | ------------ |
| Header | Title |
| Paragraph | Text |
```
输出结果是
| Syntax | Description |
| --- | ----------- |
| Header | Title |
| Paragraph | Text |

- 还可以通过在分割线的两端添加`:`来使列中的文本对齐到左侧、右侧或中间。`:---:`是居中,`:---`是左侧对齐,`---:`是右侧对齐

如以下的例子  
```
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |
```
输出结果是  
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      | 

- 表格中的内容可以是文本、代码或者单词但不能是标题，块引用，列表，html标签或者是图像。
-除此之外，还可以用html代码`&#124;`来代表竖线字符`|`. 

# 13.代码块围栏
- markdown的基本语法允许用` ``` `  和` ~~~ `上下包含的格式来使用代码块，且代码块中的某些需要转义的符号也可以使用反斜杠符号进行转义。


# 14.脚注
- 脚注用于添加注释和参考，而不会使得文档正文混淆
- 要创建脚注参考，可以在方括号`([^])`的尖号后添加插入符号和标识符。***标识符可以是数字或者单词***，但不能包含空格或制表符。

例如以下的例子：  
Here's a simple footnote,[^1] and here's a longer one.[^bignote]

[^1]: This is the first footnote.

[^bignote]: Here's one with multiple paragraphs and code.

    Indent paragraphs to include them in the footnote.

    `{ my code }`

    Add as many paragraphs as you like.

[^2]: This is the second footnote.

# 15.标题链接
- 和图片类似，可以用`(url)`的方式补充到后边
- 格式为`[标题信息](website url)`， 
  
  如`[bilibili](https://www.bilibili.com)`写作[bilibili](https://www.bilibili.com)

# 16.删除线
- 若要文本中间出现一条水平的删除线以指示哪一部分是错误的，则可以使用两个波浪号~~左右框住单词    
  如以下例子：  
  `~~地平说~~，地球说`  
  输出结果是  
  ~~地平说~~，地球说

# 17.任务列表
- 在任务列表项前添加`- []`以创建任务列表；再在`[]`内添加`x`则可以表示出被选中的复选框 
  
  如以下的例子
  ```
  - [x] a pig 
  - [x] a cat 
  - [ ] a sheep
  - [ ] 20 ducks
  ```

  输出的结果为  
  - [x] a pig 
  - [x] a cat 
  - [ ] a sheep
  - [ ] 20 ducks
  
# 18.emoji输入
- markdown支持输入emoji表情，并且有两种方法：
  
  1. 将表情符号复制到markdown格式的文本中(可以简单地从[Emojipedia](https://www.emojipedia.org)中查找并下载。 
  2. 直接键入emoji的shortcode。许多markdown编辑器支持用`：`开头和结尾，并包含表情符号的名称。
   如以下的例子 
  ```
  :joy: 
  :tent:  
  :pig:
  ``` 
  输出结果是  
  :joy:   
  :tent:  
  :pig: （貌似vscode不支持）  

# 19.自动url转链接
  - 某些编辑器支持直接转为链接访问，但vscode不支持，故此处无用。

# 20.数学公式的输入
- 在markdown中插入数学公式的语法是  
  `$数学公式$`

  如以下的例子：  
  1. 质能方程为$E=mc^2$
  2. 欧拉公式等于$e^(i\pi)+1=0$
  ---

- *具体的公式使用逻辑还要看Latex的相关内容后使用，这会在Latex的笔记中呈现*

# 21.视频插入
```html
<iframe src="<url_address>" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
```

# 22.绘制流程图
- 可以复制以下代码使用 typora 的源码模式粘贴到markdown中查看效果：
