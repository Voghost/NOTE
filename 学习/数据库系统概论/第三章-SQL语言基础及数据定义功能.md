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

