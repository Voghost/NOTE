# 3.1 SQL 语句概述

* SQL(Structured Query Language)是用户操作<u>**关系数据库**</u>的通用语言
* 包含：1.数据<u>定义</u>, 2.数据<u>查询</u>, 3.数据<u>操作</u>, 4数据<u>控制</u>....
* 已成为关系数据库的表转语言
* 所有关系数据库管理系统都支持<b>SQL</b>

## 3.1.1 SQL语言的发展

## 3.1.2 SQL语言的特点
1. 语言风格统一
2. 高度非过程化：非过程化，只需要提出“做什么” 无须指出“怎么做”
3. 面向集合的操作过程
4. 同一种语言结构提供两种使用方式
	1. 独立语言：联机交互方式，SQL命令方式
	2. 嵌入式语言：嵌入式高级语言
5. 语言简洁，易学易用

|  SQL功能 |         动词         |
|:--------:|:--------------------:|
| 数据定义 |   CREATE,DROP,ALTER  |
| 数据查询 |        SELECT        |
| 数据操纵 | INSERT,UPDATE,DELETE |
| 数据控制 |     GRANT,REVOKE     |


## 3.1.3 SQL语言的功能概述

# 3.2数据类型
## 1. 精确数据类型
## 2. 近似数值类型
## 3. 字符串类型
## 4. 普通编码字符串类型
## 5. 统一字符编码字符串类型
## 6. 二进制字符串类型
## 7. 日期时间类型
## 8. 货币类型


# 3.3创建数据库

## 3.3.1 SQL Servlet数据库分类

### SQL 的基本概念
1. 外模式:部分基本表、视图
2. 模式:基本表
3. 内模式:若干数据文件

### 两大类
1. 系统数据库
2. 用户数据库

## 3.3.2 数据库基本概念

### 1. SQL Server数据库的组成
1. 数据文件:(.mdf)

2. 日志文件:(.ldf)


### 2.关于数据的存储分配

### 3.数据库文件的属性
1. 文件名及位置
2. 初始大小
3. 增长方式
4. 最大大小


## 3.3.3 用图形化方法创建数据库


## 3.3.4 用T-SQL语句创建数据库

### 例1 (创建名为RShDB的数据库,其他属性默认)
```sql
CREATE DATABASE RShDB
```

### 例2 
```sql
CREATE DATABASE RShDB
ON
(
NAME=RShDB, -- 名字
FILENAME='/file/path/RShDB.mdf', -- 文件路径
SIZE=10MB, -- 初始大小
MAXSIZE=30MB,-- 最大大小
FILEGROWTH=5MB -- 单词增长大小
)

LOG ON --使用日志
(
NAME=RShDB_log,
FILENAME='/file/path/RShDB_log.ldf',
SIZE=3MB,
MAXSIZE=12MB,
FILEGROWTH=2MB
)

```

### 例3
```sql

CREATE DATABASE students20
ON PRIMARY
(
NAME=students20, -- 名字
FILENAME='/file/path/students20.mdf', -- 文件路径
SIZE=3MB, -- 初始大小
MAXSIZE=UNLIMITED,--无限制大小 
),
(
NAME=students_data120, -- 名字
FILENAME='/file/path/students_data120.mdf', -- 文件路径
SIZE=5MB, -- 初始大小
MAXSIZE=10MB,--无限制大小 
FILEGROWTH=1MB
)

LOG ON
(
NAME=students_log20,
FILENAME='/file/path/students_log20.ldf',
SIZE=2MB,
MAXSIZE=6MB,
FILEGROWTH=10%
)
```

# 3.4 创建与维护表

## 3.4.1 用T-SQL语句实验
### 1.创建表的例子
```sql
CREATE TABLE Student20(
Sno    CHAR(7)   PRIMARY KEY,
Sname  NCHAR(5)  UNIQUE,
SID    CHAR(18)  UNIQUE,
Ssex   Nchar(1)  DEFAULT '男',
Sage   TINYINT   CHECK(Sage>=15 AND Sage<=45),
Sdept  NVARCHAR(20) 
)
```

### 2. 常见的完整性约束
1. NOT NULL: 限定列取值非空
2. DEFAULT: 给定列的默认值 (如：DEFAULT SEX '男')
3. UNIQUE: 限制列的唯一取值(不重复)
4. CHECK: 限制列的取值范围 (如: CHECK (SEX IN('男','女')))
5. PRIMARY KEY :定义主码
6. FOREIGN KEY: 定义外码

### 修改表结构(ALTER TABLE)


## 3.4.2 用SSMS工具实现


# 3.5 SQL 查询语句
## 3.5.1SQL 基本基础
### 1. SQL 语句的4部分组成
* 数据定义语言DDL(Data Definition Language)
	* 创建对象: CREATE
	* 删除对象: DROP
	* 修改对象: ALTER

* 数据操纵语言DML(Data Manipuplation Language)
	* 数据查询: SELECT
	* 数据插入: INSERT
	* 数据修改: UPDATE
	* 数据删除: DELETE

* 数据控制语言DLC(Data Control Language)
	* 权限授予
	* 权限收回

* 其他
	* 嵌入式SQL语言 和 动态SQL语言
	* 数据库的重新组织、备份、恢复

## 3.5.2 单表查询
### 1. 投影运算
* `SELECT` : 对应**投影运算**, 查询结果所需要的**属性**或**表达式**
* `FROM `  : 对应**笛卡尔积**, 给出查询所涉及的**表** 或 **视图**
* `WHERE`  : 对应**算则运算**, 指定查询结构元组所需要满足的选择条件
* 注:
	* **SELECT**和**FROM**是必须的,其他是可选的
	* 可用<u>**DISTINCT**</u>消除重复元组

* 基本语法:
```sql
SELECT A1 AS a,A2 AS b,A3 AS c
FROM R1,R2,R3
WHERE P
-- 首先对R1,R2,R3 执行笛卡尔积
-- 然后在笛卡尔积中选择谓词P为真的记录
-- 最后在A1,A2,A3 的属性列中进行投影运算
-- AS 给他们取别名
```

* 例子:  查询所有班级的班级编号,班级名称和所属学院
```sql
SELECT classNo,className,institute
FROM Class
-- 从Class表中依次取出每个元组
-- 对每个元组仅选取classNo、className和institute三个属性的值，形成一个新元组
-- 最后将这些新元组组织为一个结果关系输出
```

### 2. 选择运算
* WHERE 字句可实现关系代数中的选择运算
* WHRER 中常用的查询条件
	* 比较查询: `>,>=,<,<=,=,<>(或!=)`
	* 范围查询: `[NOT] BETWEEN <value1> AND <value2>` 
	* 集合查询: `[not] IN <集合>`
	* 空值查询: `IS [NOT] NULL`
	* 字符匹配查询: `[NOT] LIKE <匹配字符串> `
	* 逻辑查询: `AND,OR,NOT`
* 例子
	* 在学生Student表中查询年龄大于或等于19岁的同学学号、姓名和出生日期,年龄。

```sql
SELECT studentNO,studentName,birthday year(getdate())-year(birthday) AS age
FROM Student
WHERE sage>=19
```
### 3. 排序运算

### 4. 查询表

### 5. 聚合运算


