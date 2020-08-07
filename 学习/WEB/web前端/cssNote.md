# CSS 笔记

## 1. css的三种形式

### 1.1 内联样式(行内样式)

```html
<p style="color:red; font-size:60px;">something</p>
```

- 在标签内使用样式
- 只能影响一个元素,**不方便**修改和创建
- 开发时**不要**使用内联样式

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

- 将样式写入head中的style标签中
- 可以重复使用,修改全部只用修改一处
- 只能对一个网页使用，不能跨页面使用

### 1.3  外部样式 (开发推荐使用)

- 新建一个 cssName.css文件

```css
p{
color:yellow;
font-size:30px;

}
```

- 在html文件中

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

- 通过link可以应用外部css资源

- html文档通过link连接后都能实现css的延时

- 将样式表写到外部css文件中，可以使用到浏览器的缓存机制从而加快访问

## 2.css 语法

* 在<style></style>中应该遵循css语法

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

- 如上面的例子：
  - p为选择器
  - 花括号中的 color font-size为申明块

#### 2.2.1 元素选择器

```css
p{
color=red;
}
```

- 作用：根据标签名来选中制定元素
- 语法: 标签名{}
- 例子: p{} , h1{} , div{}

#### 2.2.2 id选择器

```css
#idName{
color : red;
}
```

- 作用: 根据元素的id属性值选中一个元素
- 语法: #id属性值{}
- 例子: #box{} , #red{}

#### 2.2.3 class选择器

```css
.className{
color: bule;
}
```

- 作用： 根据元素的class属性值选中一个元素
- 语法 .class属性值{}
- 一个标签有多个class可用空格隔开 如：`<h1 class="className1 className2"></h1>`

#### 2.2.3 通配选择器 \*

- 选择所有元素

### 2.3. 复合选择器

#### 2.3.1 交集选择器

```css
/* 同时有div标签和class=red属性的选择器*/
div.red{
}
```

- 作用： 选中同时满足多个条件的元素
- 语法：选择器1选择器2选择器3 (选择器之间没有任何符号)
- 注意: 交集选择器中如果有元素选择器，必须元素选择器在前面

#### 2.3.2 分组选择器(并集选择器)

```css
h1,span{
color:green;
}
```

- 同时选择多个元素的选择器
- 语法： 选择器1，选择器2，选择器3

#### 2.3.3 关系兄弟选择器(关系选择器)

```html
<div>
我是一个div
<p>
我是div中的p元素
<span>
我是div中的p元素中的sapn元素
</span>
</p>
 <span>我是div元素中的span元素</span>
</div>
```

##### 1.元素关系

- 父元素：
  - 直接包含子元素的元素叫做<u>父元素</u>
- 子元素：
  - 直接被父元素包含的元素是<u>子元素</u>
- 祖先元素：
  - 直接或间接包含后代元素叫做祖先元素
  - 一个元素的父元素也是它的祖先元素
- 后代元素：
  - 直接或间接被祖先元素包含的元素
  - 子元素也是后代元素
- 兄弟元素:

  - 用后相同父元素的元素是兄弟元素

##### 2.子元素选择器

```css
/*父元素 >  子元素*/
div > span{
 color : red;
}
div > p > span{
 color : blue;
}
```
* 父元素的某**一**代元素

##### 3. 后代元素选择器

```css
/*元素1 元素2*/
div span{
font-size : 20px;
}
```

- 元素1 的后代  元素2

##### 4. 兄弟元素选择器

```css
/*1 选择下一个紧挨着兄弟兄弟元素
/*元素1 + 元素2*/
div + span{

}

/*2.选择下面所有兄弟*/
/*元素1 ～ 元素2*/
div ~ p{

}
```

- " <b>+</b> " 元素1 的 下一个 兄弟元素 元素2(紧挨着，中间不能有元素)
- " <b>~</b> " 元素1 的 下面所有 兄弟元素 元素2

#### 2.3.4 属性选择器

1. [属性名]   选择含有指定属性的元素
2. [属性名=属性值]   选择含有指定属性和属性值的元素
3. [属性名^=属性值] 选择属性值为指定属性值开头的元素
4. [属性名\$=属性值] 选择属性值为指定属性值结尾的元素
5. [属性名\*=属性值] 选择属性值含有指定值的元素

```css
[title]="abcd"{

}

[title]^="aaaa"{

}
```

#### 2.3.4 伪类选择器

* 伪类选择器 不存在的类  表示特殊状态

  * 如: 第一个子元素、被点击的元素、鼠标移入的元素
  * 伪类一般情况下使用 ： 开头
  * 常用的:
    * :first-child 第一个所有元素,  :first-of-type 第一个同类型元素
    * :last-child  最后的元素,   :last-of-type 最有的同类型元素
    * :nth-child(x) 选择第x个元素  :nth-of-type(x) 在同类型中选择第x个元素
      * x=n 全选    x取值为 (0,+∞))
      * x=2n偶数x=2n+1 或 x=odd 表示奇数
    * 否定:not()否定类

```css
 /*把第三个去除*/
 ul > li:not(:nth-child(3)){
 }
```

```css
  ul > li:first-child{
  }
```

#### 2.3.5 伪类元素选择器
* 伪元素，表示页面中一些特殊的并不真实的存在的元素 (特殊位置)
	* 伪元素开头 ::开头
	* ::first-letter 表示第一个字母
	* ::first-line 表示第一行字母
	* ::selection 表示选中的元素
	* ::before 元素的开始
	* ::after 元素的最后
		* after 和 before 必须结合content属性来使用
```css
p::first-child{
	color:blue;
}
```

### 2.4 选择器权重
* 冲突: 通过不同选择器，选中相同的元素，并且设置相同的样式时，发生了冲突
* 选择器权重: (数值越大，优先级越大)
	* 内联样式			1000
	* id选择器			100
	* 类和伪类选择器	10
	* 元素选择器		1
	* 通配选择器		0
* 比较优先级时，需要将所有的选择器(如果时并集选择器时单独计算)的优先级进行相加计算，最后优先级越高，则越优先显示
* 如果优先级相等,则优先使用靠下的
* !importan可以用  (一般不要用)

### 2.5 常用数值单位
#### 1. 长度单位(如 width、height)
	* 像素
	* 百分比 相对于父元素属性的占比
	* em  相对于元素字体(自身标签)大小来计算的
	* rem 相对于**根**元素(html标签)的字体大小计算

## 3. css 布局
### 3.1 文档流
* 注意:
	* 网页是一个多层结构,一层套着一层
	* 通过CSS可以为每一层来设置样式
	* 作为用户 只能看到最顶层
	* 在这些层中，最底下为文档流，文档流时网页的基础我们所创建的元素默认都是在文档流中进行排列的
* 对于我们来说元素主要有两个状态
	* 在文档流
	* 不在文档流
* 元素在文档流中的特点
	* 块元素
		* 在文档中对占一行
		* 默认宽度时父元素的全部(会把父元素撑满)
		* 默认高度时被内容撑开(子元素)
	* 行内元素
		* 行内元素不会独占一行，只占自身大小
		* 行内元素在页面中左向右水平排列 ,  如果一行中不能容纳所有行内元素，则元素会换到第二行

### 3.2 盒模型(盒子模型、框模型 box model)
* css将页面中的所有元素都设置成了一个矩形盒子
* 将元素设置成矩形盒子后，对页面的布局就变成将不同的盒子摆放到不同的位置
* 每一个盒子都由以下几个部分组成:
	* 内容区(content)
		* 宽度: width
		* 高度: height
		* 背景颜色: background-color
	* 内边距(padding)
		* 边距取值:
			* padding-top
			* padding-right
			* padding-bottom
			* padding-left
		* 也可简写 padding: 上 右 下 左
		* 内边距的大小会影响盒子大小,背景颜色会延伸到边框
	* 边框(border)
		* 边框的宽度: border-width
			* 四个值(border-width: 10px 20px 30px 40px): 上 右 下 左
			* 三个值: 上 左右 下
			* 二个值: 上下、左右
			* 也可单独指定:
				* border-top-width,border-right-width,border-bottom-width,border-left-width
		* 边框的颜色: border-color
			* 四个值: 上 右 下 左
			* 三个值: 上 左右 下
			* 二个值: 上下、左右
			* 也可单独指定: 同上border-width
		* 边框的样式: border-style
			* 取值:
				* solid 表示实线
				* dotted 点状虚线
				* dashed 虚线
				* double 双线
				* none  没有边框
		* 通过简写来设置:
			* border: solid 10px orange;
	* 外边距(margin)
		* 外边距不影响盒子可见大小，但是会影响和其他元素的距离()
		* 四个方向的外边距
			* margin-top
			* margin-right
			* margin=bottom
			* margin-left
		* 也可简写 margin: 上 右 下 左
		* 两个相邻的垂直方向的外边距会有重叠的现象,不同值取大的
		* 两个父子元素的外边距是指同一个值,改变子元素同时也会改变父元素元素
	* 轮廓(outline) 效果和用法与边框(border)相似不同点是border会改变元素大小,outline不会改变元素大小
	* 阴影(box-show)
		* 第一个值: 水平偏移
		* 第二个值: 垂直偏移
		* 第三个值: 阴影的模糊半径
		* 第四个值: rgba(red,green,blue,alpha)
	* 圆角(border-radius)
		* border-top-left-radius border-top-right-radius  border-bottom-left-radius  border-bottom-right-radius
			* 取值两个或一个　1.两个不同值代表椭圆两个半径　2. 一个值代表圆半径 单位px
		* border-radius: 左上　右上　　右下　左下 (未设定的值取对角)

* 盒子水平布局
	* 子元素元素水平方向布局(下面七个值的总和应该为父元素的内容区长度)
		1. margin-left
		2. border-left
		3. padding-left
		4. width
		5. padding-right
		6. border-right
		7. margin-right
	* 上述七个值的和必须为父元素的内容区的长度,如果没有制定，自动调整值,(存在auto，自动调整auto的值,width默认为auto)
* 盒子垂直方向布局
	* 父元素会被子元素撑开
	* 子元素大小超过父元素，会从父元素溢出
		* 可使用overflow 选项处理溢出 取值
			* hidden 不溢出
			* visible 允许溢出
			* scroll 滚动条查看全部内容
			* auto 自动生成滚动条
		* overflow-x 单独处理水平
		* overflow-y 单独处理垂直方向
* 行内元素盒子模型
	* 不能设置宽高
	* 设置除宽高其他内容不会影响**垂直方向**的布局
	* display 选项
		* inline 行内元素
		* block 块元素
		* inline-block 行内块元素 既可以设置宽度和导读又不会独占一行
		* table 将元素设置成一个表格
		* none 元素不显示 不占地方 区别visibility: hidden
	* visibility 占地方

* 不设置css样式，浏览器会设置默认样式，要注意 如body标签的padding 有默认值8
```css
		 .box1 {
            width: 100px;
            height: 100px;
            border: 2px black solid;
        }

        p {
            margin: 0  /*去除外J边距*/
        }

        body {
            margin: 0px; /*去除外边距*/
        }

        ul {
            margin: 0;
            padding: 0; /*去除内边距*/
            list-style: none; /*去除点*/

        }
```

* 通常情况下 使用
```css
*{
	margin:0;
	padding:0;
}
```

* 也可以使用  **重置样式表** 来重置样式

* box-sizing=content-box 表示: width、height 为 内容区的大小
* box-sizing=border-box 表示: width、height 为 内容区 +　内边距 + 边框 大小



### 3.3 浮动
#### 3.3.1 浮动简介
* 可以通过浮动控制盒子模型向左侧或右侧移动
* float 的取值
	1. none 不浮动
	2. left 向左浮动
	3. right 向右浮动
#### 3.3.2 浮动特点
1. 设置浮动后,水平布局的等式不需要成立
2. 设置浮动后,不再占用文档流中的内容,设置浮动后文档流向上移动
3. 都设置浮动后,元素会向父元素的左侧或右侧移动
4. 浮动元素不会移动到父元素的边界外
5. 浮动元素不会覆盖 **上面** 的 **非** 浮动元素
6. 浮动元素不会超过它前面的元素的(前后、高度)
7. 浮动元素可以实现文字环绕图片(即浮动元素不会盖住 **文字**)
8. 脱离文档流后(设置浮动)不再区分行内元素和块元素了

#### 3.3.3 高度塌陷和BFC
* 塌陷: 子元素设置浮动(从文档流脱离) 无法撑起父元素的高度
* BFC (Block Formatting Context) 块级格式化环境 (css中的隐含的元素)
* 元素开启BFC后的特点
	1. 开启BFC元素，不会被浮动元素覆盖
	2. 开启BFC元素，子元素和父元素外边距不会重叠
	3. 开启BFC元素，父元素可以包含子元素(常用)
* 不能直接开启BFC，可以通过特殊的方法开启BFC
	1. 设置元素的浮动(副作用：脱离文档流) **不推荐**
	2. 设置行内块元素(display: inline-block)   **不推荐**
	3. 将元素的overflow设置为一个非visible的值
		* overflow: auto;
		* overflow: hidden; (更习惯用)

