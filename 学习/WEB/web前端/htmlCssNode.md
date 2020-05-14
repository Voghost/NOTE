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
* 属性： 
	* 在开始标签中使用
	* 属性是一个名值对 : `<font color="red">something</font>`
	* 用来设置标签中内容如何显示
	* 属性值何以单引号或双引号


## 4. HTML 实体
* 一些特殊符号不能解析
	* 例如： 多个空格解析为一个空格，字母两边的大于小于号(`c<a>b`)
* 需要用实体代替这些特殊符号:
* 常用实体:
	* `&nbsp;` 空格
	* `gt;` 大于号
	* `lt;` 小于号
	* `copy;` 版权符号


## 5. HTML 常用标签
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

* meta 用来是指网页中的一些元数据，元数据不是给用户看
* meta 属性：
	* charset:  指定的数据的名称
	* name:		指定的名称
		* name的属性:
			* keywords 关键字
			* description 网页描述
		* content:  指定的数据的内容
		* 如 <meta name="keywords" content="something1,something2,..."> 表示网页关键字
		* http-equiv: 

### 5.2 标题标签 h1-h6
```html
<h1>一级标题</h1>
<h2>二级标题</h2>
<h3>三级标题</h3>
<h4>四级标题</h4>
<h5>五级标题</h5>
<h6>六级标题</h6>

```
* 标题一共有六级，从1-6重要性逐渐减小
* 一边情况下只有**一个**h1 (大标题)
* 一般用到h1-h3
* 属于: *块元素* (block element 对占一行)

### 5.3 段落标签 p
```html
<p>这是一个段落</p>
```
* p标签属于块元素

### 5.4 hgroup标签
```html
<hgroup>
	<h1>标题1</h1>
	<h2>标题2</h2>
</hgroup>
```
* 用来为标题分组，可以将一组相关的标题同时放入到hgroup

### 5.5 em标签
```html
<p>今天天气<em>真</em>不错</p>
```
* 用户强调语气

### 5.6 strong 标签
```html
<p>今天天气<strong>真</strong>不错</p>
```
* 用于强调
### 5.7 blockquote 标签
```html
鲁迅说:
<blockquote>
	这句活我没说过
</blockquote>
```
* 表示一个长引用

### 5.8 q 标签
```html
子曰: <q>something</q>
```
* 表示一个短引用

### 5.9 br标签
```html
行一
<br>
行二
```
* br 表示换行
