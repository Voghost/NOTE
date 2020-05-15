# CSS 笔记

## 1. css的三种形式
### 1.1 内联样式(行内样式)
```html
<p style="color:red; font-size:60px;">something</p>
```
* 在标签内使用样式
* 只能影响一个元素,**不方便**修改和创建
* 开发时**不要**使用内联样式

### 1.2 内部样式表 (学习时多用)
```html
<html>
	<head>
	<title>titleName</title>

<!--将所有p标签中元素改变-->
	<style>
	p{
		color:yellow;
		font-size:30px;

	}
	</style>
	</head>

	<body>
		<p>something01</p>
		<p>something01</p>
	</body>
<html>
```
* 将样式写入head中的style标签中
* 可以重复使用,修改全部只用修改一处
* 只能对一个网页使用，不能跨页面使用

### 1.3  外部样式 (开发推荐使用)

* 新建一个 cssName.css文件
```css
	p{
		color:yellow;
		font-size:30px;

	}
```
* 在html文件中
```html
<html>
	<head>
	<title>titleName</title>
	<!--通过link创建与css的联系-->
	<link rel="stylesheet" href="./cssName.css">
	</head>

	<body>
		<p>something01</p>
		<p>something01</p>
	</body>
<html>
```

* 通过link可以应用外部css资源
* html文档通过link连接后都能实现css的延时
* 将样式表写到外部css文件中，可以使用到浏览器的缓存机制从而加快访问

## 2.css 语法

### 在<style></style>中应该遵循css语法

### 2.1 注释
```css
/*这是一个注释*/
```

### 2.2 选择器
```css
p{
	color:blue;
	font-size:20px;
}
```
* 如上面的例子：
	* p为选择器
	* 花括号中的 color font-size为申明块
#### 2.2.1 元素选择器
```css
p{
	color=red;
}
```
* 作用：根据标签名来选中制定元素
* 语法: 标签名{}
* 例子: p{} , h1{} , div{}

#### 2.2.2 id选择器
```css
#idName{
	color : red;
}
```
* 作用: 根据元素的id属性值选中一个元素
* 语法: #id属性值{}
* 例子: #box{} , #red{}

#### 2.2.3 class选择器

```css
.className{
	color: bule;
}
```
* 作用： 根据元素的class属性值选中一个元素
* 语法 .class属性值{}
* 一个标签有多个class可用空格隔开 如：`<h1 class="className1 className2"></h1>`

#### 2.2.3 通配选择器 * 
* 选择所有元素

### 2.3. 复合选择器
#### 2.3.1 交集选择器 " . "
```css
/* 同时有div标签和class=red属性的选择器*/
div.red{
}
```
* 作用： 选中同时满足多个条件的元素
* 语法：选择器1选择器2选择器3
* 注意: 交集选择器中如果有元素选择器，必须元素选择器在前面

#### 2.3.1 选择器分组(并集选择器)
```css
h1,span{
	color:green;
}
```
* 同时选择多个元素的选择器
* 语法： 选择器1，选择器2，选择器3
