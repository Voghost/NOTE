# 一些重要的笔记
## 1. javaWEB
### 1.1 JDBC
* mysql **8.0** 使用数据库：
	1. 需要添加以下语句：
	```java
	//新添加的语句，加载mysql驱动类
	Class.forName("com.mysql.cj.jdbc.Driver");

	//新添加的语句 test是数据库名字
	String DB_URL="jdbc:mysql://127.0.0.1:3306/test?useSSL=false&serverTimezone=Asia/Shanghai";
	java.sql.Connection connection = null;
	java.lang.String strConn;
	try {
	connection = java.sql.DriverManager.getConnection(DB_URL, "root", "Codsoap#4403");
	} catch (java.sql.SQLException exception) {
	out.println(exception.toString());
	} finally {
	if (connection != null)
	connection.close();
	}

	```
	2. jar 包的支持: mysql-connector-java-8.*.jar   *表示某个版本
	test
