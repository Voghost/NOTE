# 一. HTML  笔记

## 1. HTML的基本结构

### 1.1 (html5) 基本结构

```html
<!--文档申明，申明当前网页的版本-->
<!doctype html>

<!--html的 根标签(元素，网页中所有元素都要写在里面)-->
<html>

<!--网页头部，不会直接出现在网页中，帮助浏览器或搜索引擎解析网页-->
<head>

<!--meta 标签用来设置网页的元素数据，这里charset用来设置字符集，避免乱码-->
 <meta charset="uft-8"/>

<!--浏览器标题页，搜索引擎主要根据这个判断-->
 <title>标题</title>
</head>

<!--html子集，网页主题，可见内容写在里面-->
<body>
 <h1>something</h1>
</body>
</html>
```

## 2. HTML 自结束标签和注释

### 2.1 自结束标签

```html
<h1>something</h1> <!--成对出现 h5 推荐使用-->

<!--自结束标签-->
<img/>
<input/>
```

### 2.2 注释

```html
<!--这是一个注释-->
```

## 3 HTML 标签中属性

```html
<h1> 这是我的<font color="red" size'5''>第三个</font></h1>
```

- 属性：
  - 在开始标签中使用
  - 属性是一个名值对 : `<font color="red">something</font>`
  - 用来设置标签中内容如何显示
  - 属性值何以单引号或双引号

## 4. HTML 实体

- 一些特殊符号不能解析
  - 例如： 多个空格解析为一个空格，字母两边的大于小于号(`c<a>b`)
- 需要用实体代替这些特殊符号:
- 常用实体:
  - `&nbsp;` 空格
  - `gt;` 大于号
  - `lt;` 小于号
  - `copy;` 版权符号

## 5. HTML 常用标签

### 分类

- **1. 块元素**(block element)
  - 在网页中一般通过块元素布局
- **2 .行内元素**(inline element)
  - 行内元素主要用来包裹文字
- 注意:
  - 一般情况往**块元素**中放**行内元素**
  - 块元素中基本什么都能放
  - 特例: p元素(块元素)中不能放任何块元素

### 5.1 meat 标签

```html
<meta charset = "utf-8">
<!--关键字-->
<meta name="keywords" content="HTML5,前端，CSS3">

<!--描述 ，搜索引擎显示网页面的描述-->
<meta name="description" content"网站的描述词">

<!--重定向到百度 3秒后-->
<meta http-equiv="refresh" content"3;url=https://www.baidu.com">

```

- meta 用来是指网页中的一些元数据，元数据不是给用户看
- meta 属性：
  - charset:  指定的数据的名称
  - name:  指定的名称
    - name的属性:
      - keywords 关键字
      - description 网页描述
    - content:  指定的数据的内容
    - 如 <meta name="keywords" content="something1,something2,..."> 表示网页关键字
    - http-equiv:

### 5.2 标题标签 h1-h6

```html
<h1>一级标题</h1>
<h2>二级标题</h2>
<h3>三级标题</h3>
<h4>四级标题</h4>
<h5>五级标题</h5>
<h6>六级标题</h6>

```

- 标题一共有六级，从1-6重要性逐渐减小
- 一边情况下只有**一个**h1 (大标题)
- 一般用到h1-h3
- 属于: _块元素_ (block element 对占一行)

### 5.3 段落标签 p

```html
<p>这是一个段落</p>
```

- p标签属于块元素

### 5.4 hgroup标签

```html
<hgroup>
<h1>标题1</h1>
<h2>标题2</h2>
</hgroup>
```

- 用来为标题分组，可以将一组相关的标题同时放入到hgroup

### 5.5 em标签

```html
<p>今天天气<em>真</em>不错</p>
```

- 用户强调语气

### 5.6 strong 标签

```html
<p>今天天气<strong>真</strong>不错</p>
```

- 用于强调

### 5.7 blockquote 标签

```html
鲁迅说:
<blockquote>
这句活我没说过
</blockquote>
```

- 表示一个长引用

### 5.8 q 标签

```html
子曰: <q>something</q>
```

- 表示一个短引用

### 5.9 br标签

```html
行一
<br>
行二
```

- br 表示换行

### 5.10 div 标签  (主要)

- 块元素，用于布局，可代替5.12中所有语义化标签
- 经常、主要使用

### 5.11 span 标签 (主要)

- 行内元素，用于布局

### 5.12 语义化标签(用户布局)

#### 1. 列举

```html
<!--表示网页(或网页中某部分)头部-->
<header></header>

<!-- 表示网页中主体部分(一个网页中只有一个)-->
<main></main>

<!-- 表示网页(或网页中某部分)底部-->
<footer></footer>

<!-- 表示导航-->
<nav></nav>

<!-- 表示和主体相关的其他内容-->
<aside></aside>

<!-- 表示一个独立的文章-->
<article></article>

<!-- 当上述标签都不能用时用section标签-->
<section></section>
```

### 5.13列表标签

```html
<!--无序列表(用的最多)-->
<ul>
<li>序列1</li>
<li>序列2</li>
<li>序列3</li>
</ul>

<!--有序列表-->
<ol>
<li>序列1</li>
<li>序列2</li>
<li>序列3</li>
</ol>

<!--定义列表(少用)-->
<dl>
<dt></dt>
<dd></dd>
<dd></dd>
</dl>
```

- 分类

1. **无序列表 ul (用的最多)**
2. 有序列表 ol
3. 定义列表 dl

- 列表之间可以互相嵌套

```html
<ul>
<li>
a
<ul>
<li>序列1</li>
<li>序列2</li>
<li>序列3</li>
</ul>
</li>
</ul>

```

### 5.13 超链接

```html
<!--外部地址-->
<a href="https://www.baiu.com">超链接1</a>

<!--相对路径-->
<a href="/path/to/file.html/">超链接1</a>


<!--默认值 在当前页面中打开超链接-->
<a href="url" target="_self">超链接</a>

<!--在新的页面中打开-->
<a href="url" target="_blank">超链接</a>

```

- target 属性:

 1. 属性:\_self 在当前页面打开
 2. 属性:\_blank 在新的页面打开

- 特殊用法 :

 ```html
 <a href="#buttom">去buttom处</a>
 <a id="buttom" href="#">去顶部</a>

 <!--什么都不会做-->
 <a href="javascript" >朝鲜接</a>
 ```

### 5.14 图片标签 img

```html
<img src="path/to/file/picture.file" alt="图片描述">
<img width="200" src="url" alt="图片描述">
```

- 属性:

1. src属性  表示图片所在位置 可以是url，文件路径
2. alt属性  图片的描述
3. height width 属性  分别表示高度(H)和宽度(W)
	- 只改一个，另一个属性会等比例变小
4. 注意 pc 端 不建议直接修改图片大小，应先修改图片大小，再引用 ,不过移动端，将大图缩小

### 5.15 内联框架 iframe

```html
<iframe src="https://www.qq.com" width="800" height="600"i frameborder="0"><iframe>
```

- 在网页中出现一个窗口，嵌套另一个网页
- 属性:
  - src 表示哟啊引入的网页的路径
  - frameborder 表示框架的边框

### 5.16 音、视频标签

#### 1. audio 标签

#### 2. video 标签

